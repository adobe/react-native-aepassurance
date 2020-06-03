/*
Copyright 2020 Adobe. All rights reserved.
This file is licensed to you under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License. You may obtain a copy
of the License at http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under
the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
OF ANY KIND, either express or implied. See the License for the specific language
governing permissions and limitations under the License.
*/

import React, { Component } from 'react';

const RNACPCore = require('@adobe/react-native-acpcore'); 
const ACPCore = RNACPCore.ACPCore;
// import { ACPGriffon } from '@adobe/react-native-acpgriffon';
// const RNACPGriffon = require('@adobe/react-native-acpgriffon'); 
// const ACPGriffon = RNACPGriffon.ACPGriffon;

import { StyleSheet, View, Text, Alert, ImageBackground } from 'react-native';

export default class App extends Component {
  state = {
    isRegistered: true, //Initialize with true since we are registering in Native code. Initialize it with false if regsiterning SDK in JS.
     version: ""
  };

  componentDidMount() {}

  startGriffonSession = () => {
    const ACPGriffon = require('@adobe/react-native-acpgriffon').ACPGriffon; 
    if(ACPGriffon){     
      ACPGriffon.startSession("grifflab://shtomar-griffon?adb_validation_sessionid=a7cad5ab-d8df-4883-9bd4-42dc5725e228");
    }
  };

  getVersion = () => {
    const ACPGriffon = require('@adobe/react-native-acpgriffon').ACPGriffon; 
    if(ACPGriffon){
         ACPGriffon.extensionVersion().then((version) => {
           Alert.alert(`Version:: ${version}`);
           this.setState(() => ({version}));
         });   
     }
  };
    
  render() {
    return (
      <ImageBackground source={require('../images/griffon.png')} style={styles.image} imageStyle={{resizeMode: 'contain'}}>
      <Text style={styles.title}>ACP Griffon</Text>
      <View style={styles.container}>
        <Text style={styles.text} onPress={this.startGriffonSession}>Start Session</Text>
        <Text style={styles.text} onPress={this.getVersion}>Get Version</Text>
      </View>
      <View style={styles.infoTextContainer}>
        <Text style={{fontSize: 12, color: "red"}}>Is Griffon Registered: {this.state.isRegistered.toString()}</Text>
        <Text style={{fontSize: 12, color: "red"}}>Griffon version: {this.state.version}</Text>
      </View>
      </ImageBackground>
      
    );
  }
}


const styles = StyleSheet.create({
  container: {
    flexDirection: "column",
    justifyContent:"center",
    alignItems: "center"
  },
  image: {
    flex: 1,
    padding: 24,
    justifyContent: "space-between"
  },
  text: {
    backgroundColor: '#e7e7e7',
    color: '#555555',
    height: 40,
    marginVertical: 10,
    borderColor: "#20232a",
    borderRadius: 5,
    borderWidth: 2,
    aspectRatio: 4,
    fontWeight: "bold",
    fontSize: 16,
    textAlign: "center",
    textAlignVertical: "center"
  },
  title:{
    marginTop: 16,
    paddingVertical: 8,
    borderWidth: 4,
    borderColor: "#20232a",
    backgroundColor: "#61dafb",
    color: "#20232a",
    textAlign: "center",
    fontSize: 30,
    fontWeight: "bold"

  },
  infoTextContainer:{
    flexDirection: "row",
    justifyContent: "space-between"
  }
});
