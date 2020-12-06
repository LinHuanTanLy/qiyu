#import "QiyuLyPlugin.h"
#if __has_include(<qiyu_ly/qiyu_ly-Swift.h>)
#import <qiyu_ly/qiyu_ly-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "qiyu_ly-Swift.h"
#endif

@implementation QiyuLyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftQiyuLyPlugin registerWithRegistrar:registrar];
}
@end
