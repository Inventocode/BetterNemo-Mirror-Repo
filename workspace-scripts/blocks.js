let blockObjects = [];
(async () => {
    console.log("[NemoHooker::blocks] 等待Blockly加载");
    await isBlocklyLoaded();
    console.log("[NemoHooker::blocks] 等待Workspace加载");
    await isBlocklyMainworkspaceLoaded();
    console.log("[NemoHooker::blocks] 积木注入开始");
    Blockly.mainWorkspace.add_change_listener(() => {
        function checkRootBlock(blockType, ...rootBlockTypes) {
            Blockly.mainWorkspace.get_all_blocks()
                .filter(block => block.type == blockType)
                .forEach(block => {
                    if (block.get_colour() != Blockly.theme.disabled_color.fill)
                        block._color = block.get_colour();
                    if (block.get_root_block())
                        if (rootBlockTypes.includes(block.get_root_block().type))
                            if (block._color) {
                                block.set_deletable(false);
                                block.set_colour(block._color);
                                return;
                            }
                    block.set_deletable(true);
                    block.set_colour(Blockly.theme.disabled_color.fill)
                });
        }
        checkRootBlock('nemohooker_on_key_event_param', 'nemohooker_on_key_down', 'nemohooker_on_key_up');
        // 实验性功能：禁用一步执行中的死循环
        if (experimentalConfig.disable_repeat_forever_in_warp) {
            Blockly.mainWorkspace.get_all_blocks()
                .filter(block => block.type == 'repeat_forever')
                .forEach(block => {
                    const parent = block.get_parent();
                    if (parent) {
                        if (parent.type == 'warp') {
                            block.set_colour('#aaaaaa');
                            setTimeout(() => {
                                block.dispose()
                            }, 1000);
                        }
                    }
                });
        }
    });
    (function regToolboxIcon() {
        document.querySelector("#__SVG_SPRITE_NODE__").insertAdjacentHTML('beforeend', '<symbol id="icon-feature" viewBox="-1100 -1050 3200 3200"><path d="M484.352 199.918933a55.296 55.296 0 0 1 50.517333-2.4576l4.778667 2.4576 228.795733 132.096c15.5648 8.977067 25.668267 24.8832 27.409067 42.530134l0.238933 5.358933v264.192a55.296 55.296 0 0 1-23.1424 44.987733l-4.5056 2.901334-228.795733 132.096a55.296 55.296 0 0 1-50.517333 2.4576l-4.778667-2.4576-228.795733-132.096a55.296 55.296 0 0 1-27.409067-42.530134l-0.238933-5.358933v-264.192c0-17.954133 8.704-34.679467 23.1424-44.987733l4.5056-2.901334 228.795733-132.096z m27.648 54.954667l-222.651733 128.580267v257.092266L512 769.092267l222.651733-128.546134v-257.092266L512 254.907733z m120.900267 147.319467a30.72 30.72 0 0 1 2.628266 40.311466l-2.730666 3.140267-88.507734 87.9616v102.570667a30.72 30.72 0 0 1-61.201066 3.857066l-0.238934-3.857066v-101.5808l-88.576-89.088a30.72 30.72 0 0 1 40.413867-46.08l3.140267 2.7648 75.298133 75.741866 76.322133-75.844266a30.72 30.72 0 0 1 43.451734 0.1024z"></path></symbol>');
        document.querySelector("#__SVG_SPRITE_NODE__").insertAdjacentHTML('beforeend', '<symbol id="icon-widget-http-client" viewBox="-2000 -2000 5000 5000"><path d="M512 98.133333c143.914667 0 266.837333 99.882667 301.653333 237.781334l2.56 10.965333 9.301334 2.730667c105.6 33.450667 181.12 131.669333 185.472 246.528l0.213333 10.496c0 145.237333-113.066667 263.808-254.848 268.970666l-9.685333 0.213334-164.352-0.042667 40.746666 42.154667a29.866667 29.866667 0 0 1 2.517334 38.570666l-3.242667 3.626667a29.866667 29.866667 0 0 1-38.570667 2.517333l-3.626666-3.242666-89.6-92.714667a29.866667 29.866667 0 0 1-2.901334-37.973333l3.029334-3.712 89.6-91.306667a29.866667 29.866667 0 0 1 45.781333 38.058667l-3.114667 3.754666-39.850666 40.533334H746.666667c112.981333 0 204.8-93.610667 204.8-209.408 0-98.005333-66.261333-181.845333-157.525334-203.818667l-9.216-2.005333-20.778666-3.968-3.114667-20.906667C742.144 251.050667 636.586667 157.866667 512 157.866667c-135.722667 0-246.613333 109.909333-251.605333 246.357333l-0.085334 10.88 1.28 27.946667-27.776 3.114666c-91.306667 10.24-161.28 89.472-161.28 184.405334 0 99.541333 76.586667 180.608 172.544 185.301333l8.789334 0.213333h23.466666a29.866667 29.866667 0 0 1 4.053334 59.434667l-4.053334 0.298667h-23.466666C120.576 875.818667 12.8 765.866667 12.8 630.570667c0-115.072 78.293333-212.949333 185.344-238.677334l3.285333-0.768 0.597334-7.082666c15.018667-156.970667 142.549333-280.533333 299.690666-285.738667L512 98.133333z m55.978667 374.912c13.269333 0 23.253333 0.853333 30.72 2.133334 10.794667 1.706667 19.925333 5.632 28.202666 11.221333 7.893333 5.589333 14.506667 13.781333 19.114667 23.68 4.949333 10.325333 7.04 21.546667 6.613333 32.298667 0 19.84-6.229333 37.077333-18.645333 50.432-12.458667 14.208-33.237333 21.077333-63.914667 21.077333h-35.285333v78.421333l-49.792 0.426667v-219.733333h82.986667z m145.237333 0v219.690667H663.04v-219.733333h50.218667z m-319.957333 0l86.741333 219.690667H423.978667l-21.973334-58.581333H342.186667l-20.352 58.581333H267.946667l81.322666-219.733333h43.989334z m-21.546667 76.672l-12.885333 37.034667h26.154666l-12.885333-35.754667-0.426667-1.28z m198.357333-27.562666h-34.858666v42.666666h35.242666c16.64 0 22.826667-3.925333 25.344-6.058666 3.712-3.413333 5.802667-9.045333 5.802667-15.957334a22.613333 22.613333 0 0 0-3.328-12.928 16.981333 16.981333 0 0 0-8.704-6.4c-1.28-0.469333-5.418667-1.322667-19.498667-1.322666z"></path></symbol>');
        document.querySelector("#__SVG_SPRITE_NODE__").insertAdjacentHTML('beforeend', '<symbol id="icon-cubes" viewBox="-1200 -1230 3000 3000"><path d="M290.8 48.6l78.4 29.7L288 109.5 206.8 78.3l78.4-29.7c1.8-.7 3.8-.7 5.7 0zM136 92.5l0 112.2c-1.3 .4-2.6 .8-3.9 1.3l-96 36.4C14.4 250.6 0 271.5 0 294.7L0 413.9c0 22.2 13.1 42.3 33.5 51.3l96 42.2c14.4 6.3 30.7 6.3 45.1 0L288 457.5l113.5 49.9c14.4 6.3 30.7 6.3 45.1 0l96-42.2c20.3-8.9 33.5-29.1 33.5-51.3l0-119.1c0-23.3-14.4-44.1-36.1-52.4l-96-36.4c-1.3-.5-2.6-.9-3.9-1.3l0-112.2c0-23.3-14.4-44.1-36.1-52.4l-96-36.4c-12.8-4.8-26.9-4.8-39.7 0l-96 36.4C150.4 48.4 136 69.3 136 92.5zM392 210.6l-82.4 31.2 0-89.2L392 121l0 89.6zM154.8 250.9l78.4 29.7L152 311.7 70.8 280.6l78.4-29.7c1.8-.7 3.8-.7 5.7 0zm18.8 204.4l0-100.5L256 323.2l0 95.9-82.4 36.2zM421.2 250.9c1.8-.7 3.8-.7 5.7 0l78.4 29.7L424 311.7l-81.2-31.1 78.4-29.7zM523.2 421.2l-77.6 34.1 0-100.5L528 323.2l0 90.7c0 3.2-1.9 6-4.8 7.3z"></path></symbol>');
        document.querySelector("#__SVG_SPRITE_NODE__").insertAdjacentHTML('beforeend', '<symbol id="icon-mqtt" viewBox="-365 -365 1000 1000"><path d="M34.9,144c-0.2,0-0.4,0-0.6,0v77.6c0,5.6,4.6,10.2,10.2,10.2h79.9C123.7,183.3,83.8,144,34.9,144z"></path><path d="M34.9,80c-0.2,0-0.4,0-0.6,0v33c65.9,0.3,119.5,53.3,120.2,118.8h34.2C188.1,148,119.3,80,34.9,80z"></path><path d="M237.2,221.7v-70.1C214,94.8,167.3,50,109.1,29H44.5c-5.6,0-10.2,4.6-10.2,10.2V49   c101.4,0.3,183.9,82,184.5,182.8h8.2C232.6,231.8,237.2,227.3,237.2,221.7z"></path><path d="M210.5,57.3c9.4,9.4,19,21.3,26.7,31.8v-50c0-5.6-4.5-10.1-10.1-10.1h-51.5   C187.5,37.3,199.9,46.8,210.5,57.3z"></path></symbol>');
    })();
    const BLOCK_COLOR = "%{BKY_GREEN_5}";
    const Color = {
        video: '%{BKY_VIDEO_HUE}',
        mqtt: '%{BKY_MQTT_HUE}'
    };
    Blockly.theme.block_color['MQTT_HUE'] = {
        "fill": "#bb00bb",
        "border": "#660066",
    };
    const method_block = {
        previousStatement: true,
        nextStatement: true,
        inputsInline: true
    };
    const event_block = {
        nextStatement: true,
        inputsInline: true
    }
    const keyboard_event_icon_field = {
        "type": "field_icon",
        "is_head": true,
        "src": 'data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iNDBweCIgaGVpZ2h0PSI0MHB4IiB2aWV3Qm94PSIwIDAgNDAgNDAiIHZlcnNpb249IjEuMSI+CiAgICA8ZyBpZD0i5Zu+5qCHL+S6i+S7tuenr+acqF/mkq3mlL4iPgogICAgICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0yMCwzOSBDMzAuNDkzNDEwMiwzOSAzOSwzMC40OTM0MTA1IDM5LDIwIEMzOSw5LjUwNjU4OTgxIDMwLjQ5MzQxMDIsMSAyMCwxIEM5LjUwNjU4OTgxLDEgMSw5LjUwNjU4OTgxIDEsMjAgQzEsMzAuNDkzNDEwNSA5LjUwNjU4OTgxLDM5IDIwLDM5IFoiIGlkPSJwYXRoLTEiIGZpbGw9IiNGRkZGRkYiIGZpbGwtcnVsZT0ibm9uemVybyIvPgogICAgICAgICAgICAgICAgICAgIDxnIGlkPSLnvJbnu4QiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDguMDAwMDAwLCA4LjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTE5Ljc1LDUgQzIwLjk5MjY0MDcsNSAyMiw2LjAwNzM1OTMxIDIyLDcuMjUgTDIyLDE2Ljc1IEMyMiwxNy45OTI2NDA3IDIwLjk5MjY0MDcsMTkgMTkuNzUsMTkgTDQuMjUsMTkgQzMuMDA3MzU5MzEsMTkgMiwxNy45OTI2NDA3IDIsMTYuNzUgTDIsNy4yNSBDMiw2LjAwNzM1OTMxIDMuMDA3MzU5MzEsNSA0LjI1LDUgTDE5Ljc1LDUgWiBNMTcuMjUsMTUgTDYuNzUsMTUgQzYuMTk3NzE1MjUsMTUgNiwxNS41IDYsMTUuNzUgQzYsMTUuOTgwNzY5MiA2LjE2ODQ2NzQzLDE2LjQyNDU1NjIgNi42Mjg3NzI0MSwxNi40OTE0NjU2IEw2Ljc1LDE2LjUgTDE3LjI1LDE2LjUgQzE3LjgwMjI4NDcsMTYuNSAxOCwxNiAxOCwxNS43NSBDMTgsMTUuNSAxNy44MDIyODQ3LDE1IDE3LjI1LDE1IFogTTYsMTEgQzUuNDQ3NzE1MjUsMTEgNSwxMS40NDc3MTUzIDUsMTIgQzUsMTIuNTUyMjg0NyA1LjQ0NzcxNTI1LDEzIDYsMTMgQzYuNTUyMjg0NzUsMTMgNywxMi41NTIyODQ3IDcsMTIgQzcsMTEuNDQ3NzE1MyA2LjU1MjI4NDc1LDExIDYsMTEgWiBNMTAsMTEgQzkuNDQ3NzE1MjUsMTEgOSwxMS40NDc3MTUzIDksMTIgQzksMTIuNTUyMjg0NyA5LjQ0NzcxNTI1LDEzIDEwLDEzIEMxMC41NTIyODQ3LDEzIDExLDEyLjU1MjI4NDcgMTEsMTIgQzExLDExLjQ0NzcxNTMgMTAuNTUyMjg0NywxMSAxMCwxMSBaIE0xNCwxMSBDMTMuNDQ3NzE1MywxMSAxMywxMS40NDc3MTUzIDEzLDEyIEMxMywxMi41NTIyODQ3IDEzLjQ0NzcxNTMsMTMgMTQsMTMgQzE0LjU1MjI4NDcsMTMgMTUsMTIuNTUyMjg0NyAxNSwxMiBDMTUsMTEuNDQ3NzE1MyAxNC41NTIyODQ3LDExIDE0LDExIFogTTE4LDExIEMxNy40NDc3MTUzLDExIDE3LDExLjQ0NzcxNTMgMTcsMTIgQzE3LDEyLjU1MjI4NDcgMTcuNDQ3NzE1MywxMyAxOCwxMyBDMTguNTUyMjg0NywxMyAxOSwxMi41NTIyODQ3IDE5LDEyIEMxOSwxMS40NDc3MTUzIDE4LjU1MjI4NDcsMTEgMTgsMTEgWiBNNiw3IEM1LjQ0NzcxNTI1LDcgNSw3LjQ0NzcxNTI1IDUsOCBDNSw4LjU1MjI4NDc1IDUuNDQ3NzE1MjUsOSA2LDkgQzYuNTUyMjg0NzUsOSA3LDguNTUyMjg0NzUgNyw4IEM3LDcuNDQ3NzE1MjUgNi41NTIyODQ3NSw3IDYsNyBaIE0xMCw3IEM5LjQ0NzcxNTI1LDcgOSw3LjQ0NzcxNTI1IDksOCBDOSw4LjU1MjI4NDc1IDkuNDQ3NzE1MjUsOSAxMCw5IEMxMC41NTIyODQ3LDkgMTEsOC41NTIyODQ3NSAxMSw4IEMxMSw3LjQ0NzcxNTI1IDEwLjU1MjI4NDcsNyAxMCw3IFogTTE0LDcgQzEzLjQ0NzcxNTMsNyAxMyw3LjQ0NzcxNTI1IDEzLDggQzEzLDguNTUyMjg0NzUgMTMuNDQ3NzE1Myw5IDE0LDkgQzE0LjU1MjI4NDcsOSAxNSw4LjU1MjI4NDc1IDE1LDggQzE1LDcuNDQ3NzE1MjUgMTQuNTUyMjg0Nyw3IDE0LDcgWiBNMTgsNyBDMTcuNDQ3NzE1Myw3IDE3LDcuNDQ3NzE1MjUgMTcsOCBDMTcsOC41NTIyODQ3NSAxNy40NDc3MTUzLDkgMTgsOSBDMTguNTUyMjg0Nyw5IDE5LDguNTUyMjg0NzUgMTksOCBDMTksNy40NDc3MTUyNSAxOC41NTIyODQ3LDcgMTgsNyBaIiBpZD0i5b2i54q257uT5ZCIIiBmaWxsPSIjMTRCMzkwIi8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgCjwvc3ZnPg==',
        "width": 38,
        "height": 38,
        "alt": "*"
    };
    const mqtt_event_icon_filed = {
        "type": "field_icon",
        "is_head": true,
        "src": 'data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMzhweCIgaGVpZ2h0PSIzOHB4IiB2aWV3Qm94PSIwIDAgMzggMzgiIHZlcnNpb249IjEuMSI+CiAgICA8dGl0bGU+aWNuX2Jsb2NrbHlfaGVhZF9pbnRlcm5ldDwvdGl0bGU+CiAgICA8ZyBpZD0iaWNuX2Jsb2NrbHlfaGVhZF9pbnRlcm5ldCI+CiAgICAgICAgICAgICAgICAgICAgPGNpcmNsZSBpZD0iT3ZhbC0zIiBzdHJva2U9IiNiYjAwYmIiIHN0cm9rZS13aWR0aD0iMS4wOCIgZmlsbD0iI0ZGRkZGRiIgY3g9IjE5IiBjeT0iMTkiIHI9IjE4LjQ2Ii8+CiAgICAgICAgICAgICAgICAgICAgPGcgaWQ9Iue8lue7hCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNy4wMDAwMDAsIDcuMDAwMDAwKSI+CiAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBkPSJNOC42MTEzOTQxNSw5LjY4NTUzNzQ3IEM4LjYxMTM5NDE1LDkuNjg1NTM3NDcgMTAuMTQ2MTY5Myw5Ljc4MzcyNzc1IDEwLjQwNTUyMiw3Ljk2MDM3NDEgQzEwLjQwNTUyMiw3Ljk2MDM3NDEgMTMuNDQ0NjksOC4yNDMwNjU0MSAxNS44Njg0MzQyLDkuNjg1NTM3NDcgQzE1Ljg2ODQzNDIsOS42ODU1Mzc0NyAxNS4yODQzMzg3LDExLjUyOTkxNjkgMTYuNzg2NDE4NywxMi40MzI3NjI5IEMxNi43ODY0MTg3LDEyLjQzMjc2MjkgMTUuMjcxNTEyOSwxNC43MTg1NzgxIDExLjgyMjM0MjYsMTYuMzYwNzk0OCBDMTEuODIyMzQyNiwxNi4zNjA3OTQ4IDExLjE0MDE2MTksMTQuNzc1ODczMiA5LjM1NTM5MDU2LDE1LjA3MDEyODcgQzkuMzU2NTQ2OTgsMTUuMDcwMTI4NyA4LjYzMTI2MzQ5LDEzLjY2OTcwODIgOC42MTEzOTQxNSw5LjY4NTUzNzQ3IEw4LjYxMTM5NDE1LDkuNjg1NTM3NDcgWiBNOS41MTg5NzA5NSw1LjYxNDk1MDkxIEM5LjUxODk3MDk1LDUuNjE0OTUwOTEgMTAuMjk5MjM2OCw2LjI0NTcyMzYyIDEwLjMyODM1NzUsNi44MjAzNTc1NiBDMTAuMzI4MzU3NSw2LjgyMDM1NzU2IDEzLjYyNjg3ODIsNy4wMjU4ODQzMyAxNi40ODUxMTk2LDguODI1ODk5MzkgQzE2LjQ4NTExOTYsOC44MjU4OTkzOSAxNy43NjE4MDM2LDcuNzczNDU1MTIgMTguOTk2MzMwOSw4LjU1NzE5MDIyIEMxOC45OTYzMzA5LDguNTU3MTkwMjIgMTkuNjczODg1OSw3LjI5ODA2Mjc2IDE5LjgxNjMzNTUsNC45ODQxNzgyIEMxOS44MTYzMzU1LDQuOTg0MTc4MiAxNy4yNjUzODU1LDEuNjIwMjY3MzMgMTEuOTQzNzY2NCwxLjUgQzExLjk0MTQ1MzUsMS41MDExNTY0MiA5Ljg2NDczOTUyLDQuMzMzNjQxMjcgOS41MTg5NzA5NSw1LjYxNDk1MDkxIEw5LjUxODk3MDk1LDUuNjE0OTUwOTEgWiBNMjAuNzI4NTM3OSw2LjI5MzU1NzIyIEMyMC43Mjg1Mzc5LDYuMjkzNTU3MjIgMjMuMzg4MTkxMSw5LjM1Mzg1NjE1IDIyLjE4OTgyOCwxNC41NDgwNTkyIEMyMi4xODk4MjgsMTQuNTQ4MDU5MiAyMC43MTMzOTk0LDEyLjE2MDU4NDUgMTkuOTc4NjU0MywxMS42MDY5NzYzIEMxOS45Nzg2NTQzLDExLjYwNjk3NjMgMjAuNjM3NDk2NCwxMC4zMjY4MjMxIDE5Ljg4MTcyNTYsOS4zODI5NzY4MiBDMTkuODgxNzI1Niw5LjM4MTgyMDQxIDIwLjU4NDkzMiw4LjAwMjQyNTYyIDIwLjcyODUzNzksNi4yOTQ3MTM2MyBMMjAuNzI4NTM3OSw2LjI5MzU1NzIyIFogTTExLjM3MDI4ODksMTguODE0OTIxMiBDMTEuMzcwMjg4OSwxOC44MTQ5MjEyIDExLjgyNDY1NTUsMTguNjE2MzMyOSAxMS45OTI4NjE1LDE3LjUxMTMyNDIgQzExLjk5Mjg2MTUsMTcuNTExMzI0MiAxNS42NTIyODk0LDE2LjIyNTM4ODkgMTcuOTA4OTgzOSwxMi43NzQ5NTcxIEMxNy45MDg5ODM5LDEyLjc3NDk1NzEgMTguNjIzNzU0NSwxMi44MjE3Mzk0IDE5LjEyNDkwMzQsMTIuNDMyNzYyOSBDMTkuMTI0OTAzNCwxMi40MzI3NjI5IDIwLjgzMjUxMDMsMTQuMDI3MTQ2IDIxLjY0MjAwMTksMTYuMTEwOTAzNyBDMjEuNjQyMDAxOSwxNi4xMTA5MDM3IDIwLjA0ODc3NTIsMjAuNjY5NzA4MyAxNC44OTE4OTI5LDIyLjEzNTYyNDEgQzE0Ljg4OTU4MDEsMjIuMTM1NjI0MSAxMi41Njk5MTM0LDIwLjYyMTg3NDcgMTEuMzcwMjg4OSwxOC44MTM3NjQ4IEwxMS4zNzAyODg5LDE4LjgxNDkyMTIgWiBNMy44NDExNzU1MiwxOC42NTEzNDA4IEMzLjg0MTE3NTUyLDE4LjY1MTM0MDggNi42ODA1OTg4OCwyMy4wNDg5ODMgMTMuMjY3MTI3NSwyMi40NDM5NjY4IEMxMy4yNjcxMjc1LDIyLjQ0Mzk2NjggMTAuOTI3NTkxNSwyMC4yMTUzNDE3IDEwLjQ0NjQxNzEsMTkuNDk4MTUzMSBDMTAuNDQ2NDE3MSwxOS40OTgxNTMxIDguNjEyNTUwNTYsMTkuOTUzNzgxMyA3Ljk3OTQ2NTAyLDE4LjY1Mzc1ODcgQzcuOTc4MzA4NiwxOC42NTEzNDA4IDUuNjA5NTQ2ODIsMTkuMDA5OTM1MSAzLjg0MTE3NTUyLDE4LjY1MTM0MDggTDMuODQxMTc1NTIsMTguNjUxMzQwOCBaIE02LjA3OTA1MTk3LDguMTgyMzAwOTcgQzYuMDc5MDUxOTcsOC4xODIzMDA5NyAzLjQwMzEwMzg3LDguNzUyMzA5MjQgMS42ODM4Mjc3MiwxMC4wMjMxMDYgQzEuNjgzODI3NzIsMTAuMDIzMTA2IDAuNzg5MDc2NjMyLDEzLjgwMTY0NDggMi45NDc1ODA4NSwxNy4zMzUwMjMzIEMyLjk0NzU4MDg1LDE3LjMzNTAyMzMgNS4xNzE1ODAzLDE3LjgyMjA4NDkgNy40MDk1NjE4NywxNy41OTU0MjczIEM3LjQwOTU2MTg3LDE3LjU5NTQyNzMgNy4zOTQzMTgyLDE2LjE5Mzg1MDMgOC4zMDMwNTE0MiwxNS40OTI5NTY3IEM4LjMwMzA1MTQyLDE1LjQ5Mjk1NjcgNy4yMDA0NjA3MiwxMi42NDY0ODk3IDcuNDc0OTUxOTgsOS42MTc4MzQ1MyBDNy40NzQ5NTE5OCw5LjYxNjU3Mjk4IDYuMzM5NTYxMSw5LjM0MDkyNTMxIDYuMDgwMzEzNTIsOC4xODM0NTczOSBMNi4wNzkwNTE5Nyw4LjE4MjMwMDk3IFogTTIuMTM4MTk0MzMsOC4zOTYwMjc3OSBDMi4xMzgxOTQzMyw4LjM5NjAyNzc5IDMuOTg3MDk0MjcsMi43MTM2MDY3IDEwLjMzMDc3NTQsMS42Mzc4MjM4NCBDMTAuMzMwNzc1NCwxLjYzNzgyMzg0IDkuMzU3NzAzMzksMy4wMzcwODc5NyA4LjQzMjY3NTIxLDUuMjY4MDI1OTIgQzguNDMyNjc1MjEsNS4yNjgwMjU5MiA2LjQ4Njc0MTQsNS4wNTQyOTkxIDYuMDMxMjE4MzcsNy4wNDExMjgwMSBDNi4wMzEyMTgzNyw3LjA0MjI4NDQyIDMuOTUzMjQyODEsNy40MTg0MzUyMiAyLjEzNjkzMjc5LDguMzk2MDI3NzkgTDIuMTM4MTk0MzMsOC4zOTYwMjc3OSBaIiBpZD0i572R57ucIiBmaWxsPSIjYmIwMGJiIi8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgo8L3N2Zz4=',
        "width": 38,
        "height": 38,
        "alt": "*"
    }
    const ANY_TYPE = ["Number", "String", "Boolean", "Array"]
    // 定义自定义代码块对象数组
    blockObjects = [
        {
            type: "nemohooker_eval",
            message0: "执行JavaScript %1",
            args0: [{ "type": "input_value", "name": "js", "check": "String" }],
            colour: BLOCK_COLOR,
            ...method_block
        },
        {
            type: "nemohooker_clipboard_write",
            message0: "写入 剪切板 %1",
            args0: [{ "type": "input_value", "name": "value", "check": ["String", "Number"] }],
            colour: BLOCK_COLOR,
            ...method_block
        },
        {
            type: "nemohooker_clipboard_read",
            message0: "获取 剪切板",
            args0: [],
            colour: BLOCK_COLOR,
            inputsInline: true,
            output: "String"
        },
        {
            type: "nemohooker_alert",
            message0: "调用 提示 %1",
            args0: [{ "type": "input_value", "name": "param", "check": ["String", "Number"] }],
            colour: BLOCK_COLOR,
            ...method_block
        },
        {
            type: "nemohooker_prompt",
            message0: "调用 询问 %1",
            args0: [{ "type": "input_value", "name": "param", "check": ["String", "Number"] }],
            colour: BLOCK_COLOR,
            inputsInline: true,
            output: "String"
        },
        {
            type: "nemohooker_on_key_down",
            message0: "%1 当 (按键) 被按下",
            args0: [keyboard_event_icon_field],
            nextStatement: true,
            colour: BLOCK_COLOR,
            inputsInline: true
        },
        {
            type: "nemohooker_on_key_up",
            message0: "%1 当 (按键) 被放开",
            args0: [
                keyboard_event_icon_field

            ],
            nextStatement: true,
            colour: BLOCK_COLOR,
            inputsInline: true
        },
        {
            type: "nemohooker_on_key_event_param",
            message0: "按下/放开的键Code",
            args0: [],
            colour: BLOCK_COLOR,
            inputsInline: true,
            output: "String"
        },
        {
            type: "nemohooker_check_down_key",
            message0: "按下 %1",
            args0: [{
                "type": "field_dropdown",
                "name": "style",
                "options": [["A", "KeyA"], ["B", "KeyB"], ["C", "KeyC"], ["D", "KeyD"], ["E", "KeyE"], ["F", "KeyF"], ["G", "KeyG"], ["H", "KeyH"], ["I", "KeyI"], ["J", "KeyJ"], ["K", "KeyK"], ["L", "KeyL"], ["M", "KeyM"], ["N", "KeyN"], ["O", "KeyO"], ["P", "KeyP"], ["Q", "KeyQ"], ["R", "KeyR"], ["S", "KeyS"], ["T", "KeyT"], ["U", "KeyU"], ["V", "KeyV"], ["W", "KeyW"], ["X", "KeyX"], ["Y", "KeyY"], ["Z", "KeyZ"]]
            }],
            colour: BLOCK_COLOR,
            inputsInline: true,
            output: "Boolean"
        },
        // 网络
        {
            type: "nemohooker_http_get",
            message0: "网络 GET %1",
            args0: [{ "type": "input_value", "name": "param", "check": ["String", "Number"] }],
            colour: BLOCK_COLOR,
            inputsInline: true,
            output: "String"
        },
        {
            type: "nemohooker_http_post",
            message0: "网络 POST %1 %2 %3",
            args0: [
                { "type": "input_value", "name": "param", "check": ["String", "Number"] },
                { "type": "input_value", "name": "body", "check": ["String", "Number"] },
                { "type": "input_value", "name": "headers", "check": ["String", "Number"] }
            ],
            colour: BLOCK_COLOR,
            inputsInline: true,
            output: "String"
        },
        // 对象操作
        {
            type: "nemohooker_object_include_key",
            message0: "%1 包含键 %2",
            args0: [
                { "type": "input_value", "name": "obj", "check": "String" },
                { "type": "input_value", "name": "key", "check": ["String", "Number"] }
            ],
            colour: "%{BKY_SOUND_HUE}",
            inputsInline: true,
            output: "Boolean"
        },
        {
            type: "nemohooker_object_get",
            message0: "%1 键 %2 的值",
            args0: [
                { "type": "input_value", "name": "obj", "check": "String" },
                { "type": "input_value", "name": "key", "check": ["String", "Number"] }
            ],
            colour: "%{BKY_SOUND_HUE}",
            inputsInline: true,
            output: ANY_TYPE
        },
        {
            type: "nemohooker_object_set",
            message0: "%1 键 %2 设为 %3",
            args0: [
                { "type": "input_value", "name": "obj", "check": "String" },
                { "type": "input_value", "name": "key", "check": ["String", "Number"] },
                { "type": "input_value", "name": "value", "check": ["String", "Number"] }
            ],
            colour: "%{BKY_SOUND_HUE}",
            inputsInline: true,
            output: "String"
        },
        // 数组操作
        {
            type: "nemohooker_array_include_value",
            message0: "%1 包含 %2",
            args0: [
                { "type": "input_value", "name": "arr", "check": "String" },
                { "type": "input_value", "name": "value", "check": ["String", "Number"] }
            ],
            colour: "%{BKY_SOUND_HUE}",
            inputsInline: true,
            output: "Boolean"
        },
        {
            type: "nemohooker_array_get",
            message0: "%1 第 %2 项",
            args0: [
                { "type": "input_value", "name": "arr", "check": "String" },
                { "type": "input_value", "name": "index", "check": "Number" }
            ],
            colour: "%{BKY_SOUND_HUE}",
            inputsInline: true,
            output: ANY_TYPE
        },
        {
            type: "nemohooker_array_set",
            message0: "%1 第 %2 项设为 %3",
            args0: [
                { "type": "input_value", "name": "arr", "check": "String" },
                { "type": "input_value", "name": "index", "check": "Number" },
                { "type": "input_value", "name": "value", "check": ["String", "Number"] }
            ],
            colour: "%{BKY_SOUND_HUE}",
            inputsInline: true,
            output: "String"
        },
        {
            type: "nemohooker_array_length",
            message0: "%1 的长度",
            args0: [
                { "type": "input_value", "name": "arr", "check": "String" }
            ],
            colour: "%{BKY_SOUND_HUE}",
            inputsInline: true,
            output: "Number"
        },
        // 运算扩展
        {
            type: "nemohooker_factorial",
            message0: "[B] 阶乘 %1",
            args0: [
                { "type": "input_value", "name": "num", "check": "Number" }
            ],
            colour: "%{BKY_MATH_HUE}",
            inputsInline: true,
            output: "Number"
        },
        {
            type: "nemohooker_trig_common",
            message0: "%1 %2",
            args0: [
                {
                    type: "field_dropdown",
                    name: "ttype",
                    options: [
                        ["Math.sin", "SIN"],
                        ["Math.cos", "COS"],
                        ["Math.tan", "TAN"],
                        ["Math.asin", "ASIN"],
                        ["Math.acos", "ACOS"],
                        ["Math.atan", "ATAN"]
                    ]
                },
                {
                    type: "input_value",
                    name: "xita",
                    check: "Number"
                }
            ],
            colour: "%{BKY_MATH_HUE}",
            inputsInline: true,
            output: "Number"
        },
        // 视频
        {
            type: "nemohooker_create_video",
            message0: "创建视频 %1 URL %2",
            args0: [
                { "type": "input_value", "name": "id", "check": "String" },
                { "type": "input_value", "name": "src", "check": "String" }
            ],
            colour: Color.video,
            ...method_block
        },
        {
            type: "nemohooker_play_video",
            message0: "播放视频 %1",
            args0: [{ "type": "input_value", "name": "id", "check": "String" }],
            colour: Color.video,
            ...method_block
        },
        {
            type: "nemohooker_pause_video",
            message0: "暂停视频 %1",
            args0: [{ "type": "input_value", "name": "id", "check": "String" }],
            colour: Color.video,
            ...method_block
        },
        {
            type: "nemohooker_set_video_current_time",
            message0: "设置视频 %1 位置 %2 秒",
            args0: [
                { "type": "input_value", "name": "id", "check": "String" },
                { "type": "input_value", "name": "time", "check": "Number" }
            ],
            colour: Color.video,
            ...method_block
        },

        // 画笔扩展
        {
            type: "nemohooker_draw_image_stamp",
            message0: "[B] 图像印章",
            args0: [],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_draw_custom_image_stamp",
            message0: "网络图像印章 URL %1",
            args0: [{ "type": "input_value", "name": "src", "check": "String" }],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_draw_video_stamp",
            message0: "视频印章 ID %1 x %2 y %3 缩放 %4",
            args0: [
                { "type": "input_value", "name": "id", "check": "String" },
                { "type": "input_value", "name": "x", "check": "Number" },
                { "type": "input_value", "name": "y", "check": "Number" },
                { "type": "input_value", "name": "scale", "check": "Number" }
            ],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_put_pixel",
            message0: "放置像素 x %1 y %2 HEX/RGB数组 %3 不透明度 %4",
            args0: [
                { "type": "input_value", "name": "x", "check": "Number" },
                { "type": "input_value", "name": "y", "check": "Number" },
                { "type": "input_value", "name": "hex", "check": ["String", "Array"] },
                { "type": "input_value", "name": "a", "check": "Number" },
            ],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_fill_polygon",
            message0: "绘制多边形 坐标数组 %1 颜色 %2",
            args0: [
                { "type": "input_value", "name": "point", "check": "String" },
                { "type": "input_value", "name": "color", "check": "String" }
            ],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_better_draw_text_stamp",
            message0: "样式文字印章 文本 %1 颜色 %2 %3 粗细 %4 大小 %5 字体 %6 对齐方式 %7 %8",
            // 文本 颜色 样式 粗细 大小 字体 水平 垂直
            args0: [
                { "type": "input_value", "name": "text", "check": ["String", "Number"] },
                { "type": "input_value", "name": "color", "check": "String" },
                {
                    "type": "field_dropdown",
                    "name": "style",
                    "options": [
                        ["正常", "normal"],
                        ["斜体", "italic"],
                        ["强制斜体", "oblique"]
                    ]
                },
                { "type": "input_value", "name": "weight", "check": ["String", "Number"] },
                { "type": "input_value", "name": "size", "check": "Number" },
                { "type": "input_value", "name": "font", "check": "String" },
                {
                    "type": "field_dropdown",
                    "name": "align",
                    "options": [
                        ["居中对齐", "center"],
                        ["左对齐", "left"],
                        ["右对齐", "right"]
                    ]
                },
                {
                    "type": "field_dropdown",
                    "name": "base_line",
                    "options": [
                        ["居中对齐", "middle"],
                        ["顶部对齐", "top"],
                        ["底部对齐", "bottom"]
                    ]
                }
            ],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_rectangle_clear",
            message0: "擦除矩形区域 起始点 x %1 y %2 宽度 %3 高度 %4",
            args0: [
                { "type": "input_value", "name": "x", "check": "Number" },
                { "type": "input_value", "name": "y", "check": "Number" },
                { "type": "input_value", "name": "width", "check": "Number" },
                { "type": "input_value", "name": "height", "check": "Number" }
            ],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_draw_svg",
            message0: "绘制矢量图 XML %1",
            args0: [
                { "type": "input_value", "name": "svg", "check": "String" }
            ],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_color",
            message0: "%1",
            args0: [
                { "type": "field_colour", "name": "color", "colour": "#cc66cc" }
            ],
            colour: "%{BKY_PEN_HUE}",
            inputsInline: true,
            output: "String"
        },
        {
            type: "nemohooker_hex_to_array",
            message0: "HEX %1 转 %2 数组",
            args0: [
                { "type": "input_value", "name": "hex", "check": "String" },
                {
                    "type": "field_dropdown",
                    "name": "pattern",
                    "options": [
                        ["RGB", "rgb"],
                        ["HSV", "hsv"],
                        ["HSL", "hsl"]
                    ]
                }
            ],
            colour: "%{BKY_PEN_HUE}",
            inputsInline: true,
            output: "Array"
        },
        {
            type: "nemohooker_set_pen_color_hex",
            message0: "设置画笔颜色为 HEX/RGB数组 %1 不透明度 %2",
            args0: [
                { "type": "input_value", "name": "hex", "check": ["String", "Array"] },
                { "type": "input_value", "name": "a", "check": "Number" }
            ],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_set_fill_color_hex",
            message0: "设置填充颜色为 HEX/RGB数组 %1",
            args0: [
                { "type": "input_value", "name": "hex", "check": ["String", "Array"] }
            ],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        // MQTT
        {
            type: "nemohooker_mqtt_connect",
            message0: "连接到 %1 地址 %2 客户端ID %3 用户 %4 密码 %5",
            args0: [
                { "type": "input_dummy" },
                { "type": "input_value", "name": "address", "check": "String" },
                { "type": "input_value", "name": "clientID", "check": "String" },
                { "type": "input_value", "name": "user", "check": "String" },
                { "type": "input_value", "name": "password", "check": "String" },
            ],
            colour: Color.mqtt,
            ...method_block,
            inputsInline: false
        },
        {
            type: "nemohooker_mqtt_on_connect",
            message0: "%1 当 连接成功",
            args0: [mqtt_event_icon_filed],
            colour: Color.mqtt,
            ...event_block
        },
        {
            type: "nemohooker_mqtt_on_disconnect",
            message0: "%1 当 断开连接",
            args0: [mqtt_event_icon_filed],
            colour: Color.mqtt,
            ...event_block
        },
        {
            type: "nemohooker_mqtt_on_offline",
            message0: "%1 当 客户端下线",
            args0: [mqtt_event_icon_filed],
            colour: Color.mqtt,
            ...event_block
        },
        {
            type: "nemohooker_mqtt_on_error",
            message0: "%1 当 连接失败",
            args0: [mqtt_event_icon_filed],
            colour: Color.mqtt,
            ...event_block
        },
        {
            type: "nemohooker_mqtt_on_message",
            message0: "%1 当 收到消息 %2",
            args0: [mqtt_event_icon_filed, { "type": "input_value", "name": "param", "check": "undefined" }],
            colour: Color.mqtt,
            ...event_block
        },
        {
            type: "nemohooker_mqtt_on_message_value",
            message0: "参数",
            args0: [],
            colour: BLOCK_COLOR,
            inputsInline: true,
            output: "String"
        },
        {
            type: "nemohooker_mqtt_on_publish_error",
            message0: "%1 当 发布时出错",
            args0: [mqtt_event_icon_filed],
            colour: Color.mqtt,
            ...event_block
        },
        {
            type: "nemohooker_mqtt_on_subscribe_error",
            message0: "%1 当 订阅时出错",
            args0: [mqtt_event_icon_filed],
            colour: Color.mqtt,
            ...event_block
        },
        {
            type: "nemohooker_mqtt_publish",
            message0: "向主题 %1 发布消息 %2",
            args0: [
                { "type": "input_value", "name": "topic", "check": "String" },
                { "type": "input_value", "name": "massage", "check": "String" },
            ],
            colour: Color.mqtt,
            ...method_block
        },
        {
            type: "nemohooker_mqtt_subscribe",
            message0: "订阅主题 %1",
            args0: [{ "type": "input_value", "name": "topic", "check": "String" }],
            colour: Color.mqtt,
            ...method_block
        },
    ];

    // 使用JSON数组定义Blockly代码块
    Blockly.define_blocks_with_json_array(blockObjects);
    const Di = await waitHook('Di');
    Blockly.define_block_with_object('nemohooker_mqtt_on_message_param', {
        init: function () {
            const __IS_PC__ = false;
            var t = this
                , n = Blockly.di_container.get(Di.BINDING.FieldLabelSerializable)
                , r = Blockly.di_container.get(Di.BINDING.CreateEvent)
                , i = n({
                    text: "参数"
                });
            i.on_mouse_down = function (e) {
                e.preventDefault()
            }
                ,
                this.append_dummy_input().append_field(i, "TEXT"),
                this.set_output(!0),
                this.set_inputs_inline(!0),
                this.set_colour(Blockly.theme.block_color.MQTT_HUE.fill, Blockly.theme.block_color.MQTT_HUE.border);
            this.on_mouse_down = function (n) {
                var i = Blockly.events.get_group();
                if (Blockly.events.set_group(i || !0),
                    __IS_PC__ && 0 !== n.button)
                    return n.preventDefault(),
                        void n.stopPropagation();
                var a = t.workspace.get_gesture(n);
                if (a) {
                    var o = a.handle_move.bind(a)
                        , s = a.handle_up.bind(a)
                        , c = 0
                        , u = !1
                        , l = !0;
                    a.handle_move = function (i) {
                        if (u)
                            o(i);
                        else if (c < 10)
                            c++;
                        else if (a.is_dragging_block = !0,
                            l || __IS_PC__) {
                            var s = function () {
                                Blockly.events.disable();
                                var n = t.get_field_value("TEXT") || ""
                                    , i = t.workspace.new_block('nemohooker_mqtt_on_message_value')
                                    , a = t.get_relative_to_surface_xy();
                                return i.move_by(a),
                                    i.init_svg(),
                                    i.render(),
                                    Blockly.events.enable(),
                                    Blockly.events.is_enabled() && Blockly.events.fire(r({
                                        block: i,
                                        source: "other"
                                    })),
                                    i
                            }();
                            s.select(),
                                a.handle_block_start(n, s),
                                a.target_block = s,
                                u = !0
                        } else
                            a.cancel()
                    }
                        ,
                        a.handle_up = function (t) {
                            s(t),
                                Blockly.events.set_group(i),
                                l = !0
                        }
                }
            }
        }
    })
    console.log("[NemoHooker::blocks] 积木注入完成");
})();