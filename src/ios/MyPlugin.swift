
import Cordova

@objc(MyPlugin) class MyPlugin: CDVPlugin {
    @objc(coolMethod:)
    func coolMethod(command: CDVInvokedUrlCommand) {
        let echo = command.arguments[0] as? String ?? ""
        var pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR, messageAs: "Expected one non-empty string argument.")

        if !echo.isEmpty {
            pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: echo)
        }

        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }
}
