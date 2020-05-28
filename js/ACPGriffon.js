
import { NativeModules, Alert } from 'react-native';
Alert.alert("----- "+NativeModules);
const ACPGriffon = NativeModules.ACPGriffon;

// Alert.alert("{}{}{}{}"+JSON.stringify(NativeModules));
// Alert.alert("{}{}{}{}"+JSON.stringify(require('react-native')));

export default {
    startSession : (url) => {
        ACPGriffon.startSession(url);
    },
    getVersion : () => {
        return Promise.resolve(ACPGriffon.getExtensionVersion());
    },
    registerExtension: () => {
        return Promis.resolve(ACPGriffon.registerExtension());
    }
};