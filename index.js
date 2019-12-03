
import { NativeModules } from 'react-native'

const { RNTStatusBar } = NativeModules

export default {

  getStatusBarHeight() {
    return RNTStatusBar.getStatusBarHeight()
  },

  getNavigationBarInfo() {
    return RNTStatusBar.getNavigationBarInfo()
  },

  getScreenSize() {
    return RNTStatusBar.getScreenSize()
  },

  getSafeArea() {
    return RNTStatusBar.getSafeArea()
  },

}
