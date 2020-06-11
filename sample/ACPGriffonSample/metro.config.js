/**
 * Metro configuration for React Native
 * https://github.com/facebook/react-native
 *
 * @format
 */

const path = require('path');

// react-native >= 0.57

// const extraNodeModules = {
//   '@adobe/react-native-acpgriffon': path.resolve(__dirname + '/../../'),
// };
// const watchFolders = [
//   path.resolve(__dirname + '/../../')
// ];

module.exports = {
  transformer: {
    getTransformOptions: async () => ({
      transform: {
        experimentalImportSupport: false,
        inlineRequires: false,
      },
    }),
  },
  // resolver: {
  //   extraNodeModules,
  // },
  // watchFolders,
  maxWorkers: 2,
};
