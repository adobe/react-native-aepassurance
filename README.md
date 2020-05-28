
# adobe-mobile-marketing-react-native-acp-griffon

## Getting started

`$ npm install adobe-mobile-marketing-react-native-acp-griffon --save`

### Mostly automatic installation

`$ react-native link adobe-mobile-marketing-react-native-acp-griffon`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `adobe-mobile-marketing-react-native-acp-griffon` and add `RCTACPReactNativeAcpGriffon.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRCTACPReactNativeAcpGriffon.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.adobe.marketing.mobile.reactnative.griffon.RCTACPReactNativeAcpGriffonPackage;` to the imports at the top of the file
  - Add `new RCTACPReactNativeAcpGriffonPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':adobe-mobile-marketing-react-native-acp-griffon'
  	project(':adobe-mobile-marketing-react-native-acp-griffon').projectDir = new File(rootProject.projectDir, 	'../node_modules/adobe-mobile-marketing-react-native-acp-griffon/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':adobe-mobile-marketing-react-native-acp-griffon')
  	```


## Usage
```javascript
import RCTACPReactNativeAcpGriffon from 'adobe-mobile-marketing-react-native-acp-griffon';

// TODO: What to do with the module?
RCTACPReactNativeAcpGriffon;
```
  