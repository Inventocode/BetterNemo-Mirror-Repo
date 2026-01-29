
function get_run_mgr() {
    if (!HookRuntime) return;
    return HookRuntime.exports.get_webview_runtime().heart.runtime_manager.run_mgr;
}
class Storage {
    constructor() {
        this.namespace = 'nemohooker';
        this.storage = this.getAll() || {};
    }
    getAll() {
        const data = localStorage.getItem(this.namespace);
        try {
            return data ? JSON.parse(data) : {};
        } catch (error) {
            console.error('解析存储数据失败:', error);
            return {};
        }
    }
    save(data) {
        localStorage.setItem(this.namespace, JSON.stringify(data));
    }
    get(id) {
        if (!this.storage[id]) return null;
        return this.storage[id];
    }
    set(id, value) {
        this.storage[id] = value;
        this.save(this.storage);
    }
    remove(id) {
        delete this.storage[id];
        this.save(this.storage);
    }
    clear() {
        this.storage = {};
        localStorage.removeItem(this.namespace);
    }
    getAllData() {
        return { ...this.storage };
    }
}
const storage = new Storage();



const experimentalConfig = {
    "disable_repeat_forever_in_warp": false,
}
// --------------------猫块---------------------

const options = {
    facing_the_mouse: true,
    wink: true,
    ear: true
}
function catBlock(event = { nodata: true }) {
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
    if (!event.nodata) {
        let x = event.clientX;
        let y = event.clientY;
    }
    document.querySelectorAll("g.cat_hat > g.cat_hat_eyes").forEach(cat => {
        try {
            if (!options['facing_the_mouse']) return;
            let catX = cat.getBoundingClientRect().x;
            let catY = cat.getBoundingClientRect().y;
            if (event.nodata) return
            cat.style.transform = `translate(${(x - catX) / 100 + 4}px, ${(y - catY) / 100 + 32}px)`;
        } catch (e) { }
    });
    window['catBlock'] = catBlock;
};
function enableCatBlock() {
    catBlock();
    document.addEventListener('mousemove', catBlock);
    document.addEventListener('touchmove', (e) => {
        catBlock(e.touches[0]);
        setTimeout(() => {
            catBlock(e.touches[0]);
        }, 500);
    });
}
function disableCatBlock() {
    document.removeEventListener('mousemove', catBlock);
    document.removeEventListener('touchmove', catBlock);
    document.querySelectorAll("g.cat_hat").forEach(cat => {
        if (!cat.parentElement) return;
        cat.parentElement.setAttribute('data-cat-hat', 'false');
        cat.remove();
    })
}
if (storage.get('cat'))
    enableCatBlock();


// -----------------悬浮球-面板---------------
(function float_ball() {
    const floatBall = document.getElementById('floatBall');
    const floatWindow = document.getElementById('floatWindow');
    const closeBtn = document.getElementById('closeBtn');
    let windowContent = document.querySelector("#floatWindow > div.window-content");
    const presetBackgroundImage = [
        'http://youke.xn--y7xa690gmna.cn/s1/2026/01/22/6972260195516.webp',
        'http://youke.xn--y7xa690gmna.cn/s1/2026/01/25/697632d161f0a.webp'
    ];
    let backgroundImage = storage.get('backgroundImage') || presetBackgroundImage[1];
    setInterval(() => {
        const treeNodeWithExtensions = Array.from(document.querySelectorAll("div.blocklyTreeNode")).find(node => node.querySelector('#extensions'));
        if (treeNodeWithExtensions) {
            document.querySelector("div.blocklyToolboxDiv").appendChild(treeNodeWithExtensions);
        }
        windowContent = document.querySelector("#floatWindow > div.window-content");
        const injectionDiv = document.querySelector('.injectionDiv');
        injectionDiv.style.backgroundImage = `url("${backgroundImage}")`;
        injectionDiv.style.backgroundSize = 'contain';
        injectionDiv.style.backgroundRepeat = 'no-repeat';
        if (backgroundImage == presetBackgroundImage[0]) {
            injectionDiv.style.setProperty("background-color", "#201F52", "important");
        } else injectionDiv.style.setProperty("background-color", "#221D4E", "important");
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
        clear: () => { windowContent.innerHTML = ''; },
        back: (page) => {
            let lastPage = UI.pageHistory.pop();
            if (lastPage == page) lastPage = UI.pageHistory.pop();
            UI.load(lastPage);
        },
        load: (page = UI.home) => {
            UI.clear();
            if (UI.pageHistory && page != UI.home) {
                windowContent.innerHTML = '<li class="menu-item menu-title"><i class="fas fa-circle-chevron-left"></i><span></span></li>';
                setTimeout(() => {
                    const backButton = document.querySelector('#floatWindow > div.window-content > li.menu-title');
                    backButton.ontouchend = (e) => {
                        e.preventDefault();
                        e.stopPropagation();
                        UI.back(page);
                    };
                }, 10)
            }
            windowContent.innerHTML += '<div class="status-info" style="display:none"><span></span></div>';
            UI.pageHistory.push(page);
            page();
        },
        setTitle: (text) => { windowContent.querySelector(".menu-title > span").innerHTML = text; },
        setStatus: (text) => {
            const status = windowContent.querySelector("div.status-info");
            if (!status) return;
            status.style.display = text ? 'block' : 'none';
            status.outerHTML = `<div class="status-info"><span>${text}</span></div>`;
        },
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
        numberInput: (callback, name = '数字', value = 0, defualtValue = 0, width = '100px') => {
            const menuItem = document.createElement('li');
            menuItem.innerHTML = `<label style="margin-right: 10px">${name}</label><input style="width:${width}" type="number" value="${value}""><button>${UI.reset_icon}</button>`;
            menuItem.className = 'menu-input';
            menuItem.querySelector('input').onchange = (e) => {
                callback(Number(e.target.value));
            };
            menuItem.querySelector('button').onclick = (e) => {
                e.preventDefault();
                e.stopPropagation();
                menuItem.querySelector('input').value = defualtValue;
                callback(defualtValue);
            };
            windowContent.appendChild(menuItem);
        },
        textInput: (callback, name = '文本', value = '', defualtValue = [''], width = '100px') => {
            if (!Array.isArray(defualtValue)) defualtValue = [defualtValue];
            const menuItem = document.createElement('li');
            menuItem.innerHTML = `<label style="margin-right: 10px">${name}</label><input style="width:${width}" type="text" value="${value}""><button>${UI.reset_icon}</button>`;
            menuItem.className = 'menu-input';
            menuItem.querySelector('input').onchange = (e) => {
                callback(e.target.value);
            };
            const resetButton = menuItem.querySelector('button');
            resetButton.onclick = (e) => {
                const reset_counter = Number(resetButton.getAttribute('reset_counter')) || 0;
                e.preventDefault();
                e.stopPropagation();
                const value = defualtValue[reset_counter % defualtValue.length];
                menuItem.querySelector('input').value = value;
                callback(value);
                resetButton.setAttribute('reset_counter', reset_counter + 1);
            };
            windowContent.appendChild(menuItem);
        },
        selectInput: (callback, name = '选择', options = [['选项1', '1'], ['选项2', '2']],
            value = '', defualtValue = '', width = '100px') => {
            const valueOption = options.find(option => option[1] == value);
            const menuItem = document.createElement('li');
            menuItem.innerHTML = `<label style="margin-right: 10px">${name}</label>
            <select value=${value} style="width:${width}">${options.map(
                option => `<option value="${option[1]}"${option == valueOption ? ' selected' : ''}>${option[0]}</option>`
            ).join('')}
            </select><button>${UI.reset_icon}</button>`;
            menuItem.className = 'menu-input';
            menuItem.querySelector('select').onchange = (e) => {
                callback(e.target.value);
            };
            menuItem.querySelector('button').onclick = (e) => {
                e.preventDefault();
                e.stopPropagation();
                menuItem.querySelector('select').value = defualtValue;
                callback(defualtValue);
            };
            windowContent.appendChild(menuItem);
        },
    };
    let erudaEnabled = true;
    eruda.init();
    const Page = {
        home: () => {
            UI.setStatus('Version: ' + NemoHookerVersion);
            UI.button(() => {
                UI.load(() => {
                    UI.setStatus('请进行二次确认');
                    UI.button(() => {
                        location.reload();
                    }, '刷新Webview', 'sync-alt');
                });
            }, '刷新Webview', 'sync-alt');
            UI.button(() => {
                if (erudaEnabled) eruda.destroy();
                else eruda.init();
                erudaEnabled = !erudaEnabled;
                UI.load();
            }, (erudaEnabled ? '关闭' : '开启') + 'Eruda', 'screwdriver-wrench');
            UI.button(() => { UI.load(Page.editorConfig) }, '编辑器', 'laptop-code');
            UI.button(() => { UI.load(Page.runtimeConfig) }, 'Runtime', 'cog');
            UI.button(() => { UI.load(Page.experimentalConfig) }, '实验性', 'flask');
        },
        editorConfig: () => {
            UI.setTitle('编辑器设置')
            UI.setStatus('此配置跟随Webview存储');
            UI.textInput((value) => {
                storage.set('backgroundImage', value);
                backgroundImage = value;
            }, '背景', backgroundImage, presetBackgroundImage, '130px');
            UI.button(() => {
                storage.set('cat', !storage.get('cat'))
                if (storage.get('cat')) enableCatBlock();
                else disableCatBlock();
                UI.load(Page.editorConfig);
            }, (storage.get('cat') ? '关闭' : '打开') + '猫块', 'save');
            // UI.selectInput((value) => {
            //     console.log(value);
            // }, '主题', [['默认', 'default'], ['深色', 'dark']], 'dark', 'default');

        },
        runtimeConfig: () => {
            UI.setTitle('Runtime 设置')
            UI.setStatus('此配置跟随Webview存储');
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
            /*{     "块池预分配大小": 50,
                   "优化帧池预分配大小": 10,
                   "优化帧池大小限制": 600,
                   "遗留": {"列表获取值允许返回未定义": false},
                   "每个解释器步骤的最大过程调用次数": 50000,
                   "每个解释器步骤的最大“一步执行”迭代次数": 30000,
                   "“一步执行”毫秒时间限制": 4,
                   "最大调用堆栈大小": 10000,
                   "优化编译器": {         "pretty_print": false     },
                   "每个实体克隆限制": 300,
                   "每个帧的实体最大克隆数": 300,
                   "报告所有实体": true,
                   "应报告当前运行块": false,
                   "用户调试模式": false,
                   "忽略缺失的域函数": false 
              }*/
            let newConfig = get_run_mgr().config.get();
            function save() {
                get_run_mgr().config.set(newConfig);
                storage.set('runtimeConfig', newConfig);
            }
            UI.numberInput((value) => {
                newConfig.per_entity_clone_limit = value;
                save();
            }, '角色克隆限制', newConfig.per_entity_clone_limit, defualtConfig.per_entity_clone_limit, '50px');
            UI.numberInput((value) => {
                newConfig.entity_max_clones_per_frame = value;
                save();
            }, '每帧克隆限制', newConfig.entity_max_clones_per_frame, defualtConfig.per_entity_clone_limit, '50px');
            UI.button(() => {
                newConfig = defualtConfig;
                save();
                UI.load(UI.projectConfig);
            }, '重置', 'sync-alt');
        },
        experimentalConfig() {
            UI.setTitle('实验性功能');
            UI.setStatus('这些功能<del>可能</del>会导致问题。')
            UI.selectInput(
                (value) => { experimentalConfig.disable_repeat_forever_in_warp = value; },
                '禁用一步执行中的死循环', [['开', true], ['关', false]],
                experimentalConfig.disable_repeat_forever_in_warp, false, '60px'
            );
        }
    };
    UI.home = Page.home;
    (function doubleTap() {
        let lastTouchEnd = 0;
        document.addEventListener('touchend', function (event) {
            const now = (new Date()).getTime();
            if (now - lastTouchEnd <= 200) {
                event.preventDefault();
                // 查找被点击的元素是否包含在 #workspace 内
                let targetElement = event.target;
                const workspaceElement = document.querySelector("#workspace > div > svg.blocklySvg");
                if (workspaceElement && workspaceElement.contains(targetElement)) {
                    if (floatBall.classList.contains('hide')) floatBall.classList.remove('hide');
                    else floatBall.classList.add('hide');
                }
                lastTouchEnd = 0;
            } else {
                lastTouchEnd = now;
            }
        }, false);
    })();
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



// ------------------自定义积木------------------------


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
const isBrushHooked = async () => {
    while (!HookBrush) {
        await new Promise((resolve) => requestAnimationFrame(resolve));
    }
    return;
};
const isUtilsHooked = async () => {
    while (!HookUtils) {
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
// ------------------画笔原型注入------------------
(async () => {
    console.log("[NemoHooker::init] 等待画笔原型,Utils获取");
    await isBrushHooked();
    await isUtilsHooked();
    console.log("[NemoHooker::init] 画笔原型注入开始");
    HookBrush.exports.Brush.prototype.put_pixel = function (x, y, r, g, b, a) {
        var ctx = this.ctx;
        if (!ctx) {
            return;
        }
        var _a = this.app.get_app().view, width = _a.width, height = _a.height;
        var center_x = width / 2;
        var center_y = height / 2;

        var imageData = ctx.createImageData(1, 1);
        var data = imageData.data;

        data[0] = r;
        data[1] = g;
        data[2] = b;
        data[3] = a;

        ctx.putImageData(imageData, center_x + x, center_y - y);
        ctx.restore();
        this.actor.parent_scene.should_update_brush();
    };
    HookBrush.exports.Brush.prototype.fill_triangle = function (x0, y0, x1, y1, x2, y2, r, g, b, a) {
        var ctx = this.ctx;
        if (!ctx) {
            return;
        }
        var _a = this.app.get_app().view, width = _a.width, height = _a.height;
        var center_x = width / 2;
        var center_y = height / 2;

        ctx.beginPath();
        ctx.moveTo(center_x + x0, center_y - y0);
        ctx.lineTo(center_x + x1, center_y - y1);
        ctx.lineTo(center_x + x2, center_y - y2);
        ctx.closePath()
        ctx.fillStyle = `rgba(${r}, ${g}, ${b}, ${a})`;
        ctx.fill();

        ctx.restore();
        this.actor.parent_scene.should_update_brush();
    };
    HookBrush.exports.Brush.prototype.draw_image = function (image, x, y, width, height) {
        if (!this.ctx) {
            return;
        }
        var _a = this.app.get_app().view, width2 = _a.width, height2 = _a.height;
        var center_x = width2 / 2;
        var center_y = height2 / 2;
        console.log("draw_image", image, x, y, width, height);
        this.ctx.drawImage(image, center_x + x, center_y - y, width, height);
        this.actor.parent_scene.should_update_brush();
    };
    HookBrush.exports.Brush.prototype.draw_custom_image_stamp = function (url) {
        var ctx = this.ctx;
        if (!ctx) {
            return;
        }
        var actor = this.actor;
        var center_point = HookUtils.exports.get_actor_center(actor, actor.position);
        var rotation = this.actor.rotation;
        var _a = this.app.get_app().view, view_height = _a.height, view_width = _a.width;

        ctx.translate(center_point.x + view_width / 2, center_point.y + view_height / 2);
        ctx.rotate(rotation);
        ctx.scale(actor.scale.x < 0 ? -1 : 1, actor.scale.y < 0 ? -1 : 1);
        const source = new Image(100, 200);

        source.onload = function () {
            ctx.save();
            ctx.drawImage(source, Math.floor(-actor.width / 2), Math.floor(-actor.height / 2), Math.floor(actor.width), Math.floor(actor.height));
            ctx.restore();
            actor.parent_scene.should_update_brush();
        };

        source.src = url;

    };
    HookBrush.exports.Brush.prototype.better_draw_text_stamp = function (text, style, weight, size, font, align, base_line, rotation) {
        var ctx = this.ctx;
        if (!ctx) {
            return;
        }
        var _a = this.app.get_app().stage
            .toGlobal(this.actor.position), x = _a.x, y = _a.y;
        var stamp_rotation = rotation !== undefined ? rotation : this.actor.rotation;
        ctx.save();
        ctx.font = style + ' ' + weight + ' ' + size + "px " + font + ", Arial, 'Microsoft YaHei'";
        ctx.fillStyle = "#" + this.stroke_color;
        ctx.globalAlpha = this.alpha;
        ctx.textBaseline = base_line;
        ctx.textAlign = align;
        ctx.translate(x, y);
        ctx.rotate(stamp_rotation);
        ctx.fillText(text, 0, 0);
        ctx.restore();
        this.actor.parent_scene.should_update_brush();
    };
    HookBrush.exports.Brush.prototype.rectangle_clear = function (x, y, width, height) {
        var ctx = this.ctx;
        if (!ctx) {
            return;
        }
        var _a = this.app.get_app().view, width2 = _a.width, height2 = _a.height;
        var center_x = width2 / 2;
        var center_y = height2 / 2;

        ctx.clearRect(center_x + x, center_y - y, width, height);
        ctx.restore();
        this.actor.parent_scene.should_update_brush();
    };
    HookBrush.exports.Brush.prototype.draw_svg = function (svg) {
        var ctx = this.ctx;
        if (!ctx) {
            return;
        }
        var actor = this.actor;
        var center_point = HookUtils.exports.get_actor_center(actor, actor.position);
        var rotation = this.actor.rotation;
        var _a = this.app.get_app().view, view_height = _a.height, view_width = _a.width;

        ctx.translate(center_point.x + view_width / 2, center_point.y + view_height / 2);
        ctx.rotate(rotation);
        ctx.scale(actor.scale.x < 0 ? -1 : 1, actor.scale.y < 0 ? -1 : 1);
        const source = new Image(100, 200);

        var svgString = svg;
        var svgURL = 'data:image/svg+xml;base64,' + btoa(svgString);

        source.onload = function () {
            ctx.save();
            ctx.drawImage(source, Math.floor(-actor.width / 2), Math.floor(-actor.height / 2), Math.floor(actor.width), Math.floor(actor.height));
            ctx.restore();
            actor.parent_scene.should_update_brush();
        };
        source.src = svgURL;
    }

    console.log("[NemoHooker::init] 画笔原型注入完成");
})();
// ------------------Scene原型注入------------------
(async () => {
    console.log("[NemoHooker::init] 等待Scene原型获取");
    const Scene = (await waitHook("Scene")).Scene;
    console.log("[NemoHooker::init] Scene原型注入开始");
    HookScene.exports.Scene.prototype.get_brush_gl = function () {
        if (!this.brush_gl) {
            this.brush_gl = this.brush_canvas.getContext('webgl2');
        }
        return this.brush_gl;
    }
    console.log("[NemoHooker::init] Scene原型注入完成");
})();
// --------------------积木注入----------------
(async () => {
    console.log("[NemoHooker::init] 等待Blockly加载");
    await isBlocklyLoaded();
    // --------------------变形器----------------
    /*Blockly.extensions.register_mutator("nemohooker_on_key_event_mutator", {
        itemCount_: 0,
        mutationToDom: function () {
            const e = document.createElement("mutation");
            return e.setAttribute("items", String(this.itemCount_)), e;
        },
        domToMutation: function (t) {
            var n = parseInt(t.getAttribute("items") || "0");
            if (0 === n) {
                var r = this.append_math_shadow("param", 2)
                    , i = '<block type="nemohooker_on_key_event_param_copy"></block>';
                this.append_block_input(i, r),
                    this.itemCount_++
            } else
                this.append_math_shadow("param", 2),
                    this.itemCount_ = Number(n)
        }
    })*/
    console.log("[NemoHooker::init] 等待Workspace加载");
    await isBlocklyMainworkspaceLoaded();
    console.log("[NemoHooker::init] 积木注入开始");
    Blockly.mainWorkspace.add_change_listener(() => {
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
    })
    const BLOCK_COLOR = "%{BKY_GREEN_5}";
    const Color = {
        video: '%{BKY_VIDEO_HUE}'
    }
    const method_block = {
        previousStatement: true,
        nextStatement: true,
        inputsInline: true
    }
    const green_on_start_icon = {
        "type": "field_icon",
        "is_head": true,
        "src": 'data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzNiIgaGVpZ2h0PSIzNiIgdmlld0JveD0iMCAwIDM2IDM2Ij48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPjxwYXRoIGQ9Ik0xOCAzNmM5Ljk0MSAwIDE4LTguMDU5IDE4LTE4UzI3Ljk0MSAwIDE4IDAgMCA4LjA1OSAwIDE4czguMDU5IDE4IDE4IDE4eiIgZmlsbD0iIzE0QjM5MCIvPjxwYXRoIGQ9Ik0xOCAzNWM5LjM4OSAwIDE3LTcuNjExIDE3LTE3UzI3LjM4OSAxIDE4IDEgMSA4LjYxMSAxIDE4czcuNjExIDE3IDE3IDE3eiIgZmlsbD0iI0ZGRiIvPjxwYXRoIGQ9Ik0yNS41NiAxNi40NTdjMS45MTUgMS4xMyAxLjkyNSAyLjk1NCAwIDQuMDlsLTEwLjA5NCA1Ljk1N0MxMy41NTIgMjcuNjM0IDEyIDI2Ljc2NiAxMiAyNC41OFYxMi40MjRjMC0yLjE5MiAxLjU0MS0zLjA2IDMuNDY2LTEuOTI0bDEwLjA5NCA1Ljk1N3oiIGZpbGw9IiMxNEIzOTAiLz48L2c+PC9zdmc+',
        "width": 38,
        "height": 38,
        "alt": "*"
    }
    const ANY_TYPE = ["Number", "String", "Boolean", "Array"]
    /*Blockly.define_block_with_object('nemohooker_on_key_event_param_copy', {
        init: function () {
            var thisBlock = this;
            this.append_dummy_input().append_field('可复制参数', "TEXT");
            this.set_output(true);
            this.set_inputs_inline(true);
            this.set_colour(Blockly.theme.block_color.GREEN_5.fill, Blockly.theme.block_color.GREEN_5.border);
            const n = Blockly.di_container.get(HookDi.exports.BINDING.FieldLabelSerializable);
            const r = Blockly.di_container.get(HookDi.exports.BINDING.CreateEvent);
            const __IS_PC__ = false;
            this.on_mouse_down = function (n) {
                var i = Blockly.events.get_group();
                if (Blockly.events.set_group(i || true),
                    __IS_PC__ && 0 !== n.button)
                    return n.preventDefault(),
                        void n.stopPropagation();
                var a = thisBlock.workspace.get_gesture(n);
                if (a) {
                    var o = a.handle_move.bind(a)
                        , s = a.handle_up.bind(a)
                        , c = 0
                    a.handle_move = function (i) {
                        if (a.is_dragging_block = true,
                            true || __IS_PC__) {
                            var s = function () {
                                Blockly.events.disable();
                                var n = thisBlock.get_field_value("TEXT") || ""
                                    , i = thisBlock.workspace.new_block('nemohooker_on_key_event_param')
                                    , a = thisBlock.get_relative_to_surface_xy();
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
                                a.target_block = s
                        } else
                            a.cancel()
                    }
                        ,
                        a.handle_up = function (t) {
                            s(t),
                                Blockly.events.set_group(i)
                        }
                }
            }
        }
    })*/
    // 定义自定义代码块对象数组
    const blockObjects = [
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
        {
            type: "nemohooker_on_key_event",
            message0: "%1 当 按键事件",
            args0: [green_on_start_icon],
            nextStatement: true,
            colour: BLOCK_COLOR,
            inputsInline: true
        },
        {
            type: "nemohooker_on_key_event_param",
            message0: "按下的键KEY",
            args0: [],
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
                        [
                            "Math.sin",
                            "SIN"
                        ],
                        [
                            "Math.cos",
                            "COS"
                        ],
                        [
                            "Math.tan",
                            "TAN"
                        ],
                        [
                            "Math.asin",
                            "ASIN"
                        ],
                        [
                            "Math.acos",
                            "ACOS"
                        ],
                        [
                            "Math.atan",
                            "ATAN"
                        ]
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
            message0: "网络图像印章 %1",
            args0: [{ "type": "input_value", "name": "src", "check": "String" }],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_draw_video_stamp",
            message0: "视频印章 %1 x %2 y %3 缩放 %4",
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
            message0: "放置像素 x %1 y %2 颜色 r %3 g %4 b %5 a %6",
            args0: [
                { "type": "input_value", "name": "x", "check": "Number" },
                { "type": "input_value", "name": "y", "check": "Number" },
                { "type": "input_value", "name": "r", "check": "Number" },
                { "type": "input_value", "name": "g", "check": "Number" },
                { "type": "input_value", "name": "b", "check": "Number" },
                { "type": "input_value", "name": "a", "check": "Number" }
            ],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_fill_triangle",
            message0: "绘制三角形 坐标 %1 %2 %3 %4 %5 %6 RGBA %7 %8 %9 %10",
            args0: [
                { "type": "input_value", "name": "x0", "check": "Number" },
                { "type": "input_value", "name": "y0", "check": "Number" },
                { "type": "input_value", "name": "x1", "check": "Number" },
                { "type": "input_value", "name": "y1", "check": "Number" },
                { "type": "input_value", "name": "x2", "check": "Number" },
                { "type": "input_value", "name": "y2", "check": "Number" },
                { "type": "input_value", "name": "r", "check": "Number" },
                { "type": "input_value", "name": "g", "check": "Number" },
                { "type": "input_value", "name": "b", "check": "Number" },
                { "type": "input_value", "name": "a", "check": "Number" }
            ],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        },
        {
            type: "nemohooker_better_draw_text_stamp",
            message0: "样式文字印章 文本 %1 %2 粗细 %3 大小 %4 字体 %5 对齐方式 %6 %7",
            // 文本 样式 粗细 大小 字体 水平 垂直
            args0: [
                { "type": "input_value", "name": "text", "check": ["String", "Number"] },
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
            message0: "绘制矢量图 %1",
            args0: [
                { "type": "input_value", "name": "svg", "check": "String" }
            ],
            colour: "%{BKY_PEN_HUE}",
            ...method_block
        }
    ];

    // 使用JSON数组定义Blockly代码块
    Blockly.define_blocks_with_json_array(blockObjects);

    (function regToolboxIcon() {
        document.querySelector("#__SVG_SPRITE_NODE__").insertAdjacentHTML('beforeend', '<symbol id="icon-feature" viewBox="-1100 -1050 3200 3200"><path d="M484.352 199.918933a55.296 55.296 0 0 1 50.517333-2.4576l4.778667 2.4576 228.795733 132.096c15.5648 8.977067 25.668267 24.8832 27.409067 42.530134l0.238933 5.358933v264.192a55.296 55.296 0 0 1-23.1424 44.987733l-4.5056 2.901334-228.795733 132.096a55.296 55.296 0 0 1-50.517333 2.4576l-4.778667-2.4576-228.795733-132.096a55.296 55.296 0 0 1-27.409067-42.530134l-0.238933-5.358933v-264.192c0-17.954133 8.704-34.679467 23.1424-44.987733l4.5056-2.901334 228.795733-132.096z m27.648 54.954667l-222.651733 128.580267v257.092266L512 769.092267l222.651733-128.546134v-257.092266L512 254.907733z m120.900267 147.319467a30.72 30.72 0 0 1 2.628266 40.311466l-2.730666 3.140267-88.507734 87.9616v102.570667a30.72 30.72 0 0 1-61.201066 3.857066l-0.238934-3.857066v-101.5808l-88.576-89.088a30.72 30.72 0 0 1 40.413867-46.08l3.140267 2.7648 75.298133 75.741866 76.322133-75.844266a30.72 30.72 0 0 1 43.451734 0.1024z"></path></symbol>');
        document.querySelector("#__SVG_SPRITE_NODE__").insertAdjacentHTML('beforeend', '<symbol id="icon-widget-http-client" viewBox="-2000 -2000 5000 5000"><path d="M512 98.133333c143.914667 0 266.837333 99.882667 301.653333 237.781334l2.56 10.965333 9.301334 2.730667c105.6 33.450667 181.12 131.669333 185.472 246.528l0.213333 10.496c0 145.237333-113.066667 263.808-254.848 268.970666l-9.685333 0.213334-164.352-0.042667 40.746666 42.154667a29.866667 29.866667 0 0 1 2.517334 38.570666l-3.242667 3.626667a29.866667 29.866667 0 0 1-38.570667 2.517333l-3.626666-3.242666-89.6-92.714667a29.866667 29.866667 0 0 1-2.901334-37.973333l3.029334-3.712 89.6-91.306667a29.866667 29.866667 0 0 1 45.781333 38.058667l-3.114667 3.754666-39.850666 40.533334H746.666667c112.981333 0 204.8-93.610667 204.8-209.408 0-98.005333-66.261333-181.845333-157.525334-203.818667l-9.216-2.005333-20.778666-3.968-3.114667-20.906667C742.144 251.050667 636.586667 157.866667 512 157.866667c-135.722667 0-246.613333 109.909333-251.605333 246.357333l-0.085334 10.88 1.28 27.946667-27.776 3.114666c-91.306667 10.24-161.28 89.472-161.28 184.405334 0 99.541333 76.586667 180.608 172.544 185.301333l8.789334 0.213333h23.466666a29.866667 29.866667 0 0 1 4.053334 59.434667l-4.053334 0.298667h-23.466666C120.576 875.818667 12.8 765.866667 12.8 630.570667c0-115.072 78.293333-212.949333 185.344-238.677334l3.285333-0.768 0.597334-7.082666c15.018667-156.970667 142.549333-280.533333 299.690666-285.738667L512 98.133333z m55.978667 374.912c13.269333 0 23.253333 0.853333 30.72 2.133334 10.794667 1.706667 19.925333 5.632 28.202666 11.221333 7.893333 5.589333 14.506667 13.781333 19.114667 23.68 4.949333 10.325333 7.04 21.546667 6.613333 32.298667 0 19.84-6.229333 37.077333-18.645333 50.432-12.458667 14.208-33.237333 21.077333-63.914667 21.077333h-35.285333v78.421333l-49.792 0.426667v-219.733333h82.986667z m145.237333 0v219.690667H663.04v-219.733333h50.218667z m-319.957333 0l86.741333 219.690667H423.978667l-21.973334-58.581333H342.186667l-20.352 58.581333H267.946667l81.322666-219.733333h43.989334z m-21.546667 76.672l-12.885333 37.034667h26.154666l-12.885333-35.754667-0.426667-1.28z m198.357333-27.562666h-34.858666v42.666666h35.242666c16.64 0 22.826667-3.925333 25.344-6.058666 3.712-3.413333 5.802667-9.045333 5.802667-15.957334a22.613333 22.613333 0 0 0-3.328-12.928 16.981333 16.981333 0 0 0-8.704-6.4c-1.28-0.469333-5.418667-1.322667-19.498667-1.322666z"></path></symbol>');
    })();
    const str2xml = function (str) {
        const parser = new DOMParser();
        const doc = parser.parseFromString(str, "text/xml");
        return doc.firstChild;
    };
    const u = {
        title: (text) => `<label text="${text}" type="normal" gap="24" web-class="flyout-toolbox-title" vertical_padding="0"></label>`,
        block: (type, ...values) => `<block type="${type}">${values.join('')}</block>`,
        line: (text, height = 25) => `<label type="flyout_line" height="${height}" text="${text}"/>`,
        flyout_bottom: (width = 130, height = 16) => `<label type="flyout_bottom" align="center" width="${width}" height="${height}"></label>`,
        numValue: (name, value) => `<value name="${name}"><shadow type="math_number"><field name="NUM">${value}</field></shadow></value>`,
        textValue: (name, value) => `<value name="${name}"><shadow type="text"><field name="TEXT">${value}</field></shadow></value>`,
        optionValue: (value) => `<field name="OP">${value}</field>`
    }

    // 定义NemoHooker积木盒
    const nemohookerXML = [
        u.title('BetterNemo 扩展积木'),
        u.block('nemohooker_create_video', u.textValue('id', 'example'), u.textValue('src', 'https://static.codemao.cn/coco/course/lesson1.mp4')),
        u.block('nemohooker_play_video', u.textValue('id', 'example')),
        u.block('nemohooker_pause_video', u.textValue('id', 'example')),
        u.block('nemohooker_set_video_current_time', u.textValue('id', 'example'), u.numValue('time', 10)),
        u.block('nemohooker_on_key_event'),
        u.block('nemohooker_on_key_event_param'),
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
        u.block('nemohooker_array_length', u.textValue('arr', '[1, 2, 3]'))
    ];
    function regToolbox(name, icon, color, blocks) {
        const toolboxObject = {
            color,
            name,
            icon: { font_id: icon },
            blocks: blocks.map(block => str2xml(block)),
        };
        const toolbox = Blockly.mainWorkspace.get_toolbox();
        toolbox.add(toolbox.new_node(toolboxObject));
    }
    setTimeout(() => {
        // 注册网络积木盒
        regToolbox('network', 'icon-widget-http-client', '#54c0ff', networkXML);
        // 注册扩展积木盒
        regToolbox('nemohooker', 'icon-feature', '#54c0ff', nemohookerXML);
        // 画笔扩展
        Blockly.mainWorkspace.toolbox_.children_[5].blocks.pop();
        Blockly.mainWorkspace.toolbox_.children_[5].blocks = Blockly.mainWorkspace.toolbox_.children_[5].blocks.concat([
            u.line('Better Nemo 扩展积木'),
            u.block('nemohooker_draw_image_stamp'),
            u.block('nemohooker_draw_custom_image_stamp', u.textValue('src', 'https://www.runoob.com/try/demo_source/smiley-2.gif')),
            u.block('nemohooker_draw_video_stamp', u.textValue('id', 'example'), u.numValue('x', 0), u.numValue('y', 0), u.numValue('scale', 1)),
            u.block('nemohooker_draw_svg', u.textValue('svg', '')),
            u.block('nemohooker_rectangle_clear', u.numValue('x', 0), u.numValue('y', 0), u.numValue('width', 100), u.numValue('height', 100)),
            u.block('nemohooker_better_draw_text_stamp', u.textValue('text', ''), u.optionValue('normal'), u.textValue('weight', 'bold'), u.numValue('size', 24), u.textValue('font', 'Arial'), u.optionValue('center'), u.optionValue('middle')),
            u.block('nemohooker_put_pixel', u.numValue('x', 0), u.numValue('y', 0), u.numValue('r', 0), u.numValue('g', 0), u.numValue('b', 0), u.numValue('a', 255)),
            u.block('nemohooker_fill_triangle', u.numValue('x0', 0), u.numValue('y0', 0), u.numValue('x1', 0), u.numValue('y1', 0), u.numValue('x2', 0), u.numValue('y2', 0), u.numValue('r', 0), u.numValue('g', 0), u.numValue('b', 0), u.numValue('a', 255)),
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
    console.log("[NemoHooker::init] 积木注入完成");
})();
(async () => {
    console.log("[NemoHooker::init] 等待Runtime,RunMgr获取");
    await isRunmgrHooked();
    const Runtime = (await waitHook('Runtime')).get_webview_runtime();
    console.log("[NemoHooker::init] Runtime,RunMgr获取成功");
    if (storage.get('runtimeConfig'))
        get_run_mgr().config.set(storage.get('runtimeConfig'));

    setInterval(() => {
        if (!Runtime.heart.heart.get_runtime_data().is_running())
            document.querySelectorAll('.custom-video').forEach(e => e.remove());
    }, 100);
    // 注册域函数的工具函数
    function regDomainFunction(name, func) {
        const registry = get_run_mgr().registry;
        registry.domain_function[name] = func;
        registry.domain_function_list.push(func);
        registry.domain_function_index[name] = registry.domain_function_types.push(name) - 1;
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
    function typeOf(value) {
        return Object.prototype.toString.call(value).substring(8, Object.prototype.toString.call(value).length - 1);
    }
    // 注册自定义代码块的执行函数
    regDomainFunction("nemohooker_eval", (params, uuid, uuid2, utils) => {
        eval(String(params.js));
    });
    regDomainFunction("nemohooker_on_key_event", () => { });
    regAction({
        id: "nemohooker_on_key_event",
        entity_specific: false,
        responder_blocks: [
            {
                id: "nemohooker_on_key_event",
                type: "action",
                async: false,
            },
        ],
    });
    document.addEventListener("keydown", function (event) {
        Runtime.send_action({
            id: "nemohooker_on_key_event",
            namespace: "",
            parameters: {
                key: event.key
            },
        });
    });
    regDomainFunction(
        "nemohooker_on_key_event_param",
        (params, rbid, entity_id, utils) => {
            const action_parameters =
                utils.runtime_manager.interpreters[
                    Object.keys(utils.runtime_manager.interpreters)[0]
                ].action_parameters;
            if (action_parameters && action_parameters.key) {
                return action_parameters["key"];
            }
            console.warn("error no action_parameters", action_parameters);
            return "[ERROR_NOT_IN_ACTION]";
        }
    );
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
    regDomainFunction("nemohooker_alert", (params, rbid, entity_id, internals) => {
        alert(params.param);
    });
    regDomainFunction("nemohooker_prompt", (params, rbid, entity_id, internals) => {
        return prompt(params.param);
    });
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
    // --------------画笔扩展-------------------
    function get_stage_target(target_id) {
        const stage = HookRuntime.exports.get_webview_runtime().stage;
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
        actor.get_brush().draw_image_stamp();
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
        const r = parseFloat(params.r);
        const g = parseFloat(params.g);
        const b = parseFloat(params.b);
        const a = parseFloat(params.a);
        actor.get_brush().put_pixel(x, y, r, g, b, a);
    });
    regDomainFunction("nemohooker_fill_triangle", (params, uuid, uuid2, utils) => {
        var actor = get_stage_target(uuid2);
        if (!actor) return;
        const x0 = parseFloat(params.x0);
        const y0 = parseFloat(params.y0);
        const x1 = parseFloat(params.x1);
        const y1 = parseFloat(params.y1);
        const x2 = parseFloat(params.x2);
        const y2 = parseFloat(params.y2);
        const r = parseFloat(params.r);
        const g = parseFloat(params.g);
        const b = parseFloat(params.b);
        const a = parseFloat(params.a);
        actor.get_brush().fill_triangle(x0, y0, x1, y1, x2, y2, r, g, b, a);
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

        actor.get_brush().better_draw_text_stamp(text, style, weight, size, font, align, base_line);
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

    console.log("[NemoHooker::init] 解释器注入完成");
})();