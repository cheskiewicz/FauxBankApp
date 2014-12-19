cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
    {
        "file": "plugins/org.apache.cordova.startapp/www/startApp.js",
        "id": "org.apache.cordova.startapp.startapp",
        "merges": [
            "navigator.startApp"
        ]
    }
];
module.exports.metadata = 
// TOP OF METADATA
{
    "org.apache.cordova.startapp": "0.3.0"
}
// BOTTOM OF METADATA
});