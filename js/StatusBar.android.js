
import { NativeModules } from 'react-native'

const { RNTStatusBar } = NativeModules

export default {

  setStyle(style) {
    RNTStatusBar.setStyle(style)
  },

  setHidden(hidden) {
    RNTStatusBar.setHidden(hidden)
  },

  setNetworkActivityIndicatorVisible() {

  },

  setNavigationBarColor(color) {
    RNTStatusBar.setNavigationBarColor(color)
  },

}
