
(async () => {
    console.log("[NemoHooker::toolbox] 等待Blockly加载");
    await isBlocklyLoaded();
    console.log("[NemoHooker::toolbox] 等待Workspace加载");
    await isBlocklyMainworkspaceLoaded();
    console.log("[NemoHooker::toolbox] 等待积木加载");
    await (async () => {
        while (blockObjects==[]) {
            await new Promise((resolve) => requestAnimationFrame(resolve));
        }
        return;
    })();
    console.log("[NemoHooker::toolbox] 积木盒注入开始");
    const u = {
        title: (text) => `<label text="${text}" type="normal" gap="24" web-class="flyout-toolbox-title" vertical_padding="0"></label>`,
        block: (type, ...values) => `<block type="${type}">${values.join('')}</block>`,
        line: (text, height = 25) => `<label type="flyout_line" height="${height}" text="${text}"/>`,
        flyout_bottom: (width = 130, height = 16) => `<label type="flyout_bottom" align="center" width="${width}" height="${height}"></label>`,
        sep: (gap = 50) => `<sep gap="${gap}"></sep>`,
        numValue: (name, value) => `<value name="${name}"><shadow type="math_number"><field name="NUM">${value}</field></shadow></value>`,
        textValue: (name, value) => `<value name="${name}"><shadow type="text"><field name="TEXT">${value}</field></shadow></value>`,
        optionValue: (value) => `<field name="OP">${value}</field>`,
    }
    // 定义NemoHooker积木盒
    const nemohookerXML = [
        u.title('BetterNemo 扩展积木'),
        u.block('nemohooker_create_video', u.textValue('id', 'example'), u.textValue('src', 'https://static.codemao.cn/coco/course/lesson1.mp4')),
        u.block('nemohooker_play_video', u.textValue('id', 'example')),
        u.block('nemohooker_pause_video', u.textValue('id', 'example')),
        u.block('nemohooker_set_video_current_time', u.textValue('id', 'example'), u.numValue('time', 10)),
        u.block('nemohooker_on_key_down'),
        u.block('nemohooker_on_key_up'),
        u.block('nemohooker_on_key_event_param'),
        u.block('nemohooker_check_down_key', u.textValue('key', 'a')),
        u.block('nemohooker_clipboard_write', u.textValue('value', '(～￣▽￣)～')),
        u.block('nemohooker_clipboard_read'),
        u.block('nemohooker_eval', u.textValue('js', `console.log("Hello world!")`)),
        u.block('nemohooker_alert', u.textValue('param', 'WOW')),
        u.block('nemohooker_prompt', u.textValue('param', '请输入文本')),
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
        u.block('nemohooker_http_get', u.textValue('param', '')),
        u.block('nemohooker_http_post', u.textValue('param', ''), u.textValue('body', ''), u.textValue('headers', '')),
        u.block('nemohooker_object_get', u.textValue('obj', '{"abc":114514}'), u.textValue('key', 'abc')),
        u.block('nemohooker_object_set', u.textValue('obj', '{"abc":114514}'), u.textValue('key', 'abc'), u.textValue('value', '191810')),
        u.block('nemohooker_object_include_key', u.textValue('obj', '{"abc":114514}'), u.textValue('key', 'abc')),
        u.block('nemohooker_array_get', u.textValue('arr', '[1, 2, 3]'), u.numValue('index', 1)),
        u.block('nemohooker_array_set', u.textValue('arr', '[1, 2, 3]'), u.numValue('index', 1), u.numValue('value', 123)),
        u.block('nemohooker_array_include_value', u.textValue('arr', '[1, 2, 3]'), u.numValue('value', 1)),
        u.block('nemohooker_array_length', u.textValue('arr', '[1, 2, 3]')),
        u.flyout_bottom()
    ];
    // 定义MQTT积木盒
    const mqttXML = [
        u.title('消息队列遥测传输协议 · MQTT'),
        u.block('nemohooker_mqtt_on_connect'),
        u.block('nemohooker_mqtt_on_disconnect'),
        u.block('nemohooker_mqtt_on_offline'),
        u.block('nemohooker_mqtt_on_error'),
        u.block('nemohooker_mqtt_on_message', '<value name="param"><block type="nemohooker_mqtt_on_message_param"></block></value>'),
        u.block('nemohooker_mqtt_on_subscribe_error'),
        u.block('nemohooker_mqtt_on_publish_error'),
        u.block(
            'nemohooker_mqtt_connect', u.textValue('address', 'wss://bemfa.com:9504/wss'),
            u.textValue('clientID', ''), u.textValue('user', ''), u.textValue('password', '')
        ),
        u.block('nemohooker_mqtt_publish', u.textValue('topic', 'light002'), u.textValue('massage', 'on')),
        u.block('nemohooker_mqtt_subscribe', u.textValue('topic', 'light002')),
        u.flyout_bottom()
    ]
    setTimeout(() => {
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
            u.block('nemohooker_hex_to_array', u.textValue('hex', '#FFFFFF'), u.optionValue('rgb')),
            u.block('nemohooker_set_pen_color_hex', u.textValue('hex', '#000000'), u.numValue('a', 255)),
            u.block('nemohooker_set_fill_color_hex', u.textValue('hex', '#000000')),
            u.block('nemohooker_draw_image_stamp'),
            u.block('nemohooker_draw_custom_image_stamp', u.textValue('src', 'https://www.runoob.com/try/demo_source/smiley-2.gif')),
            u.block('nemohooker_draw_video_stamp', u.textValue('id', 'example'), u.numValue('x', 0), u.numValue('y', 0), u.numValue('scale', 1)),
            u.block('nemohooker_draw_svg', u.textValue('svg', '')),
            u.block('nemohooker_rectangle_clear', u.numValue('x', 0), u.numValue('y', 0), u.numValue('width', 100), u.numValue('height', 100)),
            u.block('nemohooker_better_draw_text_stamp', u.textValue('text', ''), u.textValue('color', '#000000'), u.optionValue('normal'), u.textValue('weight', 'bold'), u.numValue('size', 24), u.textValue('font', 'Arial'), u.optionValue('center'), u.optionValue('middle')),
            u.block('nemohooker_put_pixel', u.numValue('x', 0), u.numValue('y', 0), u.textValue('hex', '#000000'), u.numValue('a', 255)),
            u.block('nemohooker_fill_polygon', u.textValue('point', '[[-100, 100], [100, 100], [-100, -100]'), u.textValue('color', '#000000')),
            u.flyout_bottom()
        ].map(block => str2xml(block)));
        console.log(Blockly.mainWorkspace.toolbox_.children_[5].blocks)
        // 运算扩展
        Blockly.mainWorkspace.toolbox_.children_[7].blocks.pop();
        Blockly.mainWorkspace.toolbox_.children_[7].blocks = Blockly.mainWorkspace.toolbox_.children_[7].blocks.concat([
            u.line('Better Nemo 扩展积木'),
            u.block('nemohooker_factorial', u.numValue('num', 5)),
            u.block('nemohooker_trig_common', u.optionValue('SIN'), u.numValue('xita', 45)),
            u.flyout_bottom()
        ].map(block => str2xml(block)));
    }, 1000)
    console.log("[NemoHooker::toolbox] 积木盒注入完成");
})();