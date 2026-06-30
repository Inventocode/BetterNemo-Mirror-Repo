// ==UserScript==
// @name         CUELoader
// @namespace    http://tampermonkey.net/
// @version      0.0.1
// @description  我去，啥鱼没写介绍
// @author       Inventocode
// @match        https://kitten.codemao.cn*
// @match        https://kitten4.codemao.cn*
// @match        https://kn.codemao.cn/editor*
// @match        https://player.codemao.cn/old/*
// @match        https://player.codemao.cn/new/*
// @match        https://kn.codemao.cn/player*
// @grant        none
// ==/UserScript==

// js-base64
!function (t, n) { var r, e; "object" == typeof exports && "undefined" != typeof module ? module.exports = n() : "function" == typeof define && define.amd ? define(n) : (r = t.Base64, (e = n()).noConflict = function () { return t.Base64 = r, e; }, t.Meteor && (Base64 = e), t.Base64 = e); }("undefined" != typeof self ? self : "undefined" != typeof window ? window : "undefined" != typeof global ? global : this, (function () { "use strict"; var t, n = "3.7.8", r = n, e = "function" == typeof Buffer, o = "function" == typeof TextDecoder ? new TextDecoder : void 0, u = "function" == typeof TextEncoder ? new TextEncoder : void 0, i = Array.prototype.slice.call("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="), f = (t = {}, i.forEach((function (n, r) { return t[n] = r; })), t), c = /^(?:[A-Za-z\d+\/]{4})*?(?:[A-Za-z\d+\/]{2}(?:==)?|[A-Za-z\d+\/]{3}=?)?$/, a = String.fromCharCode.bind(String), d = "function" == typeof Uint8Array.from ? Uint8Array.from.bind(Uint8Array) : function (t) { return new Uint8Array(Array.prototype.slice.call(t, 0)); }, s = function (t) { return t.replace(/=/g, "").replace(/[+\/]/g, (function (t) { return "+" == t ? "-" : "_"; })); }, l = function (t) { return t.replace(/[^A-Za-z0-9\+\/]/g, ""); }, h = function (t) { for (var n, r, e, o, u = "", f = t.length % 3, c = 0; c < t.length;) { if ((r = t.charCodeAt(c++)) > 255 || (e = t.charCodeAt(c++)) > 255 || (o = t.charCodeAt(c++)) > 255) throw new TypeError("invalid character found"); u += i[(n = r << 16 | e << 8 | o) >> 18 & 63] + i[n >> 12 & 63] + i[n >> 6 & 63] + i[63 & n]; } return f ? u.slice(0, f - 3) + "===".substring(f) : u; }, p = "function" == typeof btoa ? function (t) { return btoa(t); } : e ? function (t) { return Buffer.from(t, "binary").toString("base64"); } : h, y = e ? function (t) { return Buffer.from(t).toString("base64"); } : function (t) { for (var n = [], r = 0, e = t.length; r < e; r += 4096)n.push(a.apply(null, t.subarray(r, r + 4096))); return p(n.join("")); }, A = function (t, n) { return void 0 === n && (n = !1), n ? s(y(t)) : y(t); }, b = function (t) { if (t.length < 2) return (n = t.charCodeAt(0)) < 128 ? t : n < 2048 ? a(192 | n >>> 6) + a(128 | 63 & n) : a(224 | n >>> 12 & 15) + a(128 | n >>> 6 & 63) + a(128 | 63 & n); var n = 65536 + 1024 * (t.charCodeAt(0) - 55296) + (t.charCodeAt(1) - 56320); return a(240 | n >>> 18 & 7) + a(128 | n >>> 12 & 63) + a(128 | n >>> 6 & 63) + a(128 | 63 & n); }, g = /[\uD800-\uDBFF][\uDC00-\uDFFFF]|[^\x00-\x7F]/g, B = function (t) { return t.replace(g, b); }, x = e ? function (t) { return Buffer.from(t, "utf8").toString("base64"); } : u ? function (t) { return y(u.encode(t)); } : function (t) { return p(B(t)); }, C = function (t, n) { return void 0 === n && (n = !1), n ? s(x(t)) : x(t); }, m = function (t) { return C(t, !0); }, v = /[\xC0-\xDF][\x80-\xBF]|[\xE0-\xEF][\x80-\xBF]{2}|[\xF0-\xF7][\x80-\xBF]{3}/g, U = function (t) { switch (t.length) { case 4: var n = ((7 & t.charCodeAt(0)) << 18 | (63 & t.charCodeAt(1)) << 12 | (63 & t.charCodeAt(2)) << 6 | 63 & t.charCodeAt(3)) - 65536; return a(55296 + (n >>> 10)) + a(56320 + (1023 & n)); case 3: return a((15 & t.charCodeAt(0)) << 12 | (63 & t.charCodeAt(1)) << 6 | 63 & t.charCodeAt(2)); default: return a((31 & t.charCodeAt(0)) << 6 | 63 & t.charCodeAt(1)); } }, F = function (t) { return t.replace(v, U); }, w = function (t) { if (t = t.replace(/\s+/g, ""), !c.test(t)) throw new TypeError("malformed base64."); var n, r, e; t += "==".slice(2 - (3 & t.length)); for (var o = [], u = 0; u < t.length;)n = f[t.charAt(u++)] << 18 | f[t.charAt(u++)] << 12 | (r = f[t.charAt(u++)]) << 6 | (e = f[t.charAt(u++)]), 64 === r ? o.push(a(n >> 16 & 255)) : 64 === e ? o.push(a(n >> 16 & 255, n >> 8 & 255)) : o.push(a(n >> 16 & 255, n >> 8 & 255, 255 & n)); return o.join(""); }, S = "function" == typeof atob ? function (t) { return atob(l(t)); } : e ? function (t) { return Buffer.from(t, "base64").toString("binary"); } : w, E = e ? function (t) { return d(Buffer.from(t, "base64")); } : function (t) { return d(S(t).split("").map((function (t) { return t.charCodeAt(0); }))); }, D = function (t) { return E(j(t)); }, R = e ? function (t) { return Buffer.from(t, "base64").toString("utf8"); } : o ? function (t) { return o.decode(E(t)); } : function (t) { return F(S(t)); }, j = function (t) { return l(t.replace(/[-_]/g, (function (t) { return "-" == t ? "+" : "/"; }))); }, z = function (t) { return R(j(t)); }, T = function (t) { return { value: t, enumerable: !1, writable: !0, configurable: !0 }; }, Z = function () { var t = function (t, n) { return Object.defineProperty(String.prototype, t, T(n)); }; t("fromBase64", (function () { return z(this); })), t("toBase64", (function (t) { return C(this, t); })), t("toBase64URI", (function () { return C(this, !0); })), t("toBase64URL", (function () { return C(this, !0); })), t("toUint8Array", (function () { return D(this); })); }, I = function () { var t = function (t, n) { return Object.defineProperty(Uint8Array.prototype, t, T(n)); }; t("toBase64", (function (t) { return A(this, t); })), t("toBase64URI", (function () { return A(this, !0); })), t("toBase64URL", (function () { return A(this, !0); })); }, O = { version: n, VERSION: r, atob: S, atobPolyfill: w, btoa: p, btoaPolyfill: h, fromBase64: z, toBase64: C, encode: C, encodeURI: m, encodeURL: m, utob: B, btou: F, decode: z, isValid: function (t) { if ("string" != typeof t) return !1; var n = t.replace(/\s+/g, "").replace(/={0,2}$/, ""); return !/[^\s0-9a-zA-Z\+/]/.test(n) || !/[^\s0-9a-zA-Z\-_]/.test(n); }, fromUint8Array: A, toUint8Array: D, extendString: Z, extendUint8Array: I, extendBuiltins: function () { Z(), I(); }, Base64: {} }; return Object.keys(O).forEach((function (t) { return O.Base64[t] = O[t]; })), O; }));

/**
 * CUELoader - 编程猫通用扩展加载器
 */

(function () {

    'use strict';

    /** 脚本名称 */
    const SCRIPT_NAME = 'CUELoader';

    // ==================== 全局变量 ====================

    /**
     * 环境
     * @type {'kitten'| 'kitten-p' | 'kitten4' | 'kitten4-p' | 'kn' | 'kn-p' | 'bn'}
     */
    let env = window.location.host.split('.')[0];
    // BN
    try { if (BetterNemoVersion) env = 'bn'; } catch (e) { }
    // KN Player
    if (env === 'kn' && window.location.pathname.startsWith('/player')) env = 'kn-p';

    /** webpack require 函数引用 */
    let webpackReq;

    /** heart 核心对象引用 */
    let heart;

    /** 记录已加载的扩展类型 */
    log('env', env);
    const extTypes = {};

    // ==================== 工具函数 ====================


    /**
     * 输出普通日志
     * @param {...any} args - 要输出的参数
     */
    function log(...args) {
        console.log(`[${SCRIPT_NAME}]`, ...args);
    }

    /**
     * 输出错误日志
     * @param {...any} args - 要输出的参数
     */
    function error(...args) {
        console.error(`[${SCRIPT_NAME}]`, ...args);
    }
    function isPlayer() {
        return env.endsWith('-p');
    }
    /**
     * 将 XML 字符串解析为 DOM 节点
     * @param {string} text - XML 字符串
     * @returns {Node} 解析后的第一个子节点
     */
    function textToXml(text) {
        return (new DOMParser().parseFromString(text, 'text/xml')).childNodes[0];
    }

    /**
     * 判断值是否为对象类型（非 null）
     * @param {any} value - 要检查的值
     * @returns {boolean} 是否为对象
     */
    function isRecord(value) {
        return typeof value === "object" && value !== null;
    }

    /**
     * 将 HEX 颜色转换为 RGB 对象
     * @param {string} hex - HEX 颜色值（如 #FF0000 或 FF0000）
     * @returns {{r: number, g: number, b: number}} RGB 对象
     */
    function hexToRgb(hex) {
        hex = hex.replace('#', '');
        if (hex.length === 3) {
            hex = hex.split('').map(c => c + c).join('');
        }
        return {
            r: parseInt(hex.substr(0, 2), 16),
            g: parseInt(hex.substr(2, 2), 16),
            b: parseInt(hex.substr(4, 2), 16)
        };
    }

    /**
     * 将 RGB 对象转换为 HEX 颜色
     * @param {{r: number, g: number, b: number}} rgb - RGB 对象
     * @returns {string} HEX 颜色值
     */
    function rgbToHex(rgb) {
        const toHex = (c) => {
            const hex = Math.max(0, Math.min(255, Math.round(c))).toString(16);
            return hex.length === 1 ? '0' + hex : hex;
        };
        return '#' + toHex(rgb.r) + toHex(rgb.g) + toHex(rgb.b);
    }

    /**
     * 让 HEX 颜色变暗
     * @param {string} hex - 原始 HEX 颜色值
     * @param {number} [darkenPercent=20] - 变暗百分比（0-100），默认 20%
     * @returns {string} 变暗后的 HEX 颜色值
     * @example
     * darkenColor('#608FEE', 20) // 返回变暗 20% 的颜色
     * darkenColor('#608FEE')     // 返回变暗 20% 的颜色（使用默认值）
     */
    function darkenColor(hex, darkenPercent = 20) {
        const rgb = hexToRgb(hex);
        const factor = 1 - (darkenPercent / 100);

        return rgbToHex({
            r: rgb.r * factor,
            g: rgb.g * factor,
            b: rgb.b * factor
        });
    }

    /**
     * 动态添加 CSS 样式到页面
     * @param {string} style - CSS 样式字符串
     */
    function addStyle(style) {
        if (document.getElementById(SCRIPT_NAME + '-style')) {
            const styleElement = document.getElementById(SCRIPT_NAME + '-style');
            styleElement.textContent += style;
        }
        else {
            const styleElement = document.createElement('style');
            styleElement.textContent = style;
            styleElement.id = SCRIPT_NAME + '-style';
            document.head.appendChild(styleElement);
        }
    }
    class Storage {
        constructor(namespace) { this.namespace = namespace; this.storage = this.getAll() || {}; }
        getAll() {
            const data = localStorage.getItem(this.namespace);
            try {
                return data ? JSON.parse(data) : {};
            } catch (error) {
                console.error('解析存储数据失败:', error);
                return {};
            }
        }
        save(data) { localStorage.setItem(this.namespace, JSON.stringify(data)); }
        get(id) { if (!this.storage[id]) return null; return this.storage[id]; }
        set(id, value) { this.storage[id] = value; this.save(this.storage); }
        remove(id) { delete this.storage[id]; this.save(this.storage); }
        clear() { this.storage = {}; localStorage.removeItem(this.namespace); }
    }
    const storage = new Storage(SCRIPT_NAME);
    async function KnNewToast(text, icon = '', timeoutOrConfirmText = 3000, confirmCallback = null) {
        if (!['kn', 'kn-p'].includes(env)) return;
        let confirmText = null, timeout = -1;
        if (typeof timeoutOrConfirmText === 'string')
            confirmText = timeoutOrConfirmText;
        if (typeof timeoutOrConfirmText === 'number')
            timeout = timeoutOrConfirmText;
        const id = Math.random().toString(36).substring(7);
        if (!document.querySelector('div > div.ant-message > div'))
            document.body.insertAdjacentHTML('afterbegin', `<div><div class="ant-message"><div></div></div></div>`);

        const container = document.querySelector('div > div.ant-message > div');
        container.insertAdjacentHTML('beforeend', `<div class="${SCRIPT_NAME}_${id} ant-message" style="position:static;"><div><div><div class="ant-message-notice Toast_toastPcWrapper__G3ndh"><div class="ant-message-notice-content"><div class="ant-message-custom-content"><i class="IconFont_wrapper__FPeRA Toast_icon__WIkl9"><svg width="1em" height="1em" fill="currentColor" aria-hidden="true" focusable="false"><use xlink:href="#${icon}"></use></svg></i><span>${text}${confirmText && confirmCallback ? `　<a>${confirmText}</a>` : ''}</span></div></div></div></div></div></div>`);
        const message = container.querySelector(`div.${SCRIPT_NAME}_${id}.ant-message`);
        if (timeout !== -1)
            setTimeout(() => {
                message.remove();
            }, timeout);
        if (confirmText && confirmCallback)
            message.querySelector('a').addEventListener('click', () => {
                confirmCallback();
                message.remove();
            });
    }
    // ==================== 异步等待辅助函数 ====================

    /**
     * 等待 Blockly 对象加载完成
     * @returns {Promise<Object>} Blockly 对象
     */
    async function getBlockly() {
        while (!window.Blockly) await new Promise((resolve) => requestAnimationFrame(resolve));
        return window.Blockly;
    }

    /**
     * 等待 Blockly 主工作区加载完成
     * @returns {Promise<Object>} Blockly 主工作区对象
     */
    async function getWorkspace() {
        while (!(await getBlockly()).mainWorkspace) await new Promise((resolve) => requestAnimationFrame(resolve));
        return (await getBlockly()).mainWorkspace;
    }

    /**
     * 等待指定 DOM 元素出现
     * @param {string} selector - CSS 选择器
     * @returns {Promise<Element>} 匹配的 DOM 元素
     */
    async function getElement(selector, timeout = 20000) {
        return new Promise((resolve, reject) => {
            const interval = setInterval(() => {
                const element = document.querySelector(selector);
                if (element) {
                    clearInterval(interval);
                    resolve(element);
                }
            }, 100);
            setTimeout(() => {
                clearInterval(interval);
                reject(null);
            }, timeout);
        });
    }


    // ==================== Webpack Require 获取 ====================

    /**
     * 获取 webpack require 函数
     * 通过向 webpack chunk/push 数组注入代码来捕获 __webpack_require__
     * @returns {Promise<boolean>} 是否成功获取
     */
    async function getWebpackReq() {
        // 如果已经存在，直接复用
        if (window.__req && typeof window.__req.c === 'object') {
            webpackReq = window.__req;
            log('复用已有 window.__req');
            return true;
        }

        // 根据不同编辑器版本采用不同的注入方式
        switch (env) {
            case 'kitten':
            case 'kitten4':
                // Kitten/Kitten4 编辑器使用 webpackJsonp
                if (!window.webpackJsonp || typeof window.webpackJsonp.push !== 'function') {
                    error('webpackJsonp 不可用，无法注入');
                    return false;
                }
                window.webpackJsonp.push([
                    ["__require_getter__"],
                    {
                        __require_getter__: (_module, _exports, __webpack_require__) => {
                            window.__req = __webpack_require__;
                            webpackReq = __webpack_require__;
                            log('已捕获 __webpack_require__');
                        },
                    },
                    [["__require_getter__"]],
                ]);
                break;
            case 'kn':
                while (!window.webpackChunkneko) await new Promise((resolve) => requestAnimationFrame(resolve));
                window.webpackChunkneko.push([
                    [6729],
                    {
                        6729: (module, exports, __webpack_require__) => {
                            window.__req = __webpack_require__;
                            webpackReq = __webpack_require__;
                            log('已捕获 __webpack_require__');
                        }
                    }
                ]);
                break;
            case 'kn-p':
                while (!window.webpackChunkneko) await new Promise((resolve) => requestAnimationFrame(resolve));
                window.webpackChunkneko.push([
                    [729],
                    {
                        6729: (module, exports, __webpack_require__) => {
                            window.__req = __webpack_require__;
                            webpackReq = __webpack_require__;
                            log('已捕获 __webpack_require__');
                        }
                    }
                ]);
                break;
        }

        // 等待 webpackReq 被赋值
        while (!webpackReq) await new Promise((resolve) => requestAnimationFrame(resolve));
        return true;
    }

    // ==================== Heart 核心对象获取 ====================

    /**
     * 获取 heart 核心对象
     * 不同编辑器版本采用不同的获取策略
     * @returns {Promise<boolean>} 是否成功获取
     */
    async function getHeart() {
        switch (env) {
            case 'kitten':
            case 'kitten4':
                // 遍历 webpack 缓存查找包含 get_heart 方法的模块
                for (const id of Object.keys(webpackReq.c)) {
                    const cacheEntry = webpackReq.c[id];
                    const exportsValue = cacheEntry?.exports;
                    const candidateRecord = isRecord(exportsValue) ? exportsValue : null;

                    // 候选对象列表
                    const candidates = [
                        exportsValue,
                        candidateRecord?.default,
                        candidateRecord?.i,
                        candidateRecord?.a,
                        candidateRecord?.b,
                    ];

                    // 检查每个候选对象
                    for (const candidate of candidates) {
                        if (isRecord(candidate) &&
                            typeof candidate.get_heart === "function") {
                            // 循环调用直到成功获取 heart
                            while (!heart) {
                                await new Promise((resolve) => requestAnimationFrame(resolve));
                                try { heart = candidate.get_heart(); }
                                catch (e) { }
                            }
                            return true;
                        }
                    }
                }
                break;
            case 'kn':
            case 'kn-p':
                async function checkKnUpdate(version) {
                    const last = storage.get('knVersion') || '0.0.0';
                    if (version !== last) {
                        storage.set('knVersion', version);
                        const dialogContainer = await getElement('#DialogContainer');
                        dialogContainer.insertAdjacentHTML('beforeend', `<div class="${SCRIPT_NAME} KittenNVersion_wrapper__Gd3xK enter-done" style="width:400px;height:200px;"><div class="KittenNVersion_closeButton__h3KtN"><i class="IconFont_wrapper__FPeRA"><svg width="1em" height="1em" fill="currentColor" aria-hidden="true" focusable="false"><use xlink:href="#icn_close"></use></svg></i></div><div class="KittenNVersion_container__ByGXd"><div class="KittenNVersion_right__Ws8k6"><div class="KittenNVersion_rightContent__npwS4"><div class="KittenNVersion_header__rqn-A">KittenN 新版本提醒</div><div class="KittenNVersion_content__6aVfp"><div class="KittenNVersion_contentItem__xZhow"><i class="IconFont_wrapper__FPeRA KittenNVersion_iconWrapper__Adswj"><svg width="1em" height="1em" fill="currentColor" aria-hidden="true" focusable="false"><use xlink:href="#icn_version_point"></use></svg></i><div class="KittenNVersion_textWrapper__9XIWE">当前版本：${version}</div></div><div class="KittenNVersion_contentItem__xZhow"><i class="IconFont_wrapper__FPeRA KittenNVersion_iconWrapper__Adswj"><svg width="1em" height="1em" fill="currentColor" aria-hidden="true" focusable="false"><use xlink:href="#icn_version_point"></use></svg></i><div class="KittenNVersion_textWrapper__9XIWE">上次版本：${last}</div></div></div><div class="KittenNVersion_bottom__rL53H"><a target="_blank" rel="noopener noreferrer" class="KittenNVersion_textWrapper__9XIWE" href="https://github.com/BetterNemo-Team/TanyueKn_OfflinePackage_Getter/issues">探月离线包更新<i class="IconFont_wrapper__FPeRA KittenNVersion_chevronRigth__mDmNl"><svg width="1em" height="1em" fill="currentColor" aria-hidden="true" focusable="false"><use xlink:href="#icn_version_chevron-right"></use></svg></i></a></div></div></div></div></div><div class="${SCRIPT_NAME} Mask_maskDialogWrapper__xpI4Z"><div class="Mask_maskDialog__YAj4V enter-done"></div></div>`);
                        const dialog = await getElement(`div.${SCRIPT_NAME}.KittenNVersion_wrapper__Gd3xK`);
                        const closeButton = dialog.querySelector('div.KittenNVersion_closeButton__h3KtN');
                        const mask = await getElement(`div.${SCRIPT_NAME}.Mask_maskDialogWrapper__xpI4Z`);
                        closeButton.addEventListener('click', () => {
                            dialog.remove();
                            mask.remove();
                        });
                    }
                }
                for (const id of Object.keys(webpackReq.m)) {
                    try {
                        const cacheEntry = webpackReq(id);
                        for (const key of Object.keys(cacheEntry)) {
                            try {
                                if (cacheEntry[key].instance.heart.core) {
                                    heart = cacheEntry[key].instance.heart.core;
                                    return true;
                                }
                            } catch (e) { }
                        }
                        if (cacheEntry.i8)
                            if (cacheEntry.i8.startsWith('1.')) {
                                checkKnUpdate(cacheEntry.i8);
                                (async () => {
                                    while ((await getElement('#init-loading')).style.display !== 'none')
                                        await new Promise((resolve) => requestAnimationFrame(resolve));
                                    log('KittenN Version', cacheEntry.i8);
                                    KnNewToast('当前 KittenN 版本：' + cacheEntry.i8, 'icn_success', 5000);
                                })();
                            }
                    } catch (e) { }
                }
                break;
            case 'bn':
                heart = (await waitHook('Runtime')).get_webview_runtime().heart.heart;
                log('bn heart', heart);
                return true;
        }
        return false;
    }
    // ==================== 工具箱刷新 ====================

    /**
     * 重新加载并更新 Blockly 工具箱
     * 根据编辑器版本采用不同的更新策略
     */
    async function reloadToolbox() {
        const workspace = await getWorkspace();

        switch (env) {
            case 'kitten':
                // Kitten 编辑器：克隆并修改语言树
                let tree = workspace.options.languageTree.cloneNode(true);

                // 等待加载完成
                while (tree.querySelector('[name="Loading"]')) {
                    tree = workspace.options.languageTree.cloneNode(true);
                    await new Promise((resolve) => requestAnimationFrame(resolve));
                }

                // 遍历所有扩展类型，添加到工具箱
                Object.keys(extTypes).forEach(id => {
                    // 移除旧的分类
                    tree.querySelector(`[data-ext-id="${id}"]`)?.remove();

                    // 创建新的分类节点
                    const category = textToXml(`<category data-ext-id="${id}" name="${extTypes[id]?.title}"></category>`);
                    extTypes[id]?._toolboxXmls.forEach(xml => category.appendChild(xml));
                    tree.appendChild(category);

                    // 添加自定义样式（图标、颜色等）
                    addStyle(`.blocklyToolboxDiv [role="treeitem"][category-name="${extTypes[id]?.title}"] {border-color:${extTypes[id]?.color};}
                        .blocklyToolboxDiv [role="treeitem"][category-name="${extTypes[id]?.title}"][aria-selected="true"] {
                        background-color:${extTypes[id]?.color};}
                        .blocklyToolboxDiv [role="treeitem"][category-name="${extTypes[id]?.title}"] .blocklyTreeIcon {
                        background: url(${extTypes[id]?.icon?.normal});width:24px;height:24px;background-size:contain;}
                        .blocklyToolboxDiv [role="treeitem"][category-name="${extTypes[id]?.title}"][aria-selected="true"] .blocklyTreeIcon {
                        background: url(${extTypes[id]?.icon?.selected});width:24px;height:24px;background-size:contain;}`);
                });

                // 更新工作区的语言树
                workspace.options.languageTree = tree;
                workspace.update_toolbox(tree);

                // 为工具箱节点添加 category-name 属性
                const treeRoot = await getElement('#workspace > div > div > div.blocklyTreeRoot');
                treeRoot.childNodes.forEach(node => {
                    const name = node.querySelector('span.blocklyTreeLabel')?.innerText;
                    node.setAttribute('category-name', name);
                });
                break;

            case 'kitten4':
            case 'kn':
                if (env === 'kn') (await getElement('.ToolboxManagerButton_toolboxManagerBtn__9DvYr')).style.height = '0';
                // Kitten4/KN 编辑器：使用 toolbox API 添加节点
                Object.keys(extTypes).forEach(id => {
                    // 移除旧的扩展节点
                    workspace.toolbox_.children_.find(e => e.name_ == 'ext_' + id)?.dispose();

                    // 根据编辑器设置图标尺寸
                    const iconSize = env === 'kitten4' ? '24px' : '36px';

                    // 添加新的工具箱节点
                    workspace.toolbox_.add(workspace.toolbox_.new_node({
                        text: env === 'kitten4' ? extTypes[id]?.title : undefined,
                        name: 'ext_' + id,
                        color: env === 'kn' ? extTypes[id]?.color : undefined,
                        icon: { "html": `<img src="${extTypes[id]?.icon?.normal}" draggable="false" style="height:${iconSize};width:${iconSize};">` },
                        blocks: extTypes[id]?._toolboxXmls
                    }));
                });
                break;
            case 'bn':
                Object.keys(extTypes).forEach(id => {
                    // 移除旧的扩展节点
                    workspace.toolbox_.children_.find(e => e.name_ == 'ext_' + id)?.dispose();

                    // 根据编辑器设置图标尺寸
                    const iconSize = env === 'kitten4' ? '24px' : '36px';
                    // 添加新的工具箱节点
                    workspace.toolbox_.add(workspace.toolbox_.new_node({
                        name: 'ext_' + id,
                        color: extTypes[id]?.color,
                        icon: { "html": `<img src="${extTypes[id]?.icon?.normal}" draggable="false" style="height:${iconSize};width:${iconSize};">` },
                        blocks: extTypes[id]?._toolboxXmls
                    }));
                });
                break;
        }
    }

    // ==================== 扩展安装 ====================
    /**
     * 为扩展提供的工具函数集
     */
    const utils = {
        /**
         * 注册程序启动时的回调
         * @param {Function} callback - 回调函数
         * @returns {Function} 取消注册的函数
         */
        onStart: (callback) => {
            let lastValue = heart.runtime_data?.run_status;
            const timer = setInterval(() => {
                const current = heart.runtime_data?.run_status;
                if (current === 0 && lastValue !== 0) {
                    callback(current);
                }
                lastValue = current;
            }, 100);
            return () => clearInterval(timer);
        },

        /**
         * 注册程序停止时的回调
         * @param {Function} callback - 回调函数
         * @returns {Function} 取消注册的函数
         */
        onStop: (callback) => {
            let lastValue = heart.runtime_data?.run_status;
            const timer = setInterval(() => {
                const current = heart.runtime_data?.run_status;
                if (current === 1 && lastValue !== 1) {
                    callback(current);
                }
                lastValue = current;
            }, 100);
            return () => clearInterval(timer);
        },
    };
    /**
     * 安装自定义扩展
     * 解析扩展代码，注册 blocks，更新工具箱
     * @param {string} extCode - 扩展代码字符串（CommonJS 格式）
     */
    async function installExt(extCode) {
        // 准备 exports 对象
        const exports = { extension: {} };

        // 为当前扩展创建独立的 utils 副本，避免修改源对象
        const extUtils = Object.create(utils);
        extUtils.emitEvent = (eventId, params) => {
            heart.runtime_manager.send_action({
                id: 'ext_' + ext.type + '_' + eventId,
                namespace: "",
                parameters: params
            });
        };

        // 执行扩展代码，提供简化的 require 实现
        new Function('require', 'exports', extCode)(module => {
            switch (module) {
                case 'utils':
                    return extUtils;
            }
        }, exports);

        const ext = exports.extension;
        if (extTypes[ext.type])
            if (!confirm(`${ext.title}(${ext.type})已存在，是否覆盖？`))
                return;

        ext._sourceCode = extCode;
        if (!ext.icon)
            ext.icon = '';
        if (typeof ext.icon === 'string')
            ext.icon = {
                normal: ext.icon,
                selected: ext.icon
            };
        const Blockly = await getBlockly();
        /**
         * 将十六进制颜色转换为 Blockly 主题颜色 ID
         * @param {string} color - 十六进制颜色值（如 #FF0000）
         * @returns {string} Blockly 颜色引用字符串
         */
        function customHexColor(color) {
            const colorId = 'EXT_' + color.replace('#', '');
            Blockly.theme.block_color[colorId] = {
                fill: color,
                border: darkenColor(color),
            };
            return `%{BKY_${colorId}}`;
        }
        /**
         * 定义事件参数块（用于事件块的输入插槽）
         * @param {string} blockId - 块类型 ID
         * @param {string} text - 显示的文本
         * @param {string} color - 颜色
         */
        function defineEventParamClone(blockId, text, color) {
            Blockly.Blocks['__clone__' + blockId] = {
                init: function () {
                    const __IS_PC__ = env !== 'bn';
                    let thisBlock = this;

                    // 创建虚拟输入并附加文本标签
                    this.append_dummy_input().append_field(text);
                    this.set_output(true);
                    this.set_inputs_inline(true);
                    this.set_colour(color, darkenColor(color));
                    // 自定义鼠标按下事件处理（实现拖拽创建新块）
                    this.on_mouse_down = function (event) {
                        let eventGroup = Blockly.events.get_group();
                        if (Blockly.events.set_group(eventGroup || !0), __IS_PC__ && 0 !== event.button)
                            return event.preventDefault(),
                                void event.stopPropagation();

                        let gesture = thisBlock.workspace.get_gesture(event);
                        log("on_mouse_down", event, gesture);
                        if (gesture) {
                            let o = gesture.handle_move.bind(gesture)
                                , s = gesture.handle_up.bind(gesture)
                                , aaaa = 0
                                , u = !1;
                            gesture.handle_move = function (i) {
                                if (u)
                                    o(i);
                                else if (aaaa < 10)
                                    aaaa++;
                                else if (gesture.is_dragging_block = !0, true) {
                                    // 创建新块并替换当前块
                                    let s = function () {
                                        Blockly.events.disable();
                                        const newBlock = thisBlock.workspace.new_block(blockId),
                                            thisBlockPos = thisBlock.get_relative_to_surface_xy();
                                        return newBlock.move_by(thisBlockPos),
                                            newBlock.init_svg(),
                                            newBlock.render(),
                                            Blockly.events.enable(),
                                            Blockly.events.is_enabled(),
                                            newBlock;
                                    }();
                                    s.select();
                                    gesture.handle_block_start(event, s);
                                    gesture.target_block = s;
                                    u = !0;
                                } else gesture.cancel();
                            };
                            gesture.handle_up = function (t) {
                                s(t);
                                Blockly.events.set_group(eventGroup);
                            };
                        }
                    };
                }
            };
        }
        // 处理 [方法] blocks：转换为 Blockly 格式并设置默认属性
        ext._blocks = ext.methods.map(method => {
            const block = { ...method, type: 'ext_' + ext.type + '_' + method.type };

            // 继承扩展的颜色
            if (!block.color) block.color = ext.color;
            block.colour = block.color;

            // 设置默认的连接属性（如果没有指定 output）
            if (typeof block.output === 'undefined') {
                if (typeof block.previousStatement === 'undefined') block.previousStatement = true;
                if (typeof block.nextStatement === 'undefined') block.nextStatement = true;
                if (typeof block.inputsInline === 'undefined') block.inputsInline = true;
            }

            // 非 kitten 编辑器需要使用主题颜色
            if (env !== 'kitten')
                block.colour = customHexColor(block.colour);

            return block;
        });
        // 处理 [事件] blocks
        ext.events.forEach(event => {
            event.color = event.color || '#608FEE';
            let messageIndex = 2;
            const block = {
                type: 'ext_' + ext.type + '_' + event.type,
                message0: '%1' + event.text,
                args0: [{ type: 'field_icon', is_head: true, src: event.icon, width: 38, height: 38, alt: "*" }],
                nextStatement: true,
                inputsInline: true,
                colour: event.color
            };
            if (env !== 'kitten')
                block.colour = customHexColor(block.colour);
            // 处理事件参数
            if (event.params)
                event.params.forEach(param => {
                    // 添加到事件积木中
                    block.message0 += `%${messageIndex}`;
                    messageIndex++;
                    block.args0.push({
                        type: 'input_value',
                        name: param.text,
                        check: 'undefined'
                    });
                    const paramBlockType = `ext_${ext.type}_${event.type}__event_param__${param.type}`;
                    // 定义事件参数
                    ext._blocks.push({
                        type: paramBlockType,
                        message0: param.text,
                        args0: [],
                        inputsInline: true,
                        colour: env !== 'kitten' ? customHexColor(event.color) : event.color,
                        output: param.check
                    });
                    // 定义clone事件参数
                    defineEventParamClone(paramBlockType, param.text, event.color);
                });
            ext._blocks.push(block);
        });
        // 批量定义所有 blocks
        Blockly.define_blocks_with_json_array(ext._blocks);
        /**
         * 生成参数值的 XML 片段
         * 根据参数类型自动生成对应的 shadow block
         * @param {string} name - 参数名称
         * @param {any} value - 默认值
         * @param {string|string[]} check - 类型检查（Number/String 等）
         * @returns {string} XML 字符串
         */
        function generateValueXml(name, value, check) {
            if (!Array.isArray(check)) check = [check];
            if (check[0] === "Number" && check.length === 1) {
                return `<value name="${name}"><shadow type="math_number"><field name="NUM">${value}</field></shadow></value>`;
            } else if (check.includes("String")) {
                return `<value name="${name}"><shadow type="text"><field name="TEXT">${value}</field></shadow></value>`;
            }
            return '';
        }
        /**
         * 为单个 block 生成完整的 toolbox XML
         * 支持多 messages（args0, args1, args2...）和自动参数填充
         * @param {string} blockType - Block 类型
         * @param {number} gap - 间隔距离（可选）
         * @returns {string} XML 字符串
         */
        function generateBlockXml(blockType, gap) {
            const blockDef = ext._blocks.find(b => b.type === blockType);
            if (!blockDef) {
                error(`未找到block定义: ${blockType}`);
                return `<block type="${blockType}"${gap ? ` gap="${gap}"` : ''}></block>`;
            }

            let valuesXml = '';

            // 遍历所有 args（支持 args0, args1, args2...）
            for (let i = 0; blockDef[`args${i}`]; i++) {
                if (Array.isArray(blockDef[`args${i}`])) {
                    blockDef[`args${i}`].forEach((arg, index) => {
                        // 只为有默认值的参数生成 XML
                        if (arg.value !== undefined) {
                            switch (arg.type) {
                                case "input_value":
                                    valuesXml += generateValueXml(arg.name, arg.value, arg.check || "String");
                                    break;
                                case "field_dropdown":
                                    valuesXml += `<field name="${arg.name}">${arg.value}</field>`;
                                    break;
                            }
                        }
                    });
                }
            }

            return `<block type="${blockType}"${gap ? ` gap="${gap}"` : ''}>${valuesXml}</block>`;
        }
        // 生成工具箱 XML 列表
        ext._toolboxXmls = ext.toolbox.map(item => {
            switch (item.type) {
                case 'method':
                    // 方法块：使用 generateBlockXml 生成带参数的 XML
                    return generateBlockXml('ext_' + ext.type + '_' + item.block, item.gap);
                case 'event':
                    // 事件块：生成带有参数占位符的 XML
                    const params = ext.events.find(e => e.type === item.block).params;
                    return `<block type="${'ext_' + ext.type + '_' + item.block}">${params.map(({ text, type }) =>
                        `<value name="${text}"><block type="__clone__ext_${ext.type}_${item.block}__event_param__${type}"></block></value>`)}</block>`;
            }
        }).map(textToXml);
        // 保存扩展类型
        extTypes[ext.type] = ext;
        // 等待 registry 初始化完成
        while (!heart.registry?.domain_function) await new Promise(resolve => requestAnimationFrame(resolve));
        const registry = heart.registry;
        /**
         * 注册 domain function 到 heart registry
         * 使 block 能够在运行时被调用
         * @param {string} name - 函数名称（通常是 block type）
         * @param {Function} func - 执行函数
         */
        function regDomainFunction(name, func) {
            registry.domain_function[name] = func;
            registry.domain_function_list.push(func);
            registry.domain_function_index[name] = registry.domain_function_types.push(name) - 1;
        }
        // 注册所有 blocks 的 domain function
        ext._blocks.forEach(block => {
            regDomainFunction(block.type,
                /**
                 * 积木解释器
                 * @param {Record<any,any>} params 积木传参
                 * @param {string} interpreter_id 解释器ID
                 * @param {string} entity_id 实体ID
                 * @param {{runtime_manager: any,add_user_procedure_call_to_stack: any,get_action_parameter: any,create_domain_function_error: any} utils 工具函数 
                 */
                function (params, interpreter_id, entity_id, utils) {
                    block.function(params, {
                        throwError: (message) => {
                            throw utils.create_domain_function_error({
                                namespace: "",
                                id: message
                            });
                        }
                    });
                });
        });
        // 注册 action 类型的辅助函数
        function regAction(id) {
            registry.register_action_type({
                namespace: "",
                id: id,
            });
            registry.register({
                namespace: "",
                id: id,
                respond: {
                    to_action: {
                        namespace: "",
                        id: id,
                    },
                    type: "action",
                    async: false,
                    entity_specific: false,
                },
            });
        }
        // 注册所有 events 的 domain function
        ext.events.forEach(event => {
            regAction(`ext_${ext.type}_${event.type}`);
            if (event.params)
                event.params.forEach(param => {
                    const paramBlockType = `ext_${ext.type}_${event.type}__event_param__${param.type}`;
                    regDomainFunction(paramBlockType, (_, __, ___, utils) => {
                        const action_parameters =
                            utils.runtime_manager.interpreters[
                                Object.keys(utils.runtime_manager.interpreters)[0]
                            ].action_parameters;
                        if (action_parameters)
                            return action_parameters[param.type];
                        return undefined;
                    });
                });
        });
        log(ext.type, 'installed', ext);
        if (!isPlayer())
            KnNewToast(`已安装「${ext.title}」(${ext.type})`, 'icn_success', 5000);
    }

    // ==================== 添加扩展导入按钮 ====================

    async function addExtImportBtn() {
        const btnText = '导入扩展';
        const extImportBtn = await (async () => {
            switch (env) {
                case 'kitten':
                    const menu3 = await getElement('#kitten_main_container > header > div.header_right--pB91K > div.header-btn--2q2v7.prevent-active--2Bf7o > div.header-dropdown--xv3Ao');
                    const button3 = document.createElement('div');
                    button3.className = 'header-dropdown-item--2_TNh';
                    button3.innerText = btnText;
                    menu3.appendChild(button3);
                    return button3;
                case 'kitten4':
                    const menu4 = await getElement('#header-setting-btn > div.CUI-menu-menu');
                    const button4 = document.createElement('div');
                    button4.className = 'CUI-menu-menu-item CUI-menu-bg-hover';
                    button4.innerHTML = `<div class="CUI-menu-menu-item-wrap" style="display: flex;">${btnText}</div>`;
                    menu4.appendChild(button4);
                    return button4;
                case 'kn':
                    const menuN = await getElement('#HEADER_BAR > div.HeadBar_left__e2Az3 > div:nth-child(6) > div > ul');
                    menuN.style.maxHeight = 'none';
                    const buttonN = document.createElement('li');
                    buttonN.className = 'ant-menu-item Menu_icon__ur9Tk extImportBtn';
                    addStyle(`li.extImportBtn:hover {background-color: var(--B2) !important;}`);
                    buttonN.innerHTML = `<i class="IconFont_wrapper__FPeRA ant-menu-item-icon"><svg version="1.1" width="20.00" height="20.00" viewBox="0.00 0.00 20.00 20.00"><g clip-path="url(#master_svg0_313_919)"><path d="M13.65,8.81L13.65,5.60Q13.65,5.12,13.31,4.79Q12.97,4.45,12.50,4.45L8.27,4.45Q7.79,4.45,7.45,4.79L6.99,5.25L5.21,5.25L4.75,4.79Q4.41,4.45,3.93,4.45L2.90,4.45Q2.42,4.45,2.09,4.79Q1.75,4.45,1.75,5.60L1.75,8.81Q1.75,9.28,2.09,9.62Q2.42,9.96,2.90,9.96L3.80,9.96L4.26,10.42Q4.59,10.75,5.07,10.75L7.13,10.75Q7.61,10.75,7.95,10.41L8.40,9.96L12.50,9.96Q12.97,9.96,13.31,9.62Q13.65,9.28,13.65,8.81ZM12.15,5.95L12.15,8.46L8.26,8.46Q7.78,8.46,7.44,8.80L6.99,9.25L5.21,9.25L4.76,8.79Q4.42,8.46,3.94,8.46L3.25,8.46L3.25,5.95L3.79,5.95L4.25,6.41Q4.59,6.75,5.07,6.75L7.13,6.75Q7.61,6.75,7.95,6.41L8.41,5.95L12.15,5.95ZM17.65,15.41L17.65,12.20Q17.65,11.72,17.31,11.39Q16.98,11.05,16.50,11.05L8.27,11.05Q7.79,11.05,7.45,11.39L6.99,11.85L5.21,11.85L4.75,11.39Q4.41,11.05,3.93,11.05L2.90,11.05Q2.42,11.05,2.09,11.39Q1.75,11.72,1.75,12.20L1.75,15.41Q1.75,15.88,2.09,16.22Q2.42,16.56,2.90,16.56L3.80,16.56L4.25,17.01Q4.59,17.35,5.07,17.35L7.13,17.35Q7.61,17.35,7.95,17.01L8.40,16.56L16.50,16.56Q16.98,16.56,17.31,16.22Q17.65,15.88,17.65,15.41ZM16.15,12.55L16.15,15.06L8.26,15.06Q7.78,15.06,7.44,15.40L6.99,15.85L5.21,15.85L4.76,15.39Q4.42,15.06,3.94,15.06L3.25,15.06L3.25,12.55L3.79,12.55L4.25,13.01Q4.59,13.35,5.07,13.35L7.13,13.35Q7.61,13.35,7.95,13.01L8.41,12.55L16.15,12.55Z" fill-rule="evenodd" fill="#51628C" fill-opacity="1.00"></path><path d="" fill="#51628C" fill-opacity="1.00"></path><path d="M16.09,3.00Q16.09,2.92,16.11,2.84Q16.12,2.76,16.15,2.69Q16.18,2.62,16.23,2.55Q16.27,2.48,16.33,2.43Q16.38,2.37,16.45,2.33Q16.52,2.28,16.59,2.25Q16.66,2.22,16.74,2.21Q16.82,2.19,16.90,2.19Q16.98,2.19,17.06,2.21Q17.14,2.22,17.21,2.25Q17.28,2.28,17.35,2.33Q17.42,2.37,17.47,2.43Q17.53,2.48,17.57,2.55Q17.62,2.62,17.65,2.69Q17.68,2.76,17.69,2.84Q17.71,2.92,17.71,3.00L17.71,3.00L17.71,6.20L17.71,6.20Q17.71,6.28,17.69,6.36Q17.68,6.44,17.65,6.51Q17.62,6.58,17.57,6.65Q17.53,6.72,17.47,6.77Q17.42,6.83,17.35,6.87Q17.28,6.92,17.21,6.95Q17.14,6.98,17.06,6.99Q16.98,7.01,16.90,7.01Q16.82,7.01,16.74,6.99Q16.66,6.98,16.59,6.95Q16.52,6.92,16.45,6.87Q16.38,6.83,16.33,6.77Q16.27,6.72,16.23,6.65Q16.18,6.58,16.15,6.51Q16.12,6.44,16.11,6.36Q16.09,6.28,16.09,6.20L16.09,6.20L16.09,3.00L16.09,3.00Z" fill-rule="evenodd" fill="#51628C" fill-opacity="1.00"></path><path d="" fill="#51628C" fill-opacity="1.00"></path><path d="M18.50,3.79L15.30,3.79L15.30,3.79Q15.22,3.79,15.14,3.81Q15.06,3.82,14.99,3.85Q14.92,3.88,14.85,3.93Q14.78,3.97,14.73,4.03Q14.67,4.08,14.63,4.15Q14.58,4.22,14.55,4.29Q14.52,4.36,14.51,4.44Q14.49,4.52,14.49,4.60Q14.49,4.68,14.51,4.76Q14.52,4.84,14.55,4.91Q14.58,4.98,14.63,5.05Q14.67,5.12,14.73,5.17Q14.78,5.23,14.85,5.27Q14.92,5.32,14.99,5.35Q15.06,5.38,15.14,5.39Q15.22,5.41,15.30,5.41L15.30,5.41L18.50,5.41L18.50,5.39Q18.58,5.39,18.66,5.38Q18.74,5.37,18.81,5.34Q18.88,5.32,18.95,5.27Q19.02,5.23,19.07,5.17Q19.13,5.12,19.17,5.05Q19.22,4.98,19.25,4.91Q19.28,4.84,19.29,4.76Q19.31,4.68,19.31,4.60Q19.31,4.52,19.29,4.44Q19.28,4.36,19.25,4.29Q19.22,4.22,19.17,4.15Q19.13,4.08,19.07,4.03Q19.02,3.97,18.95,3.93Q18.88,3.88,18.81,3.85Q18.74,3.82,18.66,3.81Q18.58,3.79,18.50,3.79L18.50,3.79Z" fill-rule="evenodd" fill="#51628C" fill-opacity="1.00"></path></g></svg></i><span class="ant-menu-title-content">导入扩展</span>`;
                    menuN.appendChild(buttonN);
                    return buttonN;
            }
        })();
        if (!extImportBtn) {
            error('无法添加扩展导入按钮');
            return;
        }
        extImportBtn.onclick = async () => {
            const [fileHandle] = await window.showOpenFilePicker({
                types: [
                    {
                        description: "编程猫通用扩展文件",
                        accept: {
                            "text/javascript": [".js"],
                        },
                    },
                ],
                excludeAcceptAllOption: true,
                multiple: false,
            });
            const file = await fileHandle.getFile();
            const reader = new FileReader();
            reader.onload = async () => {
                const extCode = reader.result;
                installExt(extCode);
            };
            reader.readAsText(file);
        };
    }
    // ==================== 你好杰克XHR请求 ====================
    async function hijackXhrReq() {
        log('开始劫持XHR请求');
        const ExtDataKey = 'CUE';
        function modifyWorkData(json) {
            json[ExtDataKey] = {};
            Object.keys(extTypes).forEach(key => {
                json[ExtDataKey][key] = extTypes[key]._sourceCode;
            });
            log('修改后作品数据', json);
            return json;
        }
        function processResponseText(text) {
            try {
                const json = JSON.parse(text);
                log('作品数据', json);
                if (json[ExtDataKey]) {
                    const extCodeObject = json[ExtDataKey];
                    log('扩展数据', extCodeObject);
                    Object.keys(extCodeObject).forEach(key => {
                        if (isPlayer())
                            KnNewToast(
                                `警告：即将安装扩展「${key}」`,
                                'icn_warn', '确认',
                                () => installExt(extCodeObject[key])
                            );
                        else
                            installExt(extCodeObject[key]);
                    });
                }
            } catch (e) { }
        }
        const originalOpen = XMLHttpRequest.prototype.open;
        const originalSend = XMLHttpRequest.prototype.send;
        XMLHttpRequest.prototype.open = function (method, url) {
            this._interceptedUrl = url;
            return originalOpen.apply(this, arguments);
        };
        XMLHttpRequest.prototype.send = function (body) {
            const url = this._interceptedUrl;
            if (isPlayer()) {
                switch (env) {
                    case 'kn-p':
                        const BCMKN_SALT = new Uint8Array(Array.from({ length: 31 }, (_, i) => i));
                        async function deriveAesKey() {
                            const hashBuffer = await crypto.subtle.digest('SHA-256', BCMKN_SALT);
                            return crypto.subtle.importKey('raw', hashBuffer, 'AES-GCM', false, ['decrypt']);
                        }
                        // 解密 BCMKN 加密数据
                        async function decryptBCMKN(encryptedContent) {
                            const content = encryptedContent.trim();
                            const reversed = content.split('').reverse().join('');
                            const fullData = Uint8Array.fromBase64(reversed);
                            if (fullData.length < 13) {
                                throw new Error(`数据太短 (${fullData.length} 字节)`);
                            }
                            const iv = fullData.slice(0, 12);
                            const ciphertext = fullData.slice(12);
                            const key = await deriveAesKey();
                            const decrypted = await crypto.subtle.decrypt({ name: 'AES-GCM', iv }, key, ciphertext);
                            const text = new TextDecoder().decode(decrypted);
                            return text.trim();
                        }
                        if (url && typeof url === 'string' &&
                            url.startsWith('https://creation.bcmcdn.com/') &&
                            url.endsWith('.bcmkn')) {
                            log('Player 拦截加密作品', url);
                            this.addEventListener('load', async function () {
                                try {
                                    const decryptedJsonText = await decryptBCMKN(this.responseText);
                                    log('Player 解密成功');
                                    processResponseText(decryptedJsonText);
                                } catch (e) {
                                    error('Player 解密作品失败', e);
                                }
                            });
                        }
                        break;
                }
            }
            else {
                // 保存
                if (env === 'kitten' || env === 'kitten4')
                    if (url.startsWith('https://upload.qiniup.com/putb64/-1/')) {
                        if (typeof body === 'string')
                            try {
                                const decodedString = Base64.decode(body);
                                let jsonObject = JSON.parse(decodedString);
                                const TARGET_KEYS = ['work_type', 'project_name'];
                                if (TARGET_KEYS.some(key => key in jsonObject)) {
                                    jsonObject = modifyWorkData(jsonObject);
                                    return originalSend.call(this, Base64.encode(JSON.stringify(jsonObject)));
                                }
                            } catch (e) { error(e); }
                    }
                if (env === 'kn')
                    if (url === 'https://upload.qiniup.com' && body instanceof FormData && body.has('file')) {
                        const file = body.get('file'); // 获取第一个文件
                        if (file && file.type === 'bcmkn' || file.name.endsWith('.bcmkn')) {
                            const reader = new FileReader();
                            reader.onload = (e) => {
                                try {
                                    const oldJson = modifyWorkData(JSON.parse(e.target.result));
                                    const newContent = JSON.stringify(oldJson);
                                    const newFile = new File([newContent], file.name, {
                                        type: file.type || 'bcmkn',
                                        lastModified: Date.now(),
                                    });
                                    const newFormData = new FormData();
                                    for (const [key, value] of body.entries()) {
                                        if (key === 'file') {
                                            newFormData.append(key, newFile);
                                        } else {
                                            newFormData.append(key, value);
                                        }
                                    }
                                    originalSend.call(this, newFormData);
                                } catch (err) {
                                    error('修改作品数据失败：', err);
                                    originalSend.call(this, body);
                                }
                            };
                            reader.readAsText(file);
                            return; // 阻止本次 send，等待 reader 回调中发送
                        }
                    }
                // 加载
                if (url && typeof url === 'string')
                    if (
                        url.startsWith('https://creation.bcmcdn.com/') &&
                        (url.endsWith('.bcm') || url.endsWith('.bcm4') || url.endsWith('.bcmkn'))
                    ) {
                        log('请求', url, this);
                        this.addEventListener('load', function () { processResponseText(this.responseText); });
                    }
            }
            // 默认：直接发送
            return originalSend.apply(this, arguments);
        };
    }
    // ==================== 主函数 ====================

    /**
     * 主入口函数
     * 按顺序获取依赖、安装示例扩展、启动工具箱刷新
     */
    async function main() {

        if (env !== 'bn') {
            // 获取 webpack require
            if (!webpackReq && !await getWebpackReq()) {
                error('无法获取 webpack require');
                return;
            }
        }

        // 获取 heart 核心对象
        if (!heart && !await getHeart()) {
            error('无法获取 heart');
            return;
        }

        // 暴露 heart 到全局
        window.heart = heart;

        // 安装示例扩展（演示用法）
        const MY_EXTENSION_CODE = `
const utils = require('utils');
let foo = 0;
utils.onStop(() => {
    foo = 0;
});
const MY_EXTENSION = {
    type: "MY_EXTENSION",
    title: "我的扩展",
    icon: "https://cdn.cocotais.cn/project/waddle-2/logo/waddle2-logo.svg",
    color: "#00AFC3",
    methods: [
        {
            type: "foo_add",
            message0: "foo++",
            args0: [],
            function: (params) => foo++
        },
        {
            type: "get_foo",
            message0: "get_foo",
            args0: [],
            output: "Number",
            function: (params) => foo
        },
        {
            type: "set_foo",
            message0: "set_foo %1",
            args0: [{
                type: "input_value",
                name: "value",
                value: 0,
                check: "Number"
            }],
            function: (params) => foo = params.value
        },
        {
            type: "emit_my_event",
            message0: "emit_my_event value: %1",
            args0: [{
                type: "input_value",
                name: "value",
                value: 0,
                check: "Number"
            }],
            function: (params) => utils.emitEvent("my_event", params)
        },
        {
            type: "error",
            message0: "error",
            color: "#FF0000",
            args0: [],
            function: (params, utils) => utils.error("◑﹏◐ 哎呀，出错了")
        },
    ],
    events: [{
        type: "my_event",
        text: "on_my_event",
        icon: "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNiAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPjxwYXRoIGQ9Ik0xOCAzNmM5Ljk0MSAwIDE4LTguMDU5IDE4LTE4UzI3Ljk0MSAwIDE4IDAgMCA4LjA1OSAwIDE4czguMDU5IDE4IDE4IDE4eiIgZmlsbD0iIzU2ODBENSIvPjxwYXRoIGQ9Ik0xOCAzNWM5LjM4OSAwIDE3LTcuNjExIDE3LTE3UzI3LjM4OSAxIDE4IDEgMSA4LjYxMSAxIDE4czcuNjExIDE3IDE3IDE3eiIgZmlsbD0iI0ZGRiIvPjxwYXRoIGQ9Ik0yNS41NiAxNi40NTdjMS45MTUgMS4xMyAxLjkyNSAyLjk1NCAwIDQuMDlsLTEwLjA5NCA1Ljk1N0MxMy41NTIgMjcuNjM0IDEyIDI2Ljc2NiAxMiAyNC41OFYxMi40MjRjMC0yLjE5MiAxLjU0MS0zLjA2IDMuNDY2LTEuOTI0bDEwLjA5NCA1Ljk1N3oiIGZpbGw9IiM2MDhGRUUiLz48L2c+PC9zdmc+Cg==",
        params: [{ type: "value", text: "值", check: "Number" }]
    }],
    toolbox: [
        { type: "event", block: 'my_event' },
        { type: "method", block: 'foo_add' },
        { type: "method", block: 'get_foo' },
        { type: "method", block: 'set_foo' },
        { type: "method", block: 'emit_my_event' },
        { type: "method", block: 'error' },
    ]
};
exports.extension = MY_EXTENSION;`;
        setTimeout(() => { if (!extTypes.MY_EXTENSION && !isPlayer()) installExt(MY_EXTENSION_CODE); }, 5000);

        if (env !== 'bn') {
            hijackXhrReq();
            if (!isPlayer()) {
                // 初次加载工具箱
                await reloadToolbox();

                // 定时刷新工具箱（每 2 秒）
                setInterval(() => reloadToolbox(), 2000);

                await addExtImportBtn();
            }
        }
    }

    // ==================== 启动逻辑 ====================

    // 根据文档加载状态决定执行时机
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', () => {
            main().catch(error);
        });
    } else main().catch(error);
})();