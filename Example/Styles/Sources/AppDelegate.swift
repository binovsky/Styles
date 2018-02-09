//  Copyright © 2018 Inloop, s.r.o. All rights reserved.

import UIKit
import Styles

let h1 = TextStyle(
      .font(.preferredFont(forTextStyle: .largeTitle))
    , .foregroundColor(.black)
    , .backgroundColor(.yellow)
    , .paragraphStyle([
          .alignment(.center)
        ])
)

let body = TextStyle(
      .font(.preferredFont(forTextStyle: .body))
    , .foregroundColor(.yellow)
    , .backgroundColor(.black)
    , .letterSpacing(1.5)
    , .paragraphStyle([
          .alignment(.natural)
        , .lineSpacing(2.5)
        ])
)

let rounded = LayerStyle(
        .cornerRadius(10),
        .borderWidth(3),
        .borderColor(.red)
)

let appColor = ColorStyle(
    .backgroundColor(.gray),
    .tintColor(.blue)
)

let textFieldColorStyle = ColorStyle(
    .backgroundColor(.white),
    .tintColor(.blue)
)

let editingTextFieldStyle = LayerStyle(
    .borderColor(.red),
    .borderWidth(0.5)
)

let idleTextFieldStyle = LayerStyle (
    .borderColor(.blue),
    .borderWidth(0.5)
)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        ExLabel.appearance().textStyle = body
        ExLabel.appearance().layerStyle = rounded
        UIView.appearance(whenContainedInInstancesOf: [ViewController.self]).colorStyle = appColor
        UIButton.appearance().setTextStyle(h1, for: .normal);
        UIButton.appearance().setTextStyle(body, for: .highlighted);
        UITextField.appearance().setLayerStyle(editingTextFieldStyle, for: .editing)
        UITextField.appearance().setLayerStyle(idleTextFieldStyle, for: .inactive)
        UINavigationBar.appearance().textStyle = h1
        UINavigationBar.appearance().tintColor = .yellow
        UINavigationBar.appearance().barTintColor = .black
        UINavigationBar.appearance().barStyle = .black

        return true
    }
}

