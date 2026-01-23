function get_run_mgr() {
    return HookRuntime.exports.get_webview_runtime().heart.runtime_manager.run_mgr;
}

(function float_ball() {
    const floatBall = document.getElementById('floatBall');
    const floatWindow = document.getElementById('floatWindow');
    const closeBtn = document.getElementById('closeBtn');
    let windowContent = document.querySelector("#floatWindow > div.window-content");
    setInterval(() => {
        document.querySelector("div.blocklyToolboxDiv").appendChild(document.querySelector("div.blocklyTreeNode:has(#extensions)"));
        windowContent = document.querySelector("#floatWindow > div.window-content");
        const injectionDiv = document.querySelector('.injectionDiv');
        injectionDiv.style.backgroundImage = 'url("http://youke.xn--y7xa690gmna.cn/s1/2026/01/22/6972260195516.webp")';
        injectionDiv.style.backgroundSize = 'contain';
        injectionDiv.style.backgroundRepeat = 'no-repeat';
        injectionDiv.style.setProperty("background-color", "#201F52", "important");
    }, 100);
    // 拖拽相关变量
    let isDragging = false;
    let dragStartX, dragStartY;
    let ballStartX, ballStartY;
    let touchStartTime = 0;
    let startX, startY;
    const CLICK_MAX_DURATION = 300; // 毫秒
    const CLICK_MAX_DISTANCE = 10; // 像素

    const UI = {
        home: () => { },
        pageHistory: [],
        clear: () => {
            windowContent.innerHTML = '';
        },
        back: (page) => {
            let lastPage = UI.pageHistory.pop();
            if (lastPage == page) lastPage = UI.pageHistory.pop();
            UI.load(lastPage);
        },
        load: (page = UI.home) => {
            UI.clear();
            if (UI.pageHistory && page != UI.home) {
                windowContent.innerHTML = `<li style="background:none;padding:0;" class="menu-item">
              <i class="fas fa-circle-chevron-left" style="font-size: 16px;"></i></li>`;
                setTimeout(() => {
                    const backButton = document.querySelector('#floatWindow > div.window-content > li.menu-item');
                    backButton.ontouchend = (e) => {
                        e.preventDefault();
                        e.stopPropagation();
                        UI.back(page);
                    };
                }, 10)
            }
            UI.pageHistory.push(page);
            page();
        },
        addStatus: (text) => {
            windowContent.innerHTML = `<div class="status-info"><span>${text}</span></div>` + windowContent.innerHTML;
        },
        setStatus: (text) => {
            document.querySelector("#floatWindow > div.window-content > div.status-info").outerHTML = `<div class="status-info"><span>${text}</span></div>`;
        },
        removeStatus: () => { document.querySelector("#floatWindow > div.window-content > div.status-info").outerHTML = ''; },
        button: (callback, name = '功能', icon = '') => {
            const menuItem = document.createElement('li');
            menuItem.innerHTML = `${icon ? `<i class="fas fa-${icon}"></i>` : ''}<span>${name}</span>`;
            menuItem.className = 'menu-item';
            menuItem.ontouchend = (e) => {
                e.preventDefault();
                e.stopPropagation();
                callback();
            };
            windowContent.appendChild(menuItem);
        },
        reset_icon: `<img src="data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgc3R5bGU9Ii1tcy10cmFuc2Zvcm06cm90YXRlKDM2MGRlZyk7LXdlYmtpdC10cmFuc2Zvcm06cm90YXRlKDM2MGRlZyk7dHJhbnNmb3JtOnJvdGF0ZSgzNjBkZWcpIj48cGF0aCBkPSJNMyAxMWExIDEgMCAwIDEgMSAxIDguMDUgOC4wNSAwIDEgMCAyLjIyLTUuNWgyLjRhMSAxIDAgMCAxIDAgMkg0LjA5YTEgMSAwIDAgMS0xLTFWM2ExIDEgMCAwIDEgMiAwdjEuNzdBMTAgMTAgMCAxIDEgMiAxMmExIDEgMCAwIDEgMS0xeiIgZmlsbD0iI2ZmZiIvPjxwYXRoIGZpbGw9InJnYmEoMCwgMCwgMCwgMCkiIGQ9Ik0wIDBoMjR2MjRIMHoiLz48L3N2Zz4=" draggable="false" width="20" height="20">`,
        numberInput: (callback, name = '数字', value = 0, defualtValue = 0) => {
            const menuItem = document.createElement('li');
            menuItem.innerHTML = `<label style="margin-right: 10px">${name}</label><input type="number" value="${value}""><button>${UI.reset_icon}</button>`;
            menuItem.className = 'menu-input';
            menuItem.querySelector('input').onchange = (e) => {
                console.log('change', name);
                callback(Number(e.target.value));
            };
            menuItem.querySelector('button').onclick = (e) => {
                console.log('reset', name);
                e.preventDefault();
                e.stopPropagation();
                menuItem.querySelector('input').value = defualtValue;
                callback(defualtValue);
            };
            windowContent.appendChild(menuItem);
        },
    };
    let erudaEnabled = false
    const Page = {
        home: () => {
            UI.addStatus('Version: ' + NemoHookerVersion);
            UI.button(() => {
                Page.home();
            }, '功能', 'home');
            UI.button(() => {
                UI.load(() => {
                    UI.addStatus('请进行二次确认');
                    UI.button(() => {
                        location.reload();
                    }, '刷新Webview', 'sync-alt');
                });
            }, '刷新Webview', 'sync-alt');
            UI.button(() => {
                if (erudaEnabled) eruda.destroy();
                else eruda.init();
                erudaEnabled = !erudaEnabled;
                console.log('eruda', erudaEnabled);
                UI.load();
            }, (erudaEnabled ? '关闭' : '开启') + 'Eruda', 'screwdriver-wrench');
            UI.button(() => { UI.load(Page.editorConfig) }, '编辑器', 'laptop-code');
            UI.button(() => { UI.load(Page.projectConfig) }, '作品', 'cog');
        },
        editorConfig: () => {
            UI.addStatus('此配置跟随作品存储');
        },
        projectConfig: () => {
            // 默认高级配置
            const defualtConfig = {
                "block_pool_preallocation_size": 50,
                "opti_frame_pool_preallocation_size": 10,
                "opti_frame_pool_size_limit": 600,
                "legacy": {
                    "lists_get_value_allow_return_undefined": false
                },
                "max_procedure_calls_per_interpreter_step": 50000,
                "max_warp_iterations_per_interpreter_step": 30000,
                "warp_interpreter_millisecond_time_limit": 4,
                "max_call_stack_size": 10000,
                "opti_compiler": {
                    "pretty_print": false
                },
                "per_entity_clone_limit": 300,
                "entity_max_clones_per_frame": 300,
                "reports_all_entities": true,
                "should_report_current_running_block": false,
                "user_debug_mode": false,
                "ignore_missing_domain_function": false
            };
            //             {     "块池预分配大小": 50,
            //      "优化帧池预分配大小": 10,
            //      "优化帧池大小限制": 600,
            //      "遗留": {"列表获取值允许返回未定义": false},
            //      "每个解释器步骤的最大过程调用次数": 50000,
            //      "每个解释器步骤的最大“一步执行”迭代次数": 30000,
            //      "“一步执行”毫秒时间限制": 4,
            //      "最大调用堆栈大小": 10000,
            //      "优化编译器": {         "pretty_print": false     },
            //      "每个实体克隆限制": 300,
            //      "每个帧的实体最大克隆数": 300,
            //      "报告所有实体": true,
            //      "应报告当前运行块": false,
            //      "用户调试模式": false,
            //      "忽略缺失的域函数": false 
            // }
            let newConfig = get_run_mgr().config.get();
            UI.addStatus('此配置跟随作品存储');
            UI.numberInput((value) => {
                newConfig.per_entity_clone_limit = value;
            }, '角色克隆限制', newConfig.per_entity_clone_limit, defualtConfig.per_entity_clone_limit);
            UI.numberInput((value) => {
                newConfig.entity_max_clones_per_frame = value;
            }, '每帧克隆限制', newConfig.entity_max_clones_per_frame, defualtConfig.per_entity_clone_limit);
            UI.button(() => {
                get_run_mgr().config.set(defualtConfig);
            }, '重置', 'sync-alt');
            UI.button(() => {
                console.log('newConfig', newConfig);
                get_run_mgr().config.set(newConfig);
            }, '保存', 'floppy-disk');
        }
    };
    UI.home = Page.home;
    // 关闭悬浮窗口
    function closeFloatWindow() {
        floatWindow.classList.remove('active');
        floatBall.classList.remove('active');
    }
    // 切换悬浮窗口
    function toggleFloatWindow() {
        const isActive = floatWindow.classList.contains('active');

        if (!isActive) {
            UI.load();
            floatWindow.classList.add('active');
            floatBall.classList.add('active');
            // 确保窗口位置更新
            const ballRect = floatBall.getBoundingClientRect();
            const ballX = ballRect.left + ballRect.width / 2 - floatWindow.offsetWidth / 2;
            const ballY = ballRect.top;
            updateWindowPosition(ballX, ballY);
            // setTimeout(() => {
            //   floatBall.style.display = 'none';
            //   floatWindow.style.display = '';
            // }, 10);
        } else {
            closeFloatWindow();
        }
    }
    // 关闭按钮点击
    closeBtn.addEventListener('click', function (e) {
        e.stopPropagation();
        closeFloatWindow();
    });
    // 点击窗口外部关闭
    document.addEventListener('click', function (e) {
        if (floatWindow.classList.contains('active') &&
            !floatWindow.contains(e.target) &&
            !floatBall.contains(e.target)) {
            closeFloatWindow();
        }
    });
    // ========== 拖拽功能 ==========
    // 开始拖拽
    function startDrag(clientX, clientY) {
        isDragging = true;

        // 记录开始位置
        const rect = floatBall.getBoundingClientRect();
        dragStartX = clientX;
        dragStartY = clientY;
        ballStartX = rect.left;
        ballStartY = rect.top;

        // 添加拖拽样式
        floatBall.style.transition = 'none';
        floatBall.style.cursor = 'grabbing';
        floatBall.style.opacity = '0.9';

        // 关闭窗口（如果打开）
        closeFloatWindow();
    }
    // 拖拽中
    function onDrag(clientX, clientY) {
        if (!isDragging) return;

        // 计算移动距离
        const deltaX = clientX - dragStartX;
        const deltaY = clientY - dragStartY;

        // 计算新位置
        let newX = ballStartX + deltaX;
        let newY = ballStartY + deltaY;

        // 边界检查
        newX = Math.max(0, Math.min(newX, window.innerWidth - floatBall.offsetWidth));
        newY = Math.max(0, Math.min(newY, window.innerHeight - floatBall.offsetHeight));

        // 应用新位置
        floatBall.style.left = newX + 'px';
        floatBall.style.top = newY + 'px';
        floatBall.style.right = 'auto';
        floatBall.style.bottom = 'auto';

        // 更新窗口位置
        updateWindowPosition(newX, newY);
    }
    // 停止拖拽
    function stopDrag() {
        if (!isDragging) return;
        isDragging = false;

        // 恢复样式
        floatBall.style.transition = 'all 0.3s ease';
        floatBall.style.cursor = 'pointer';
        floatBall.style.opacity = '1';
    }
    // 更新悬浮窗口位置
    function updateWindowPosition(ballX, ballY) {
        const ballRect = floatBall.getBoundingClientRect();
        const windowRect = floatWindow.getBoundingClientRect();

        // 计算悬浮窗口位置
        let windowX, windowY;

        // 检查屏幕下方空间
        const spaceBelow = window.innerHeight - ballRect.bottom;
        const spaceAbove = ballRect.top;

        if (spaceBelow >= windowRect.height + 20) {
            // 显示在下方
            windowY = ballRect.bottom + 20;
        } else if (spaceAbove >= windowRect.height + 20) {
            // 显示在上方
            windowY = ballRect.top - windowRect.height - 20;
        } else {
            // 居中显示
            windowY = (window.innerHeight - windowRect.height) / 2;
        }

        // 水平方向尽量居中于悬浮球
        windowX = ballRect.left + ballRect.width / 2 - windowRect.width / 2;

        // 确保窗口不超出屏幕
        windowX = Math.max(20, Math.min(windowX, window.innerWidth - windowRect.width - 20));
        windowY = Math.max(20, Math.min(windowY, window.innerHeight - windowRect.height - 20));

        floatWindow.style.left = windowX + 'px';
        floatWindow.style.top = windowY + 'px';
        floatWindow.style.right = 'auto';
        floatWindow.style.bottom = 'auto';
    }
    // ========== 触屏事件处理 ==========
    // 触屏开始 - 轻量处理，不阻止默认行为
    floatBall.addEventListener('touchstart', function (e) {
        const touch = e.touches[0];
        touchStartTime = Date.now();

        // 记录起始坐标用于判断是否拖动
        startX = touch.clientX;
        startY = touch.clientY;
        isDragging = false;
    }, { passive: false });
    // 触屏移动 - 如果移动距离超过阈值，则视为拖拽
    floatBall.addEventListener('touchmove', function (e) {
        if (!touchStartTime) return;

        const touch = e.touches[0];
        const deltaX = Math.abs(touch.clientX - startX);
        const deltaY = Math.abs(touch.clientY - startY);

        // 如果移动距离超过阈值，则认为是拖拽
        if (deltaX > CLICK_MAX_DISTANCE || deltaY > CLICK_MAX_DISTANCE) {
            if (!isDragging) {
                isDragging = true;
                startDrag(touch.clientX, touch.clientY);
            }
        }

        if (isDragging) {
            e.preventDefault(); // 只有在拖拽时才阻止默认行为
            onDrag(touch.clientX, touch.clientY);
        }
    }, { passive: false });
    // 触屏结束
    floatBall.addEventListener('touchend', function (e) {
        const touchDuration = Date.now() - touchStartTime;

        // 如果不是拖拽且触摸时间不超过阈值，则视为点击
        if (!isDragging && touchDuration <= CLICK_MAX_DURATION) {
            e.preventDefault();
            e.stopPropagation();
            toggleFloatWindow();
        } else if (isDragging) {
            stopDrag();
        }

        // 重置状态
        touchStartTime = 0;
        isDragging = false;
    });
    // 窗口大小变化时调整位置
    window.addEventListener('resize', function () {
        const ballRect = floatBall.getBoundingClientRect();

        // 确保悬浮球在可视区域内
        if (ballRect.right > window.innerWidth) {
            floatBall.style.left = (window.innerWidth - floatBall.offsetWidth - 20) + 'px';
            floatBall.style.right = 'auto';
        }
        if (ballRect.bottom > window.innerHeight) {
            floatBall.style.top = (window.innerHeight - floatBall.offsetHeight - 20) + 'px';
            floatBall.style.bottom = 'auto';
        }

        // 更新窗口位置
        const currentLeft = parseFloat(floatBall.style.left) || 0;
        const currentTop = parseFloat(floatBall.style.top) || 0;
        updateWindowPosition(currentLeft, currentTop);
    });
})();
const options = {
    facing_the_mouse: true,
    wink: true,
    ear: true
}
var catBlock = function catBlock(event) {
    const eventBlocks = [
        "start_on_click",
        "start_as_a_mirror",
        "self_on_tap",
        "on_running_group_activated",
        "on_phone_shake",
        "on_receive_sound",
        "on_phone_tilt",
        "on_swipe",
        "when",
        "self_listen",
        "midi__on_play_section",
        "midi__on_play_note",
        "microbit_button_when",
        "microbit_logo_when",
        "microbit_pin_when",
        "procedures_2_defnoreturn"
    ];
    let blocks = [];
    eventBlocks.forEach(type => {
        document.querySelectorAll(`#workspace > div.injectionDiv.dark > svg.blocklySvg > g > g.blocklyBlockCanvas > g.${type}.blocklyDraggable`).forEach(block => {
            blocks.push(block);
        });
    })
    blocks.forEach(block => {
        if (block.getAttribute('data-cat-hat') == 'true') { return; }
        block.setAttribute('data-cat-hat', 'true');
        const path = block.querySelector('path.blocklyPath');
        if (!path) return;
        const fill_color = path.getAttribute('fill');
        const stroke_color = path.getAttribute('stroke');
        const cat_bodys = {
            'normal': `<path d="M0,31.1505L96,31.0505C93.4,28.8505,90.5,26.7505,87.5,24.9505C88.5,12.4505,82.2,1.65046,79.1,0.150455C75.4,-1.64955,62.6,13.2505,60.7,15.5505C52.3,14.2505,43.7,14.2505,35.3,15.5505C33.4,13.2505,20.6,-1.64954,16.9,0.150455C13.8,1.65046,7.5,12.4505,8.5,24.9505C5.5,26.8505,2.6,28.8505,0,31.1505Z" fill="${fill_color}" fill-opacity="1" style="mix-blend-mode:passthrough"></path><path d="M87.7428,25.8792Q92.1454,28.5208,96.177,31.9321L96.823,31.1688Q92.8506,27.8076,88.5218,25.1813Q89.1223,16.7813,85.7996,8.73462Q84.4545,5.47695,82.7681,3.11031Q81.1561,0.847955,79.8178,0.20038099999999998Q77.1518,-1.0966,69.3767,6.45427Q64.9379,10.765,60.9956,15.5134Q48.5,13.622,36.0044,15.5134Q32.0621,10.765,27.6233,6.45427Q19.8482,-1.09659,17.1813,0.200839Q15.8439,0.847939,14.2319,3.1103Q12.5455,5.47689,11.2003,8.73462Q7.87622,16.7849,8.47875,25.1892Q3.36954,28.4445,0.168713,31.276L0.831287,32.025Q4.0512999999999995,29.1765,9.26753,25.8729L9.52247,25.7114L9.49841,25.4106Q8.83266,17.0887,12.1247,9.11629Q13.4262,5.96417,15.0463,3.69061Q16.5098,1.63664,17.6187,1.100074Q19.6548,0.10954799999999998,26.9267,7.17165Q31.4282,11.5433,35.4145,16.3689L35.5956,16.588L35.8765,16.5446Q48.5,14.5909,61.1235,16.5446L61.4044,16.588L61.5855,16.3689Q65.5719,11.5433,70.0733,7.17164Q77.3452,0.109545,79.3822,1.100542Q80.4902,1.63665,81.9537,3.69061Q83.5738,5.96424,84.8754,9.11629Q88.1673,17.0889,87.5016,25.4106L87.4769,25.7197L87.7428,25.8792Z" fill-rule="evenodd" fill="${stroke_color}" fill-opacity="1" style="mix-blend-mode:passthrough"></path>`,
            'left': `<g transform="matrix(-1,0,0,1,192.64599609375,0)"><g><path d="M96.322998046875,31.6397578125L192.322998046875,31.5397578125C189.722998046875,29.3397578125,186.822998046875,27.2397578125,183.822998046875,25.4397578125C188.822998046875,21.4892578125,191.922998046875,7.9892578125,188.822998046875,6.4892578125C187.066398046875,5.6346778125,182.01879804687502,7.7442178125,176.152498046875,10.1959878125C169.662498046875,12.9083578125,162.17029804687502,16.0396578125,157.022998046875,16.0397578125C148.622998046875,14.7397578125,140.022998046875,14.7397578125,131.622998046875,16.0397578125C129.722998046875,13.7397578125,116.922998046875,-1.1602821875,113.222998046875,0.6397128125C110.122998046875,2.1397178125,103.822998046875,12.9397578125,104.822998046875,25.4397578125C101.822998046875,27.3397578125,98.922998046875,29.3397578125,96.322998046875,31.6397578125Z" fill="${fill_color}" fill-opacity="1" style="mix-blend-mode:passthrough"/></g><g><path d="M183.565798046875,25.8684578125Q187.968398046875,28.5100578125,191.99999804687502,31.9213578125L192.64599804687498,31.1580578125Q188.82509804687498,27.9249578125,184.674398046875,25.3718578125Q188.071498046875,22.2739578125,189.845598046875,15.1666578125Q190.65739804687502,11.9144578125,190.552198046875,9.5057278125Q190.430198046875,6.7114478125,189.040798046875,6.0391778125Q187.680898046875,5.3776378125,183.87289804687498,6.6276778125Q181.639398046875,7.3608778125,175.959598046875,9.7346578125Q169.235498046875,12.5448578125,165.924498046875,13.6611578125Q160.38429804687502,15.5289578125,157.060998046875,15.5396578125Q144.444198046875,13.5929578125,131.827398046875,15.5026578125Q127.885098046875,10.7542578125,123.446298046875,6.4435278125Q115.67119804687499,-1.1073321875,113.004298046875,0.1900968125Q111.666898046875,0.8371968125,110.054898046875,3.0995578125Q108.368498046875,5.4661478125,107.023298046875,8.7238778125Q103.699218046875,16.7741578125,104.301748046875,25.1784578125Q99.192538046875,28.4337578125,95.991711046875,31.2652578125L96.654285046875,32.0142578125Q99.874298046875,29.1657578125,105.090528046875,25.8621578125L105.345468046875,25.7006578125L105.321408046875,25.3998578125Q104.655658046875,17.0779578125,107.947698046875,9.1055478125Q109.249198046875,5.9534278125,110.869298046875,3.6798678125Q112.332798046875,1.6258978125,113.441698046875,1.0893318125Q115.477798046875,0.09880581249999998,122.749698046875,7.1609078125Q127.251198046875,11.5325578125,131.237498046875,16.3581578125L131.418598046875,16.5772578125L131.699498046875,16.5338578125Q144.322998046875,14.5801578125,156.946498046875,16.5338578125L156.984498046875,16.5397578125L157.022998046875,16.5397578125Q160.516498046875,16.5396578125,166.243998046875,14.6087578125Q169.588498046875,13.4812578125,176.345298046875,10.6573578125Q181.98869804687502,8.298727812500001,184.18479804687502,7.5777978125Q187.607898046875,6.4541278125,188.605198046875,6.9393378125Q189.45719804687502,7.3515678125,189.553198046875,9.5493678125Q189.65209804687498,11.8130578125,188.875398046875,14.9244578125Q187.045098046875,22.2567578125,183.512998046875,25.0473578125L182.945098046875,25.4960578125L183.565798046875,25.8684578125Z" fill-rule="evenodd" fill="${stroke_color}" fill-opacity="1"/></g></g>`,
            'right': `<g><path d="M0.331298828125,31.6397578125L96.331298828125,31.5397578125C93.731298828125,29.3397578125,90.831298828125,27.2397578125,87.831298828125,25.4397578125C92.831298828125,21.4892578125,95.931298828125,7.9892578125,92.831298828125,6.4892578125C91.074698828125,5.6346778125,86.027098828125,7.7442178125,80.160798828125,10.1959878125C73.670798828125,12.9083578125,66.178598828125,16.0396578125,61.031298828125,16.0397578125C52.631298828125,14.7397578125,44.031298828125,14.7397578125,35.631298828125,16.0397578125C33.731298828125,13.7397578125,20.931298828125,-1.1602821875,17.231298828125,0.6397128125C14.131298828125,2.1397178125,7.831298828125,12.9397578125,8.831298828125,25.4397578125C5.831298828125,27.3397578125,2.931298828125,29.3397578125,0.331298828125,31.6397578125Z" fill="${fill_color}" fill-opacity="1" style="mix-blend-mode:passthrough"/></g><g><path d="M87.574098828125,25.8684578125Q91.976698828125,28.5100578125,96.008298828125,31.9213578125L96.654298828125,31.1580578125Q92.833398828125,27.9249578125,88.682698828125,25.3718578125Q92.079798828125,22.2739578125,93.853898828125,15.1666578125Q94.665698828125,11.9144578125,94.560498828125,9.5057278125Q94.438498828125,6.7114478125,93.049098828125,6.0391778125Q91.689198828125,5.3776378125,87.881198828125,6.6276778125Q85.647698828125,7.3608778125,79.967898828125,9.7346578125Q73.243798828125,12.5448578125,69.932798828125,13.6611578125Q64.392598828125,15.5289578125,61.069298828125,15.5396578125Q48.452498828125,13.5929578125,35.835698828125,15.5026578125Q31.893398828125,10.7542578125,27.454598828125,6.4435278125Q19.679498828125,-1.1073321875,17.012598828125,0.1900968125Q15.675198828125,0.8371968125,14.063198828125,3.0995578125Q12.376798828125,5.4661478125,11.031598828125,8.7238778125Q7.707518828125,16.7741578125,8.310048828125,25.1784578125Q3.200838828125,28.4337578125,0.000011828125000001855,31.2652578125L0.662585828125,32.0142578125Q3.882598828125,29.1657578125,9.098828828125,25.8621578125L9.353768828125,25.7006578125L9.329708828125,25.3998578125Q8.663958828125,17.0779578125,11.955998828125,9.1055478125Q13.257498828125,5.9534278125,14.877598828125,3.6798678125Q16.341098828125,1.6258978125,17.449998828125,1.0893318125Q19.486098828125,0.09880581249999998,26.757998828125,7.1609078125Q31.259498828125,11.5325578125,35.245798828125,16.3581578125L35.426898828125,16.5772578125L35.707798828125,16.5338578125Q48.331298828125,14.5801578125,60.954798828125,16.5338578125L60.992798828125,16.5397578125L61.031298828125,16.5397578125Q64.524798828125,16.5396578125,70.252298828125,14.6087578125Q73.596798828125,13.4812578125,80.353598828125,10.6573578125Q85.996998828125,8.298727812500001,88.193098828125,7.5777978125Q91.616198828125,6.4541278125,92.613498828125,6.9393378125Q93.465498828125,7.3515678125,93.561498828125,9.5493678125Q93.660398828125,11.8130578125,92.883698828125,14.9244578125Q91.053398828125,22.2567578125,87.521298828125,25.0473578125L86.953398828125,25.4960578125L87.574098828125,25.8684578125Z" fill-rule="evenodd" fill="${stroke_color}" fill-opacity="1"/></g>`
        };
        const cat_hat_html = `<g style="transform: translate(15px, -30px);" class="cat_hat"><g class="cat_hat_body">${cat_bodys['normal']}</g><g fill="#000000" style="transform: translate(6.1845px, 32.3896px);" class="cat_hat_eyes"><path d="M25.2-1.1c0.1,0,0.2,0,0.2,0l8.3-2.1l-7-4.8c-0.5-0.3-1.1-0.2-1.4,0.3s-0.2,1.1,0.3,1.4L29-4.1l-4,1c-0.5,0.1-0.9,0.7-0.7,1.2C24.3-1.4,24.7-1.1,25.2-1.1z" fill-opacity="0" class="cat_hat_left_eye2"></path><path d="M62.4-1.1c-0.1,0-0.2,0-0.2,0l-8.3-2.1l7-4.8c0.5-0.3,1.1-0.2,1.4,0.3s0.2,1.1-0.3,1.4l-3.4,2.3l4,1c0.5,0.1,0.9,0.7,0.7,1.2C63.2-1.4,62.8-1.1,62.4-1.1z" fill-opacity="0" class="cat_hat_right_eye2"></path><circle cx="59.2" cy="-3.3" r="3.4" fill-opacity="0.6" class="cat_hat_right_eye1"></circle><circle cx="29.1" cy="-3.3" r="3.4" fill-opacity="0.6" class="cat_hat_left_eye1"></circle><path d="M45.6,0.1c-0.9,0-1.7-0.3-2.3-0.9c-0.6,0.6-1.3,0.9-2.2,0.9c-0.9,0-1.8-0.3-2.3-0.9c-1-1.1-1.1-2.6-1.1-2.8c0-0.5,0.5-1,1-1l0,0c0.6,0,1,0.5,1,1c0,0.4,0.1,1.7,1.4,1.7c0.5,0,0.7-0.2,0.8-0.3c0.3-0.3,0.4-1,0.4-1.3c0-0.1,0-0.1,0-0.2c0-0.5,0.5-1,1-1l0,0c0.5,0,1,0.4,1,1c0,0,0,0.1,0,0.2c0,0.3,0.1,0.9,0.4,1.2C44.8-2.2,45-2,45.5-2s0.7-0.2,0.8-0.3c0.3-0.4,0.4-1.1,0.3-1.3c0-0.5,0.4-1,0.9-1.1c0.5,0,1,0.4,1.1,0.9c0,0.2,0.1,1.8-0.8,2.8C47.5-0.4,46.8,0.1,45.6,0.1z" fill-opacity="0.6"></path></g><path d="M73.1-15.6c1.7-4.2,4.5-9.1,5.8-8.5c1.6,0.8,5.4,7.9,5,15.4c0,0.6-0.7,0.7-1.1,0.5c-3-1.6-6.4-2.8-8.6-3.6C72.8-12.3,72.4-13.7,73.1-15.6z" fill="#FFD5E6" fill-opacity="" style="transform: translate(-2px, 34px);" class="cat_hat_right_ear"></path><path d="M22.4-15.6c-1.7-4.2-4.5-9.1-5.8-8.5c-1.6,0.8-5.4,7.9-5,15.4c0,0.6,0.7,0.7,1.1,0.5c3-1.6,6.4-2.8,8.6-3.6C22.8-12.3,23.2-13.7,22.4-15.6z" fill="#FFD5E6" fill-opacity="" style="transform: translate(4px, 34px);" class="cat_hat_left_ear"></path></g>`;
        path.insertAdjacentHTML('afterend', cat_hat_html);
        const cat_hat = block.querySelector("g.cat_hat");
        if (!cat_hat) return;
        if (options["wink"]) {
            const left_eye1 = cat_hat.querySelector(".cat_hat_left_eye1");
            const left_eye2 = cat_hat.querySelector(".cat_hat_left_eye2");
            const right_eye1 = cat_hat.querySelector(".cat_hat_right_eye1");
            const right_eye2 = cat_hat.querySelector(".cat_hat_right_eye2");
            if (!left_eye1 || !right_eye1 || !left_eye2 || !right_eye2) return;
            function wink(type1, type2) {
                type1.style.fillOpacity = '0';
                type2.style.fillOpacity = '0.6';
                setTimeout(() => {
                    type1.style.fillOpacity = '0.6';
                    type2.style.fillOpacity = '0';
                }, 100);
            }
            left_eye1.onmouseover = () => wink(left_eye1, left_eye2);
            right_eye1.onmouseover = () => wink(right_eye1, right_eye2);
        }
        if (options['ear']) {
            const cat_body = cat_hat.querySelector('.cat_hat_body');
            const left_ear = cat_hat.querySelector('.cat_hat_left_ear');
            const right_ear = cat_hat.querySelector('.cat_hat_right_ear');
            if (!left_ear || !right_ear) return;
            function toggle(type, ear) {
                if (!cat_body) return;
                ear.style.fillOpacity = '0';
                cat_body.innerHTML = cat_bodys[type];
                setTimeout(() => {
                    cat_body.innerHTML = cat_bodys['normal'];
                    ear.style.fillOpacity = '1';
                }, 80);
            }
            left_ear.onmouseover = () => toggle('left', left_ear);
            right_ear.onmouseover = () => toggle('right', right_ear);
        }
    })
    let x = event.clientX;
    let y = event.clientY;
    document.querySelectorAll("g.cat_hat > g.cat_hat_eyes").forEach(cat => {
        if (!options['facing_the_mouse']) { return; }
        let catX = cat.getBoundingClientRect().x;
        let catY = cat.getBoundingClientRect().y;
        cat.style.transform = `translate(${(x - catX) / 100 + 4}px, ${(y - catY) / 100 + 32}px)`;
    });
    window['catBlock'] = catBlock;
};
document.addEventListener('mousemove', catBlock);
document.addEventListener('touchmove', (e) => {
    catBlock(e.touches[0]);
    setTimeout(() => {
        catBlock(e.touches[0]);
    }, 500);
});
const isBlocklyLoaded = async () => {
    while (!Blockly) {
        await new Promise((resolve) => requestAnimationFrame(resolve));
    }
    return;
};
await isBlocklyLoaded();
const isBlocklyMainworkspaceLoaded = async () => {
    while (!Blockly.mainWorkspace) {
        await new Promise((resolve) => requestAnimationFrame(resolve));
    }
    return;
};
await isBlocklyMainworkspaceLoaded();
const CBP_COLOR = "%{BKY_RED_2}";
const CBP_BLOCK_ICON = 'https://static.codemao.cn/flowchunkflex/HkQchml_xx.png';
const CBP_BLOCK_HEAD = {
    "type": "field_icon",
    "is_head": true,
    "src": CBP_BLOCK_ICON,
    "width": 38,
    "height": 38,
    "alt": "*"
}
// 定义自定义代码块对象数组
const blockObjects = [
    {
        type: "connect_to_catbitpro",
        message0: "连接到哈基比特",
        args0: [],
        colour: CBP_COLOR,
        previousStatement: !0,
        nextStatement: !0,
        inputsInline: !0,
    },
    {
        "type": "catbitpro_connected_when",
        "message0": "%1 当 连接到 哈基比特",
        "args0": [CBP_BLOCK_HEAD],
        "nextStatement": true,
        "colour": CBP_COLOR,
        "inputsInline": true
    }
];

// 使用JSON数组定义Blockly代码块
Blockly.define_blocks_with_json_array(blockObjects)
setTimeout(function () {
    function add_style(style) {
        document.head.insertAdjacentHTML('beforeend', `<style>${style}</style>`);
    }
    // 添加图标
    function add_icon() {
        document.querySelector("#__SVG_SPRITE_NODE__").insertAdjacentHTML('beforeend', '<symbol id="icn_blocktype_catbitpro" viewBox="-59 -62 150 150"><path d="M10.622128,24.164392C-5.3129196,20.498587,-1.2730504,4.2643046,9.3503027,0.22443709C9.986208,0.22443709,9.986208,0.67331123,9.986208,1.1221843C9.986208,1.5710596,9.986208,2.0199337,10.622113,2.0199337L25.360193,2.0199337C26.220535,2.0199337,26.220535,1.5149503,26.220535,1.009968C26.220535,0.50498343,26.220535,0,27.080877,0C40.098228,6.4338632,38.302731,22.368896,25.360193,24.164392L10.622128,24.164392ZM8.3029156,7.3316274C8.6022091,5.5361147,11.594688,5.5361147,12.193143,7.3316274L12.193143,9.4264622C12.193143,9.8752613,12.193143,10.099652,12.080955,10.211871C11.968736,10.32409,11.744299,10.32409,11.295409,10.324105L8.9014139,10.324105C8.3029594,10.32409,8.3029156,10.32409,8.3029156,9.4263573L8.3029156,7.3316274ZM24.462446,7.3316274C24.761694,5.5361147,27.754189,5.5361147,28.352688,7.3316274L28.352688,9.4264622C28.352688,9.8752613,28.352688,10.099652,28.240469,10.211871C28.12825,10.32409,27.903814,10.32409,27.454939,10.324105L25.060944,10.324105C24.462446,10.32409,24.462446,10.32409,24.462446,9.4263573L24.462446,7.3316274ZM4.4127021,14.812831C2.6171906,14.513538,2.6171906,11.521058,4.4127021,10.922605L6.5075383,10.922605C6.9563222,10.922605,7.1807299,10.922605,7.2929482,11.034807C7.4051666,11.147012,7.4051666,11.371449,7.4051819,11.820337L7.4051819,14.214333C7.4051666,14.812788,7.4051666,14.812831,6.5074334,14.812831L4.4127021,14.812831ZM15.784212,14.812831C17.579708,14.513538,17.579708,11.521058,15.784212,10.922605L13.689301,10.922605C13.240516,10.922605,13.016109,10.922605,12.903905,11.034807C12.791686,11.147012,12.791672,11.371449,12.791672,11.820337L12.791672,14.214333C12.791686,14.812788,12.791686,14.812831,13.689404,14.812831L15.784212,14.812831ZM20.572203,14.812831C18.776707,14.513538,18.776707,11.521058,20.572203,10.922605L22.666948,10.922605C23.115824,10.922605,23.34026,10.922605,23.452478,11.034807C23.564697,11.147012,23.564697,11.371449,23.564697,11.820337L23.564697,14.214333C23.564697,14.812788,23.564697,14.812831,22.666948,14.812831L20.572203,14.812831ZM31.943682,14.812831C33.739178,14.513538,33.739178,11.521058,31.943682,10.922605L29.848785,10.922605C29.39991,10.922605,29.175625,10.922605,29.063406,11.034807C28.951187,11.147012,28.951187,11.371449,28.951187,11.820337L28.951187,14.214333C28.951187,14.812788,28.951187,14.812831,29.848936,14.812831L31.943682,14.812831ZM8.1532907,17.805342C8.4525843,19.600838,11.445064,19.600838,12.043518,17.805342L12.043518,15.710445C12.043518,15.261722,12.043518,15.037285,11.93133,14.925082C11.819111,14.812863,11.594674,14.812847,11.145784,14.812847L8.7517891,14.812847C8.1533346,14.812863,8.1532907,14.812863,8.1532907,15.710596L8.1532907,17.805342ZM24.31282,17.805342C24.61207,19.600838,27.604565,19.600838,28.203064,17.805342L28.203064,15.710445C28.203064,15.261722,28.203064,15.037285,28.090845,14.925082C27.978626,14.812863,27.754189,14.812847,27.305315,14.812847L24.91132,14.812847C24.31282,14.812863,24.31282,14.812863,24.31282,15.710596L24.31282,17.805342Z" fill-rule="evenodd"></path></symbol>')
    }
    add_style(`#catbitpro.blocklyTreeSelected > div > svg {fill: white;}`);
    add_icon();

    // 将字符串转换为HTML元素的工具函数
    const stringToHTML = function (str) {
        const parser = new DOMParser();
        const doc = parser.parseFromString(str, "text/html");
        return doc.body.firstChild;
    };
    // 将字符串转换为XML元素的工具函数
    const stringToXML = function (str) {
        const parser = new DOMParser();
        const doc = parser.parseFromString(str, "text/xml");
        return doc.firstChild;
    };

    // 定义代码块工具箱的XML结构
    const blockToolboxXML = [
        `<block type="catbitpro_connected_when"></block>
        `, `<block type="connect_to_catbitpro"></block>`,
        '<label type="flyout_line" height="25" text="隐藏积木"/>',
        `<block type="calculate"><value name="input">
      <shadow type="text">
        <field name="input">abc</field>
      </shadow>
    </value></block>`
    ].map(xmlString => stringToXML(xmlString));
    // 创建标题
    const titleButton = stringToHTML(
        `<label text="栗子 · hook" type="normal" gap="24" web-class="flyout-toolbox-title" vertical_padding="0"></label>`
    );
    // 工具箱对象配置
    const toolboxObject = {
        color: '#F46767',
        name: "catbitpro",
        icon: {
            font_id: "icn_blocktype_catbitpro"
        },
        blocks: [
            titleButton,
            ...blockToolboxXML,
        ]
    };

    console.log("toolboxObject", toolboxObject);

    // 获取主工作区的工具箱并添加自定义工具箱节点
    const toolbox = Blockly.mainWorkspace.get_toolbox();
    toolbox.add(toolbox.new_node(toolboxObject));

    // 注册域函数的工具函数
    function regDomainFunction(name, func) {
        const registry = get_run_mgr().registry;
        registry.domain_function[name] = func;
        registry.domain_function_list.push(func);
        registry.domain_function_index[name] = registry.domain_function_types.push(name) - 1;
    }

    // 注册自定义代码块的执行函数
    regDomainFunction("connect_to_catbitpro", (...args) => {
        document.write('<h1>WOW</h1>')
    });
}, 2000);