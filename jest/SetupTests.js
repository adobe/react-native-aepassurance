jest.mock('../node_modules/react-native/Libraries/BatchedBridge/NativeModules', () => ({
    AEPAssurance: {
        getExtensionVersion: jest.fn(),
        startSession: jest.fn()
    }
 }));
