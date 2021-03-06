//
//  SignUpScreen.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 7/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import UIKit
import XCTest

class SignUpScreen: NSObject {

    static let app = XCUIApplication()

    static func screenExists() {
        let emailTextField = app.textFields["emailSignUpTextField"]
        XCTAssert(emailTextField.exists)

        let sendButton = app.buttons["sendButton"]
        XCTAssert(sendButton.exists)

        let closeButton = app.buttons["closeButton"]
        XCTAssert(closeButton.exists)

        let image = app.images["honestcodeSignUpImage"]
        XCTAssert(image.exists)
        
        let label = app.staticTexts["infoSignUpLabel"]
        XCTAssert(label.exists)
    }
    
    static func tapSendButton() {
        app.buttons["sendButton"].tap()
    }
    
    static func writeEmail() {
        let emailTextField = app.textFields["emailSignUpTextField"]
        emailTextField.tap()
        emailTextField.typeText("user@domain.com")
        app.keyboards.buttons["Return"].tap()
    }
    
    static func sendButtonDisabled() {
        let sendButton = app.buttons["sendButton"]
        XCTAssert(!sendButton.isEnabled)
    }
}
