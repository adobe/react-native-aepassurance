jest.mock('NativeModules', () => ({
    AEPAssurance: {
        extensionVersion: jest.fn(() => new Promise(resolve => resolve())),
        startSession: jest.fn()
    }
 }));
