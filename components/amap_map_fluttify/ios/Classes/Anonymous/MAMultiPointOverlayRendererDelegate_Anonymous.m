//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

#import "MAMultiPointOverlayRendererDelegate_Anonymous.h"
#import <Flutter/Flutter.h>
#import "FluttifyMessageCodec.h"
#import <objc/runtime.h>

// Dart端一次方法调用所存在的栈, 只有当MethodChannel传递参数受限时, 再启用这个容器
extern NSMutableDictionary<NSString*, NSObject*>* STACK;
// Dart端随机存取对象的容器
extern NSMutableDictionary<NSString*, NSObject*>* HEAP;
// 日志打印开关
extern BOOL enableLog;

@implementation MAMultiPointOverlayRendererDelegate_Anonymous

- (instancetype) initWithFlutterPluginRegistrar: (NSObject <FlutterPluginRegistrar> *) registrar {
  self = [super init];
  if (self) {
    _registrar = registrar;
  }

  return self;
}

- (void)multiPointOverlayRenderer : (MAMultiPointOverlayRenderer*)renderer didItemTapped: (MAMultiPointItem*)item
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"MAMultiPointOverlayRendererDelegate::Callback@%@:%@", NSStringFromClass([self class]), @(self.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"MAMultiPointOverlayRendererDelegate::multiPointOverlayRenderer_didItemTapped");
  }

  // convert to jsonable arg
  // ref callback arg
  MAMultiPointOverlayRenderer* argrenderer = renderer;
  // ref callback arg
  MAMultiPointItem* argitem = item;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"multiPointOverlayRenderer_didItemTapped" arguments:@{@"renderer": argrenderer == nil ? [NSNull null] : argrenderer, @"item": argitem == nil ? [NSNull null] : argitem}];
  });
  
}


@end
