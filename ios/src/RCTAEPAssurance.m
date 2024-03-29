
/*
Copyright 2020 Adobe. All rights reserved.
This file is licensed to you under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License. You may obtain a copy
of the License at http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under
the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
OF ANY KIND, either express or implied. See the License for the specific language
governing permissions and limitations under the License.
*/

#import "RCTAEPAssurance.h"
#import "AEPAssurance.h"

@implementation RCTAEPAssurance

RCT_EXPORT_MODULE(AEPAssurance);

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_REMAP_METHOD(extensionVersion, getExtensionVersionWithResolver:(RCTPromiseResolveBlock)resolve rejector: (RCTPromiseRejectBlock)reject){
    resolve([AEPAssurance extensionVersion]);
}

RCT_EXPORT_METHOD(startSession: (NSString *) url){
    NSURL* nsUrl = [[NSURL alloc] initWithString:url];
    if(nsUrl != nil){
        [AEPAssurance startSession: nsUrl];
    }
}
@end
