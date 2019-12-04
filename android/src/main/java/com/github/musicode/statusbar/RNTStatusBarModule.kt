package com.github.musicode.statusbar

import com.facebook.react.bridge.*
import com.facebook.react.bridge.UiThreadUtil
import com.gyf.immersionbar.ImmersionBar

class RNTStatusBarModule(private val reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

    override fun getName(): String {
        return "RNTStatusBar"
    }

    @ReactMethod
    fun getHeight(promise: Promise) {

        val resources = reactApplicationContext.resources
        val resId = resources.getIdentifier("status_bar_height", "dimen", "android")

        val height = if (resId > 0) {
            (resources.getDimensionPixelSize(resId) / resources.displayMetrics.density).toInt()
        }
        else {
            0
        }

        val map = Arguments.createMap()
        map.putInt("height", height)

        promise.resolve(map)

    }

    @ReactMethod
    fun setStyle(style: String, animated: Boolean) {

        val activity = currentActivity ?: return

        UiThreadUtil.runOnUiThread {

            ImmersionBar.with(activity)
                    .transparentStatusBar()
                    .statusBarDarkFont(style != "light", 0f)
                    .init()

        }

    }

    @ReactMethod
    fun setHidden(hidden: Boolean, animation: String) {

        val window = currentActivity?.window ?: return

        UiThreadUtil.runOnUiThread {
            if (hidden) {
                ImmersionBar.hideStatusBar(window)
            }
            else {
                ImmersionBar.showStatusBar(window)
            }
        }

    }

    @ReactMethod
    fun setNetworkActivityIndicatorVisible(visible: Boolean) {

        // iOS 才有的方法

    }

}