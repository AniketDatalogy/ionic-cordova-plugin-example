var exec = require('cordova/exec');

var MyPlugin = {
    coolMethod: function(arg0, success, error) {
        exec(success, error, 'MyPlugin', 'coolMethod', [arg0]);
    }
};

module.exports = MyPlugin;

