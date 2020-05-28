
package com.adobe.marketing.mobile.reactnative.griffon;

import android.app.Application;
import android.widget.Toast;

import com.adobe.marketing.mobile.Griffon;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class RCTACPReactNativeAcpGriffonModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public RCTACPReactNativeAcpGriffonModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @ReactMethod
    public void getExtensionVersion(final Promise promise) {
        final String version = Griffon.extensionVersion();
        Toast.makeText(reactContext.getApplicationContext(), version, Toast.LENGTH_LONG).show();
        promise.resolve(version);
    }

    @ReactMethod
    public void startSession(final String url) {
        Griffon.startSession(url);
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