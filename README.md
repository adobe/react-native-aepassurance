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

###### **iOS**
```objective-c
#import <RCTACPGriffon/ACPGriffon.h>

[ACPGriffon registerExtension];
```

###### **Android:**
```java
import com.adobe.marketing.mobile.Griffon;
Griffon.registerExtension();
```

###### **Javascript:**
```javascript
import {ACPGriffon} from '@adobe/react-native-acpgriffon';
ACPGriffon.registerExtension();
```

##### Start Griffon session:

```javascript
import {ACPGriffon} from '@adobe/react-native-acpgriffon';
ACPGriffon.startSession("{your-griffon-session-url}");
```

## Additional React Native Plugins
 Below is a list of additional React Native plugins from the AEP SDK suite:
 | Extension    | npm package                                                  |
 | ------------ | ------------------------------------------------------------ |
 | Core         | [![npm version](https://img.shields.io/npm/v/@adobe/react-native-acpcore.svg?color=green&label=%40adobe%2Freact-native-acpcore&logo=npm&style=flat-square)](https://badge.fury.io/js/%40adobe%2Freact-native-acpcore) |
 | Analytics    | [![npm version](https://img.shields.io/npm/v/@adobe/react-native-acpanalytics.svg?color=green&label=%40adobe%2Freact-native-acpanalytics&logo=npm&style=flat-square)](https://badge.fury.io/js/%40adobe%2Freact-native-acpanalytics) |
 | Audience     | [![npm version](https://img.shields.io/npm/v/@adobe/react-native-acpaudience.svg?color=green&label=%40adobe%2Freact-native-acpaudience&logo=npm&style=flat-square)](https://badge.fury.io/js/%40adobe%2Freact-native-acpaudience) |
 | Campaign     | [![npm version](https://img.shields.io/npm/v/@adobe/react-native-acpcampaign.svg?color=green&label=%40adobe%2Freact-native-acpcampaign&logo=npm&style=flat-square)](https://badge.fury.io/js/%40adobe%2Freact-native-acpcampaign) |
 | Media     | [![npm version](https://img.shields.io/npm/v/@adobe/react-native-acpmedia.svg?color=green&label=%40adobe%2Freact-native-acpmedia&logo=npm&style=flat-square)](https://badge.fury.io/js/%40adobe%2Freact-native-acpmedia) |
 | Target       | [![npm version](https://img.shields.io/npm/v/@adobe/react-native-acptarget.svg?color=green&label=%40adobe%2Freact-native-acptarget&logo=npm&style=flat-square)](https://badge.fury.io/js/%40adobe%2Freact-native-acptarget) |
 | User Profile | [![npm version](https://img.shields.io/npm/v/@adobe/react-native-acpuserprofile.svg?color=green&label=%40adobe%2Freact-native-acpuserprofile&logo=npm&style=flat-square)](https://badge.fury.io/js/%40adobe%2Freact-native-acpuserprofile) |
 | Places | [![npm version](https://img.shields.io/npm/v/@adobe/react-native-acpplaces.svg?color=green&label=%40adobe%2Freact-native-acpplaces&logo=npm&style=flat-square)](https://www.npmjs.com/package/@adobe/react-native-acpplaces) |

## Contributing
Looking to contribute to this project? Please review our [Contributing guidelines](.github/CONTRIBUTING.md) prior to opening a pull request.

We look forward to working with you!

## Licensing  
This project is licensed under the Apache V2 License. See [LICENSE](LICENSE) for more information.
