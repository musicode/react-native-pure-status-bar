
import { NativeModules } from 'react-native'

const { RNTStatusBar } = NativeModules

export default {

  setStyle(style, animated) {
    RNTStatusBar.setStyle(style, animated || false)
  },

  setHidden(hidden, animation) {
    RNTStatusBar.setHidden(hidden, animation || 'slide')
  },

  setNetworkActivityIndicatorVisible(visible) {
    RNTStatusBar.setNetworkActivityIndicatorVisible(visible || false)
  },

  setNavigationBarColor() {

  },

}
