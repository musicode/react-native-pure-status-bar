/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
} from 'react-native';

import {
  Colors,
} from 'react-native/Libraries/NewAppScreen';

import StatusBar from 'react-native-pure-status-bar'

const App: () => React$Node = () => {
  return (
    <>
      <SafeAreaView>
        <ScrollView
          contentInsetAdjustmentBehavior="automatic"
          style={styles.scrollView}>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.getHeight().then(data => {
                console.log(data)
              })
            }}
          >
            getBarHeight
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setStyle('light', true)
            }}
          >
            setStyle('light', true)
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setStyle('dark', true)
            }}
          >
            setStyle('dark', true)
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setStyle('light', false)
            }}
          >
            setStyle('light', false)
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setStyle('dark', false)
            }}
          >
            setStyle('dark', false)
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setHidden(true, 'fade')
            }}
          >
            setHidden(true, 'fade')
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setHidden(false, 'fade')
            }}
          >
            setHidden(false, 'fade')
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setHidden(true, 'slide')
            }}
          >
            setHidden(true, 'slide')
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setHidden(false, 'slide')
            }}
          >
            setHidden(false, 'slide')
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setHidden(true, 'none')
            }}
          >
            setHidden(true, 'none')
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setHidden(false, 'none')
            }}
          >
            setHidden(false, 'none')
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setNetworkActivityIndicatorVisible(true)
            }}
          >
            setNetworkActivityIndicatorVisible(true)
          </Text>

          <Text
            style={styles.button}
            onPress={() => {
              StatusBar.setNetworkActivityIndicatorVisible(false)
            }}
          >
            setNetworkActivityIndicatorVisible(false)
          </Text>
        </ScrollView>
      </SafeAreaView>
    </>
  );
};

const styles = StyleSheet.create({
  scrollView: {
    backgroundColor: Colors.lighter,
  },
  engine: {
    position: 'absolute',
    right: 0,
  },
  body: {
    backgroundColor: Colors.white,
  },
  sectionContainer: {
    marginTop: 32,
    paddingHorizontal: 24,
  },
  sectionTitle: {
    fontSize: 24,
    fontWeight: '600',
    color: Colors.black,
  },
  sectionDescription: {
    marginTop: 8,
    fontSize: 18,
    fontWeight: '400',
    color: Colors.dark,
  },
  highlight: {
    fontWeight: '700',
  },
  footer: {
    color: Colors.dark,
    fontSize: 12,
    fontWeight: '600',
    padding: 4,
    paddingRight: 12,
    textAlign: 'right',
  },
  button: {
    backgroundColor: '#ff0000',
    color: '#fff',
    textAlign: 'center',
    padding: 20,
  }
});

export default App;
