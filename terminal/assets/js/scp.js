/*  Project: XK-Z0-XD.github.io
 * Date: Dec 8, 2024
 * Filename: scp.js
 * Author: XK-Z0-XD
 * Encoding: UTF-8
 */
function getRequest(url) {
    const xhttp = new XMLHttpRequest();
    xhttp.open("GET",url,true);
    xhttp.onload = function () {
        console.log("LOADED");
    };
    
}
function getInfo(itemNo) {
  const link = {
    main: "https://scp-wiki.wikidot.com/",
    img: "local--files/component:anomaly-class-bar/",
  };
  const paths = {
    scp_item: "/scp-",
    containment: "/local--files/component:anomaly-class-bar/",
  };
}
function general(item) {}
