# React Native AEP Griffon Extension


`@adobe/react-native-acpgriffon` is a wrapper around the iOS and Android [Project Griffon SDK](https://aep-sdks.gitbook.io/docs/beta/project-griffon) to allow for integration with React Native applications. Functionality to start Griffon session is provided through JavaScript documented below.


## Installation

You need to install the SDK with [npm](https://www.npmjs.com/) and configure the native Android/iOS project in your react native project. Before installing the Griffon extension it is recommended to begin by installing the [Core extension](https://github.com/adobe/react-native-acpcore).

> Note: If you are new to React Native we suggest you follow the [React Native Getting Started](<https://facebook.github.io/react-native/docs/getting-started.html>) page before continuing.

### 1. Create React Native project

First create a React Native project:

```bash
react-native init MyReactApp
```

### 2. Install JavaScript packages

Install and link the `@adobe/react-native-acpgriffon` package:

```bash
cd MyReactApp
npm install @adobe/react-native-acpgriffon
```

#### 2.1 Link
- **React Native 0.60+**


[CLI autolink feature](https://github.com/react-native-community/cli/blob/master/docs/autolinking.md) links the module while building the app.


- **React Native <= 0.59**


```bash
react-native link @adobe/react-native-acpgriffon
```

*Note* For `iOS` using `cocoapods`, run:

```bash
cd ios/ && pod install
```

## Tests
This project contains jest unit tests which are contained in the `__tests__` directory, to run the tests locally:
```
make run-tests-locally
```

## Usage

### [Griffon](https://aep-sdks.gitbook.io/docs/beta/project-griffon/using-project-griffon)

##### Importing the extension:
```javascript
import {ACPGriffon} from '@adobe/react-native-acpgriffon';
```

##### Getting the extension version:

```javascript
ACPGriffon.getVersion().then(version => console.log("AdobeExperienceSDK: ACPGriffon version: " + version));
```

##### Registering the extension with ACPCore:

> Note: It is recommended to initialize the SDK via native code inside your AppDelegate and MainApplication in iOS and Android respectively. However, you can still initialize the SDK in Javascript. For more information see how to initialize [Core](https://github.com/adobe/react-native-acpcore#initializing-the-sdk). 

##### **iOS**
```objective-c
#import <RCTACPAnalytics/ACPAnalytics.h>

[ACPGriffon registerExtension];
```

##### **Android:**
```java
import com.adobe.marketing.mobile.Analytics;
Griffon.registerExtension();
```

##### **Javascript:**
```javascript
import {ACPGriffon} from '@adobe/react-native-acpgriffon';
ACPGriffon.registerExtension();
```

##### Start Griffon session:

```javascript
import {ACPGriffon} from '@adobe/react-native-acpgriffon';
ACPGriffon.startSession("grifflab://you-griffon-session-url");
```

## Contributing
See [CONTRIBUTING](CONTRIBUTING.md)

## License
See [LICENSE](LICENSE)
