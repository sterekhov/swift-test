var exec = require('cordova/exec');

exports.nativeCall = function (arg0, success, error) {
    exec(success, error, 'SwiftTest', 'nativeCall', [arg0]);
};
