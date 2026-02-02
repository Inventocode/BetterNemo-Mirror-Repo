
(async () => {
    console.log("[NemoHooker::toolbox] 等待Blockly加载");
    await isBlocklyLoaded();
    console.log("[NemoHooker::toolbox] 等待Workspace加载");
    await isBlocklyMainworkspaceLoaded();
    console.log("[NemoHooker::toolbox] 等待积木加载");
    await (async () => {
        while (blockObjects == []) {
            await new Promise((resolve) => requestAnimationFrame(resolve));
        }
        return;
    })();
    console.log("[NemoHooker::toolbox] 积木盒注入开始");
    const u = {
        title: (text) => `<label text="${text}" type="normal" gap="24" web-class="flyout-toolbox-title" vertical_padding="0"></label>`,
        error: (text) => `<label text="${text}" type="normal" gap="24" web-class="flyout-toolbox-error" vertical_padding="0"></label>`,
        line: (text, height = 25) => `<label type="flyout_line" height="${height}" text="${text}"/>`,
        flyout_bottom: (width = 130, height = 16) => `<label type="flyout_bottom" align="center" width="${width}" height="${height}"></label>`,
        sep: (gap = 50) => `<sep gap="${gap}"></sep>`,
        numValue: (name, value) => `<value name="${name}"><shadow type="math_number"><field name="NUM">${value}</field></shadow></value>`,
        textValue: (name, value) => `<value name="${name}"><shadow type="text"><field name="TEXT">${value}</field></shadow></value>`,
        optionValue: (name, value) => `<field name="${name}">${value}</field>`,
        block: (type, ...values) => {
            const blockJSON = blockObjects.find(block => block.type === type);
            if (blockJSON) {
                blockJSON.args0.forEach(arg => {
                    if (arg.value !== undefined) {
                        switch (arg.type) {
                            case 'input_value':
                                if (!Array.isArray(arg.check)) arg.check = [arg.check];
                                if (arg.check[0] === "Number" && arg.check.length === 1) values.push(u.numValue(arg.name, arg.value));
                                else if (arg.check.includes("String")) values.push(u.textValue(arg.name, arg.value));
                                else console.error('错误：未知参数', arg.check);
                                break;
                            case 'field_dropdown':
                                values.push(u.optionValue(arg.name, arg.value));
                                break;
                        }
                    }
                });
                return `<block type="${type}">${values.join('')}</block>`;
            } else if (Blockly.Blocks[type]) {
                return `<block type="${type}">${values.join('')}</block>`;
            }
             else {
                return u.error('错误：未能找到' + type + '的定义');
            }
        },
        simpleEventBlock: (type, ...params) => `<block type="${type}">${params.map(([name,type])=>`<value name="${name}"><block type="__${type}"></block></value>`)}</block>`
    }
    // 定义NemoHooker积木盒
    const nemohookerXML = [
        u.title('BetterNemo 扩展积木'),
        u.block('nemohooker_create_video'),
        u.block('nemohooker_play_video'),
        u.block('nemohooker_pause_video'),
        u.block('nemohooker_set_video_current_time'),
        u.block('nemohooker_on_key_down'),
        u.block('nemohooker_on_key_up'),
        u.block('nemohooker_on_key_event_param'),
        u.block('nemohooker_check_down_key'),
        u.block('nemohooker_clipboard_write'),
        u.block('nemohooker_clipboard_read'),
        u.block('nemohooker_eval'),
        u.block('nemohooker_alert'),
        u.block('nemohooker_prompt'),
        u.line('隐藏积木 原版可用'),
        u.block('warp'),
        u.block('calculate', u.textValue('input', 'sin(114)')),
        u.block('multiline_text'),
        u.block('color_picker'),
        u.flyout_bottom()
    ];
    // 定义网络积木盒
    const networkXML = [
        u.title('网络 · Network'),
        u.block('nemohooker_http_get'),
        u.block('nemohooker_http_post'),
        u.block('nemohooker_object_get'),
        u.block('nemohooker_object_set'),
        u.block('nemohooker_object_include_key'),
        u.block('nemohooker_array_get'),
        u.block('nemohooker_array_set'),
        u.block('nemohooker_array_include_value'),
        u.block('nemohooker_array_length'),
        u.flyout_bottom()
    ];
    // 定义MQTT积木盒
    const mqttXML = [
        u.title('消息队列遥测传输协议 · MQTT'),
        u.block('nemohooker_mqtt_on_connect'),
        u.block('nemohooker_mqtt_on_reconnect'),
        u.block('nemohooker_mqtt_on_disconnect'),
        u.block('nemohooker_mqtt_on_offline'),
        u.simpleEventBlock('nemohooker_mqtt_on_error', ['param','nemohooker_mqtt_on_error_message']),
        u.simpleEventBlock('nemohooker_mqtt_on_message', ['param','nemohooker_mqtt_on_message_message']),
        u.simpleEventBlock('nemohooker_mqtt_on_subscribe_error', ['param','nemohooker_mqtt_on_subscribe_error_message']),
        u.simpleEventBlock('nemohooker_mqtt_on_publish_error', ['param','nemohooker_mqtt_on_publish_error_message']),
        u.block('nemohooker_mqtt_connect'),
        u.block('nemohooker_mqtt_publish'),
        u.block('nemohooker_mqtt_subscribe'),
        u.flyout_bottom()
    ];
    const threeDboxXML = [
        u.title('〈TEST〉3D库'),
        u.block('nemohooker_test', u.textValue('test', '123')),
        u.flyout_bottom()
    ];
    setTimeout(() => {
        // 注册3D积木盒
        // regToolbox('threeDbox', 'icon-cubes', '#77D657', threeDboxXML);
        // 注册MQTT积木盒
        regToolbox('mqtt_toolbox', 'icon-mqtt', '#660066', mqttXML);
        // 注册网络积木盒
        regToolbox('network', 'icon-widget-http-client', '#54c0ff', networkXML);
        // 注册扩展积木盒
        regToolbox('nemohooker', 'icon-feature', '#54c0ff', nemohookerXML);
        // 画笔扩展
        Blockly.mainWorkspace.toolbox_.children_[5].blocks.pop();
        Blockly.mainWorkspace.toolbox_.children_[5].blocks = Blockly.mainWorkspace.toolbox_.children_[5].blocks.concat([
            u.line('Better Nemo 扩展积木'),
            u.block('nemohooker_color'),
            u.block('nemohooker_hex_to_array'),
            u.block('nemohooker_set_pen_color_hex'),
            u.block('nemohooker_set_fill_color_hex'),
            u.block('nemohooker_draw_image_stamp'),
            u.block('nemohooker_draw_custom_image_stamp'),
            u.block('nemohooker_draw_video_stamp'),
            u.block('nemohooker_draw_svg'),
            u.block('nemohooker_rectangle_clear'),
            u.block('nemohooker_better_draw_text_stamp'),
            u.block('nemohooker_put_pixel'),
            u.block('nemohooker_fill_polygon'),
            u.sep(),
            u.block('nemohooker_dataURL_actor'),
            u.block('nemohooker_dataURL_stage'),
            //u.block('nemohooker_dataURL_URL', u.textValue('url', '')),
            u.flyout_bottom()
        ].map(block => str2xml(block)));
        console.log(Blockly.mainWorkspace.toolbox_.children_[5].blocks)
        // 运算扩展
        Blockly.mainWorkspace.toolbox_.children_[7].blocks.pop();
        Blockly.mainWorkspace.toolbox_.children_[7].blocks = Blockly.mainWorkspace.toolbox_.children_[7].blocks.concat([
            u.line('Better Nemo 扩展积木'),
            u.block('nemohooker_3D_array'),
            u.block('nemohooker_factorial'),
            u.block('nemohooker_trig_common'),
            u.block('nemohooker_3D_rotation'),
            u.block('nemohooker_regular_polygon'),
            u.flyout_bottom()
        ].map(block => str2xml(block)));
    }, 1000)
    console.log("[NemoHooker::toolbox] 积木盒注入完成");
})();