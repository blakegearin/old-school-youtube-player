// ==UserScript==
// @name         Old School YouTube Player
// @namespace    https://github.com/blakegearin/old-school-youtube-player
// @version      {VERSION}
// @description  Updates YouTube's video player to the look & feel before the 2025 redesign
// @author       Blake Gearin <hello@blakeg.me> (https://blakegearin.com)
// @match        *://*.youtube.com/*
// @require      https://openuserjs.org/src/libs/sizzle/GM_config.js
// @grant        GM.getValue
// @grant        GM.setValue
// @icon         https://raw.githubusercontent.com/blakegearin/old-school-youtube-player/main/img/logo.svg
// @supportURL   https://github.com/blakegearin/old-school-youtube-player/issues
// @license      GPL-3.0-only
// @copyright    2025, Blake Gearin (https://blakegearin.com)
// ==/UserScript==

/* jshint esversion: 6 */

(function() {
let css = `
  {USERSTYLE}
`;

if (typeof GM_addStyle !== "undefined") {
  GM_addStyle(css);
} else {
  const styleNode = document.createElement("style");
  styleNode.appendChild(document.createTextNode(css));
  (document.querySelector("head") || document.documentElement).appendChild(styleNode);
}
})();
