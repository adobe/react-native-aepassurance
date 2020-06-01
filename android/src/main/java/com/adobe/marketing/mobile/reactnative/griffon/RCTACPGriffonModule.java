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

package com.adobe.marketing.mobile.reactnative.griffon;

import com.adobe.marketing.mobile.Griffon;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class RCTACPGriffonModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public RCTACPGriffonModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @ReactMethod
    public void getExtensionVersion(final Promise promise) {
        promise.resolve(Griffon.extensionVersion());
    }

    @ReactMethod
    public void startSession(final String url) {
        if(url != null){
            Griffon.startSession(url);
        }
    }

    @ReactMethod
    public void registerExtension() {
        Griffon.registerExtension();
    }

    @Override
    public String getName() {
        return "ACPGriffon";
    }
}