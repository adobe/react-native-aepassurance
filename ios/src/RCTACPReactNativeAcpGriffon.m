
#import "RCTACPReactNativeAcpGriffon.h"
#import "ACPGriffon.h"


@implementation RCTACPReactNativeAcpGriffon

RCT_EXPORT_MODULE(ACPGriffon);

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_REMAP_METHOD(getExtensionVersion, getExtensionVersionWithResolver:(RCTPromiseResolveBlock)resolve rejector: (RCTPromiseRejectBlock)reject){
    
    resolve([ACPGriffon extensionVersion]);
}


RCT_EXPORT_METHOD(startSession: (NSString *) url){
    [ACPGriffon startSession:[[NSURL alloc] initWithString:url]];
}

RCT_EXPORT_METHOD(registerExtension){
    [ACPGriffon registerExtension];
}
@end
  
