import Foundation
import Cordova

@objc(Logger) class TestPlugin: CDVPlugin {
    @objc(log:)
    func log(command: CDVInvokedUrlCommand) {
        let message = command.argument(at: 0) as? String ?? "No message"
        NSLog("[Logger Plugin] %@", message)

        let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: "Logged: \(message) Akshay")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }
}
