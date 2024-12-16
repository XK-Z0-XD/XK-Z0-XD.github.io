/*  Project: XD-Z0-XD.github.io
 * Date: Dec 7, 2024
 * Filename: terminal.js
 * Author: XK-Z0-XD
 * Encoding: UTF-8
 */
const link = {main: "https://scp-wiki.wikidot.com/",
    img: "local--files/component:anomaly-class-bar/"};

var scp = {
    itemNo: 0,
    content: {}
}
var load = function (url) {
    const xhttp = new XMLHttpRequest();
    xhttp.open("GET", url);
    xhttp.onload = function () {
        console.log("LOADED");
        
    }
    xhttp.send();

}
var terminal = {
    load: (url) => {

    }
}
const paths = {
    scp_item: "/scp-",
    containment: "/local--files/component:anomaly-class-bar/"
}
// load(link.main);
// data.loadJSON("data/json/personnel.json", function(value){
//     console.log(value);
// });

//var win = new GuiWindow({id: "settings", title:"WELCOME"});
//console.log("Executed");
function getLink() {

}
function containmentImage() {
    var x = "https://scp-wiki.wikidot.com/local--files/component:anomaly-class-bar/safe-icon.svg"
}
function typeout() {

}