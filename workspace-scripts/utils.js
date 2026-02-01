// ------------------异步等待函数------------
const isBlocklyLoaded = async () => {
    while (!Blockly) {
        await new Promise((resolve) => requestAnimationFrame(resolve));
    }
    return;
};
const isBlocklyMainworkspaceLoaded = async () => {
    while (!Blockly.mainWorkspace) {
        await new Promise((resolve) => requestAnimationFrame(resolve));
    }
    return;
};
const isRunmgrHooked = async () => {
    while (!get_run_mgr()) {
        await new Promise((resolve) => requestAnimationFrame(resolve));
    }
    return;
};
const waitHook = async (name) => {
    while (!window['Hook' + name]) {
        await new Promise((resolve) => requestAnimationFrame(resolve));
    }
    return window['Hook' + name].exports;
};
// 积木盒
function regToolbox(name, icon, color, blocks) {
    function addStyle(style) {
        const styleElement = document.getElementById('toolbox-style');
        if (!styleElement) {
            const styleElement = document.createElement('style');
            styleElement.id = 'toolbox-style';
            styleElement.textContent = style;
            document.head.appendChild(styleElement);
        } else styleElement.textContent += style;
    }
    const toolboxObject = {
        color,
        name: 'toolbox-' + name,
        icon: { font_id: icon },
        blocks: blocks.map(block => str2xml(block)),
    };
    const toolbox = Blockly.mainWorkspace.get_toolbox();
    toolbox.add(toolbox.new_node(toolboxObject));
    addStyle(`#toolbox-${name}.blocklyTreeSelected>div>svg { fill: white;}`);
}
const str2xml = function (str) {
    const parser = new DOMParser();
    const doc = parser.parseFromString(str, "text/xml");
    return doc.firstChild;
};
// 注册域函数的工具函数
function regDomainFunction(name, func) {
    const registry = get_run_mgr().registry;
    registry.domain_function[name] = func;
    registry.domain_function_list.push(func);
    registry.domain_function_index[name] = registry.domain_function_types.push(name) - 1;
}
function rewriteDomainFunction(name, func) {
    const registry = get_run_mgr().registry;
    registry.domain_function[name] = func;
    const index = registry.domain_function_index[name];
    registry.domain_function_list[index] = func;
}
function regAction(action_type) {
    const registry = get_run_mgr().registry;
    var r = {
        namespace: "",
        id: action_type.id,
    };
    if (action_type.statefulness !== void 0) {
        r.statefulness = action_type.statefulness;
    }
    registry.register_action_type(r);
    action_type.responder_blocks.forEach(function (r) {
        registry.register({
            namespace: "",
            id: r.id,
            respond: {
                to_action: {
                    namespace: "",
                    id: action_type.id,
                },
                type: r.type,
                async: r.async,
                priority: r.priority,
                entity_specific: action_type.entity_specific,
                trigger_function: r.trigger_function,
                filter_arg_names: r.filter_arg_names,
            },
        });
    });
    return;
}