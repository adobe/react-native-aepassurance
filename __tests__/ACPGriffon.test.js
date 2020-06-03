import { NativeModules } from 'react-native';
import ACPGriffon from '../js/ACPGriffon';

describe('ACPGriffon', () => {
    test('Test Extension version',  () => {
    
    const spy = jest.spyOn(NativeModules.ACPGriffon, 'getExtensionVersion');
    ACPGriffon.getVersion();
    expect(spy).toHaveBeenCalled();
});

test('Test Start session', () => {
    
    const spy = jest.spyOn(NativeModules.ACPGriffon, 'startSession');
    ACPGriffon.startSession('');
    expect(spy).toHaveBeenCalled();
});
});