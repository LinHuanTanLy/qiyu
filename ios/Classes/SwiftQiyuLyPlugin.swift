import Flutter
import UIKit
public class SwiftQiyuLyPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "qiyu_ly", binaryMessenger: registrar.messenger())
    let instance = SwiftQiyuLyPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let method = call.method ;
    print("method is "+method);
    if(method == "getPlatformVersion"){
        result("ANDROID");
    }else if(method == "jumpPage"){
        result("SwiftQiyuLyPlugin");
        openPage();
    }
  }
    
 
    
    private func openPage(){
        let objViewController = UIApplication.shared.keyWindow?.rootViewController;
        let vc = FirstViewController1() 
        objViewController?.present(vc, animated: true, completion:nil)
//        self.presentViewController(vc, animated: true, completion: nil)

        
    }
}
