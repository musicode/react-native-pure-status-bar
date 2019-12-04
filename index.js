
import { NativeModules } from 'react-native'

const { RNTStatusBar } = NativeModules

export default {

  getHeight() {
    return RNTStatusBar.getHeight()
  },

  setStyle(style, animated) {
    RNTStatusBar.setStyle(style, animated || false)
  },

  setHidden(hidden, animation) {
    RNTStatusBar.setHidden(hidden, animation || 'none')
  },

  setNetworkActivityIndicatorVisible(visible) {
    RNTStatusBar.setNetworkActivityIndicatorVisible(visible || false)
  },

}
