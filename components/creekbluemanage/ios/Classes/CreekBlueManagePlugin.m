#import "CreekBlueManagePlugin.h"
#if __has_include(<creek_blue_manage/creek_blue_manage-Swift.h>)
#import <creek_blue_manage/creek_blue_manage-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "creek_blue_manage-Swift.h"
#endif

@implementation CreekBlueManagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCreekBlueManagePlugin registerWithRegistrar:registrar];
}
@end
