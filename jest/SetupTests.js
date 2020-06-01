jest.mock('../node_modules/react-native/Libraries/BatchedBridge/NativeModules', () => ({    
    ACPGriffon: {
        getExtensionVersion: jest.fn(),
        startSession: jest.fn(),
        registerExtension: jest.fn()
    }
 }));