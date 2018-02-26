//
//  SwiftTest.swift
//  SwiftTest
//
//  Created by Sergey Terekhov on 2/26/18.
//

import Foundation

@objc(SwiftTest) class SwiftTest : CDVPlugin {
    @objc(nativeCall:)
    func nativeCall(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult(
            status: CDVCommandStatus_ERROR
        )
        
        let msg = command.arguments[0] as? String ?? ""
        print("SwiftTest in native \(msg)")
        
        var backMsg = "SwiftTest return message "
        if msg.characters.count > 0 {
            backMsg += msg
        } else {
            "SwiftTest coming back"
        }
        
        pluginResult = CDVPluginResult(
            status: CDVCommandStatus_OK,
            messageAs: msg
        )
        
        self.commandDelegate!.send(
            pluginResult,
            callbackId: command.callbackId
        )
    }
}
