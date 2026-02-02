(async () => {
    let mqttClient = undefined;

    console.log("[NemoHooker::domain-functions] 等待Runtime,RunMgr,i18n获取");
    await isRunmgrHooked();
    const Runtime = (await waitHook('Runtime')).get_webview_runtime();
    console.log("[NemoHooker::domain-functions] Runtime,RunMgr,i18n获取成功");
    /**
     * 触发一个简单的事件
     * @param {string} name 事件名称
     * @param {object} params 参数(可选)
     */
    function emitSimpleEvent(name, params = {}) {
        Runtime.send_action({
            id: name,
            namespace: "",
            parameters: params,
        });
    }
    if (storage.get('runtimeConfig'))
        get_run_mgr().config.set(storage.get('runtimeConfig'));
    setInterval(() => {
        if (!Runtime.heart.heart.get_runtime_data().is_running()) {
            document.querySelectorAll('.custom-video').forEach(e => e.remove());
            if (mqttClient)
                mqttClient.end(false, {}, () => {
                    mqttClient = undefined;
                });
        }
    }, 100);

    const ERROR_NOT_IN_ACTION = '[ERROR_NOT_IN_ACTION]';

    // 重写text_length函数
    rewriteDomainFunction('text_length', function (args, rbid, entity_id, utils) {
        let value = args.VALUE;
        if (value == 'getBetterNemoVersion') return NemoHookerVersion;
        if (Array.isArray(value)) {
            value = stage_list_to_string(value);
        }
        return (isNaN(value)) ? value.length : value.toString().length;
    });
    // -------------EVAL-----------
    regDomainFunction("nemohooker_eval", (params, uuid, uuid2, utils) => {
        eval(String(params.js));
    });
    // -------------按键------------
    regSimpleEvent("nemohooker_on_key_down");
    regSimpleEvent("nemohooker_on_key_up");
    // 按键状态
    const keyStates = {};
    // 监听按键按下
    document.addEventListener('keydown', (e) => {
        keyStates[e.code] = true;
        emitSimpleEvent("nemohooker_on_key_down", {
            key: e.code
        });
    });
    // 监听按键释放
    document.addEventListener('keyup', (e) => {
        keyStates[e.code] = false;
        emitSimpleEvent("nemohooker_on_key_up", {
            key: e.code
        });
    });
    regDomainFunction("nemohooker_on_key_event_param", (_, __, ___, utils) => {
        const params = getEventParams(utils);
        if (params) return params.key;
        console.warn("error no action_parameters", action_parameters);
        return ERROR_NOT_IN_ACTION;
    }
    );
    regDomainFunction('nemohooker_check_down_key', (params, rbid, entity_id, utils) => {
        return keyStates[params.key] || false;
    })
    // ------------剪切板----------
    regDomainFunction("nemohooker_clipboard_write", (params, rbid, entity_id, internals) => {
        (async function writeClipboardText(text) {
            try {
                await navigator.clipboard.writeText(text);
            } catch (error) {
                console.error(error.message);
            }
        })('' + params.value);
    });
    regDomainFunction("nemohooker_clipboard_read", async (params, rbid, entity_id, internals) => {
        return await navigator.clipboard.readText();
    });
    // ------------Alert与Prompt-------------
    regDomainFunction("nemohooker_alert", (params, rbid, entity_id, internals) => {
        alert(params.param);
    });
    regDomainFunction("nemohooker_prompt", (params, rbid, entity_id, internals) => {
        return prompt(params.param);
    });
    // ------------网络-------------
    regDomainFunction("nemohooker_http_get", async (params, rbid, entity_id, internals) => {
        return await (await fetch(params.param)).text();
    });
    regDomainFunction("nemohooker_http_post", async (params, uuid, uuid2, utils) => {
        return await (await fetch(params.param, {
            method: 'POST',
            headers: JSON.parse(params.headers),
            body: params.body
        })).text();
    });
    // --------------视频----------------
    regDomainFunction("nemohooker_create_video", (params, rbid, entity_id, utils) => {
        if (document.getElementById('custom-video-' + params.id)) {
            const video = document.getElementById('custom-video-' + params.id);
            video.src = params.src;
        } else {
            const video = document.createElement('Video');
            video.id = 'custom-video-' + params.id;
            video.classList.add('custom-video');
            video.autoplay = false;
            video.src = params.src;
            video.style.display = 'none';
            document.body.appendChild(video);
        }
    });
    regDomainFunction("nemohooker_play_video", (params, rbid, entity_id, utils) => {
        const video = document.getElementById('custom-video-' + params.id);
        if (!video) return;
        video.play();
    });
    regDomainFunction("nemohooker_pause_video", (params, rbid, entity_id, utils) => {
        const video = document.getElementById('custom-video-' + params.id);
        if (!video) return;
        video.pause();
    });
    regDomainFunction("nemohooker_set_video_current_time", (params, rbid, entity_id, utils) => {
        const video = document.getElementById('custom-video-' + params.id);
        if (!video) return;
        video.currentTime = params.time;
    });
    // -----------对象操作 -------------------

    function typeOf(value) {
        return Object.prototype.toString.call(value).substring(8, Object.prototype.toString.call(value).length - 1);
    }
    regDomainFunction("nemohooker_object_get", (params, rbid, entity_id, internals) => {
        const value = JSON.parse(params.obj)[params.key];
        function func(value) {
            return value.map(item => {
                if (typeOf(item) === "Array") return func(item);
                if (typeOf(item) === "Object") return JSON.stringify(item);
                return item;
            });
        }
        if (typeOf(value) === "Array") return func(value);
        if (typeOf(value) === "Object") return JSON.stringify(value);
        return value;
    });
    regDomainFunction("nemohooker_object_set", (params, rbid, entity_id, internals) => {
        const obj = JSON.parse(params.obj);
        obj[params.key] = params.value;
        return JSON.stringify(obj);
    });
    regDomainFunction("nemohooker_object_include_key", (params, rbid, entity_id, internals) => {
        const value = JSON.parse(params.obj)[params.key];
        return value !== undefined;
    });

    // -----------数组操作 -------------------

    regDomainFunction("nemohooker_array_get", (params, rbid, entity_id, internals) => {
        const array = JSON.parse(params.arr);
        const index = Number(params.index) - 1;

        if (index < 0 || index >= array.length) {
            return undefined;
        };

        const value = array[index];

        function func(value) {
            return value.map(item => {
                if (typeOf(item) === "Array") return func(item);
                if (typeOf(item) === "Object") return JSON.stringify(item);
                return item;
            });
        }
        if (typeOf(value) === "Array") return func(value);
        if (typeOf(value) === "Object") return JSON.stringify(value);
        return value;
    });
    regDomainFunction("nemohooker_array_set", (params, rbid, entity_id, internals) => {
        const arr = JSON.parse(params.arr);
        const index = Number(params.index) - 1;
        const value = params.value;

        if (index < 0) {
            return JSON.stringify(arr);
        }

        if (index >= arr.length) {
            for (let i = arr.length; i <= index; i++) {
                arr.push(i === index ? value : null);
            }
        } else {
            arr[index] = value;
        }

        return JSON.stringify(arr);
    });
    regDomainFunction("nemohooker_array_include_value", (params, rbid, entity_id, internals) => {
        const arr = JSON.parse(params.arr);
        const targetValue = params.value;

        return arr.includes(targetValue);
    });
    regDomainFunction("nemohooker_array_length", (params, rbid, entity_id, internals) => {
        const arr = JSON.parse(params.arr);

        return arr.length;
    });

    // -------------运算扩展-----------------

    regDomainFunction("nemohooker_factorial", (params, rbid, entity_id, internals) => {
        const n = parseInt(params.num);
        if (n < 0) return 0;
        function factorial(x) {
            if (x <= 1) return 1;
            return x * factorial(x - 1);
        }
        return factorial(n);
    });
    regDomainFunction("nemohooker_trig_common", (params, uuid, uuid2, utils) => {
        const xita = parseFloat(params.xita);
        const radian = xita * Math.PI / 180;
        const option = String(params.ttype);

        if (option == "SIN") return Math.sin(radian);
        if (option == "COS") return Math.cos(radian);
        if (option == "TAN") return Math.tan(radian);
        if (option == "ASIN") return Math.asin(xita) * 180 / Math.PI;
        if (option == "ACOS") return Math.acos(xita) * 180 / Math.PI;
        return Math.atan(xita) * 180 / Math.PI;
    });
    regDomainFunction("nemohooker_3D_rotation", (params, uuid, uuid2, utils) => {

        const radians = Math.PI / 180;
        const angles = JSON.parse(params.angles);
        const yaw = angles[2] * radians;
        const pitch = angles[0] * radians;
        const roll = angles[1] * radians;

        const sinY = Math.sin(yaw);
        const sinP = Math.sin(pitch);
        const sinR = Math.sin(roll);
        const cosY = Math.cos(yaw);
        const cosP = Math.cos(pitch);
        const cosR = Math.cos(roll);

        const point = JSON.parse(params.point);
        const camera = JSON.parse(params.camera);

        const dx = point[0] - camera[0];
        const dy = point[1] - camera[1];
        const dz = point[2] - camera[2];

        const xr = dx * (cosY * cosP)
            + dy * (sinY * cosP)
            + dz * (-sinP);

        const yr = dx * (cosY * sinP * sinR - sinY * cosR)
            + dy * (sinY * sinP * sinR + cosY * cosR)
            + dz * (cosP * sinR);

        const zr = dx * (cosY * sinP * cosR + sinY * sinR)
            + dy * (sinY * sinP * cosR - cosY * sinR)
            + dz * (cosP * cosR);


        return [xr, yr, zr];
    });
    regDomainFunction("nemohooker_3D_array", (params, uuid, uuid2, utils) => {
        return "[" + String(params.x) + "," + String(params.y) + "," + String(params.z) + "]";
    });
    regDomainFunction("nemohooker_regular_polygon", (params, uuid, uuid2, utils) => {
        const center = JSON.parse(params.center);
        const r = parseFloat(params.r);
        const n = parseInt(params.n);
        const start = parseFloat(params.start) * Math.PI / 180;

        if (n < 3) return;

        var points = [];
        const angleStep = (2 * Math.PI) / n;

        for (let i = 0; i < n; i++) {
            const angle = start + i * angleStep;

            const x = center[0] + r * Math.cos(angle);
            const y = center[1] + r * Math.sin(angle);

            points.push([x, y]);
        }

        return JSON.stringify(points);
    });
    // --------------画笔扩展-------------------
    function get_stage_target(target_id) {
        const stage = Runtime.stage;
        var scene = stage.core.scenes.get_scene(target_id);
        if (!scene.is_error(scene.value)) {
            return scene.value;
        }
        var actor = stage.core.actors.get_actor(target_id);
        if (!actor.is_error(actor.value)) {
            return actor.value;
        }
    }
    regDomainFunction("nemohooker_draw_video_stamp", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) return;
        const video = document.getElementById('custom-video-' + params.id);
        if (!video) return;
        actor.get_brush().draw_image(video, params.x, params.y, video.videoWidth * params.scale, video.videoHeight * params.scale);
    });
    regDomainFunction("nemohooker_draw_image_stamp", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) return;

        const range = JSON.parse(params.range);
        const x = range[0];
        const y = range[1];
        const w = range[2];
        const h = range[3];

        actor.get_brush().draw_custom_image_stamp(params.src, x, y, w, h);
    });
    regDomainFunction("nemohooker_draw_custom_image_stamp", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) return;
        actor.get_brush().draw_custom_image_stamp(params.src);
    });
    regDomainFunction("nemohooker_put_pixel", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) return;
        const x = parseFloat(params.x);
        const y = parseFloat(params.y);

        var r = 0;
        var g = 0;
        var b = 0;

        var hex = params.hex;
        if (String(hex).substring(0, 1) == "#") {
            hex = String(hex).substr(1);
            r = parseInt(hex.substring(0, 2), 16);
            g = parseInt(hex.substring(2, 4), 16);
            b = parseInt(hex.substring(4, 6), 16);
        } else {
            r = hex[0];
            g = hex[1];
            b = hex[2];
        };

        const a = parseFloat(params.a);
        actor.get_brush().put_pixel(x, y, r, g, b, a);
    });
    regDomainFunction("nemohooker_fill_triangle", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) return;
        const point = String(params.point);
        const color = String(params.color);

        actor.get_brush().fill_polygon(point, color);
    });
    regDomainFunction("nemohooker_better_draw_text_stamp", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) return;

        const text = String(params.text);
        const style = String(params.style);
        const weight = String(params.weight);
        const size = String(params.size);
        const font = String(params.font);
        const align = String(params.align);
        const base_line = String(params.base_line);
        const color = String(params.color);

        actor.get_brush().better_draw_text_stamp(text, color, style, weight, size, font, align, base_line);
    });
    regDomainFunction("nemohooker_rectangle_clear", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) return;

        const x = parseInt(params.x);
        const y = parseInt(params.y);
        const width = parseInt(params.width);
        const height = parseInt(params.height);

        actor.get_brush().rectangle_clear(x, y, width, height);
    });
    regDomainFunction("nemohooker_draw_svg", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) return;

        const svg = String(params.svg);

        actor.get_brush().draw_svg(svg);
    });
    regDomainFunction("nemohooker_color", (params, uuid, uuid2, utils) => {
        return params.color;
    });
    regDomainFunction("nemohooker_hex_to_array", (params, uuid, uuid2, utils) => {
        const hex = String(params.hex).substr(1);
        var r = parseInt(hex.substring(0, 2), 16);
        var g = parseInt(hex.substring(2, 4), 16);
        var b = parseInt(hex.substring(4, 6), 16);

        const pattern = String(params.pattern);

        if (pattern == "rgb") return [r, g, b];

        r /= 255;
        g /= 255;
        b /= 255;

        if (pattern == "hsv") {
            const max = Math.max(r, g, b);
            const min = Math.min(r, g, b);
            const diff = max - min;

            var h = 0;
            var s = 0;
            const v = max;

            if (max !== 0) {
                s = diff / max;
            }

            if (diff !== 0) {
                if (max === r) {
                    h = (g - b) / diff + (g < b ? 6 : 0);
                } else if (max === g) {
                    h = (b - r) / diff + 2;
                } else {
                    h = (r - g) / diff + 4;
                }
                h *= 60;
            }

            return [Math.round(h), Math.round(s * 100), Math.round(v * 100)];
        };
        if (pattern == "hsl") {

            const max = Math.max(r, g, b);
            const min = Math.min(r, g, b);
            const l = (max + min) / 2;

            var h = 0;
            var s = 0;

            if (max !== min) {
                const diff = max - min;
                s = l > 0.5 ? diff / (2 - max - min) : diff / (max + min);

                if (max === r) {
                    h = (g - b) / diff + (g < b ? 6 : 0);
                } else if (max === g) {
                    h = (b - r) / diff + 2;
                } else {
                    h = (r - g) / diff + 4;
                }
                h *= 60;
            }

            return [Math.round(h), Math.round(s * 100), Math.round(l * 100)];

        };
        return undefined;
    });
    regDomainFunction("nemohooker_set_pen_color_hex", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) {
            return;
        }

        var color = params.hex;
        if (String(color).substring(0, 1) == "#") {
            actor.get_brush().set_color(color.substr(1));
        } else {
            var r = color[0];
            var g = color[1];
            var b = color[2];

            var rStr = r.toString(16).padStart(2, "0");
            var gStr = g.toString(16).padStart(2, "0");
            var bStr = b.toString(16).padStart(2, "0");

            var hexStr = rStr + gStr + bStr;
            actor.get_brush().set_color(hexStr);
        };
        actor.get_brush().set_alpha(parseInt(params.a / 255 * 100));
    });
    regDomainFunction("nemohooker_set_fill_color_hex", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) {
            return;
        }

        //const a = parseFloat(params.a) / 255;
        var color = params.hex;
        if (String(color).substring(0, 1) == "#") {
            color = color.substr(1);
            var r = parseInt(color.substring(0, 2), 16);
            var g = parseInt(color.substring(2, 4), 16);
            var b = parseInt(color.substring(4, 6), 16);
            actor.get_brush().set_fill_color(color);

        } else {
            var r = color[0];
            var g = color[1];
            var b = color[2];

            var rStr = r.toString(16).padStart(2, "0");
            var gStr = g.toString(16).padStart(2, "0");
            var bStr = b.toString(16).padStart(2, "0");

            var hexStr = rStr + gStr + bStr;
            actor.get_brush().set_fill_color(hexStr);

        };
    });
    // -----------图像处理---------
    regDomainFunction("nemohooker_dataURL_actor", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) {
            return;
        }

        return String(actor.get_brush().dataURL_actor());
    });
    regDomainFunction("nemohooker_dataURL_stage", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) {
            return;
        }
        var range = [];
        try {
            range = JSON.parse(params.range);
        } catch (error) {
            console.error(error + "\n范围数组不合规。格式：\"[x, y, width, height]\"。");
            return;
        }
        var x = range[0];
        var y = range[1];
        const width = range[2];
        const height = range[3];

        const stageSize = actor.get_brush().stage_size();
        x = stageSize[0] + x;
        y = stageSize[1] - y;
        //console.log([3,x,y]);
        const data = HookRuntime.exports.get_webview_runtime().stage.core.extract_pixels(x, y, width, height);

        return String(actor.get_brush().dataURL_stage(new ImageData(new Uint8ClampedArray(data), width, height)));
    });
    regDomainFunction("nemohooker_dataURL_URL", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) {
            return;
        }

        const url = params.url;
        return String(actor.get_brush().dataURL_URL(url));
    });
    // -----------------MQTT-----------------
    regSimpleEvent('nemohooker_mqtt_on_connect');
    regSimpleEvent('nemohooker_mqtt_on_disconnect');
    regSimpleEvent('nemohooker_mqtt_on_offline');
    regSimpleEvent('nemohooker_mqtt_on_error');
    regSimpleEvent('nemohooker_mqtt_on_message');
    regSimpleEvent('nemohooker_mqtt_on_reconnect');
    regDomainFunction('nemohooker_mqtt_connect', (params, rbid, entity_id, utils) => {
        const url = params.address;
        const clientId = params.clientID;
        const username = params.user;
        const password = params.password;
        const reconnectPeriod = params.reconnectPeriod;
        const connectTimeout = params.connectTimeout;
        const options = {
            clean: true,
            connectTimeout,
            clientId,
            username,
            password,
            reconnectPeriod,
        }
        mqttClient = mqtt.connect(url, options)
        mqttClient.on('connect', () => { emitSimpleEvent('nemohooker_mqtt_on_connect'); });
        mqttClient.on('reconnect', () => { emitSimpleEvent('nemohooker_mqtt_on_reconnect'); })
        mqttClient.on('close', () => { emitSimpleEvent('nemohooker_mqtt_on_disconnect'); })
        mqttClient.on('offline', () => { emitSimpleEvent('nemohooker_mqtt_on_offline'); })
        mqttClient.on('error', (error) => { emitSimpleEvent('nemohooker_mqtt_on_error', { msg: error }); })
        mqttClient.on('message', (_, payload, __) => { emitSimpleEvent('nemohooker_mqtt_on_message', { msg: payload.toString() }); })

    });
    regDomainFunction('nemohooker_mqtt_publish', (params, rbid, entity_id, utils) => {
        const topic = params.topic;
        const message = params.message;
        mqttClient.publish(topic, message, { qos: 0, retain: false }, function (error) {
            if (error)
                emitSimpleEvent('nemohooker_mqtt_on_publish_error', { msg: error });
        })
    });
    regDomainFunction('nemohooker_mqtt_subscribe', (params, rbid, entity_id, utils) => {
        const topic = params.topic;
        mqttClient.subscribe(topic, { qos: 0 }, function (error, _) {
            if (error)
                emitSimpleEvent('nemohooker_mqtt_on_subscribe_error', { msg: error });
        })
    });
    regDomainFunction('nemohooker_mqtt_on_error_message', (_, __, ___, utils) => {
        const params = getEventParams(utils);
        if (params) return params.msg;
        return "ERROR_NOT_IN_ACTION"
    });
    regDomainFunction('nemohooker_mqtt_on_message_message', (_, __, ___, utils) => {
        const params = getEventParams(utils);
        if (params) return params.msg;
        return "ERROR_NOT_IN_ACTION"
    });
    regDomainFunction('nemohooker_mqtt_on_publish_error_message', (_, __, ___, utils) => {
        const params = getEventParams(utils);
        if (params) return params.msg;
        return "ERROR_NOT_IN_ACTION"
    });
    regDomainFunction('nemohooker_mqtt_on_subscribe_error_message', (_, __, ___, utils) => {
        const params = getEventParams(utils);
        if (params) return params.msg;
        return "ERROR_NOT_IN_ACTION"
    });
    // regDomainFunction('',(_, _, _, utils) => {
    //     const params = getEventParams(utils);
    // });
    console.log("[NemoHooker::domain-functions] 解释器注入完成");
})();