import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
  var navigationController: UINavigationController?

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let controller:FlutterViewController = FlutterViewController()
    self.navigationController = UINavigationController.init(rootViewController: controller);
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = self.navigationController
    window?.makeKeyAndVisible()
    
    let channel = FlutterMethodChannel.init(name:"qiyu_ly",binaryMessenger:  controller.binaryMessenger);
    channel.setMethodCallHandler({
        (call:FlutterMethodCall,result:FlutterResult)-> Void in
        let arg = call.arguments as! NSDictionary
        
        guard call.method == "jumpPage" else{
            result(FlutterMethodNotImplemented)
            return;
        }
        self.goToNativePage(result: result, title: "测试页面")
    })
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func goToNativePage(result: FlutterResult,title: String) {
            print("跳转")
        result("AppDelegate");
            let vc: UIViewController = FirstViewController()
            vc.navigationItem.title = title
            self.navigationController?.pushViewController(vc, animated: true)
        }
}
