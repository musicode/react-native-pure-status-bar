package com.github.musicode.statusbar

import android.app.Activity
import com.facebook.react.bridge.*
import com.facebook.react.bridge.UiThreadUtil
import com.gyf.immersionbar.ImmersionBar

class RNTStatusBarModule(private val reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

    private var isDarkStatusBar = true
    private var navigationBarColor = "#FFFFFF"

    override fun getName(): String {
        return "RNTStatusBar"
    }

    @ReactMethod
    fun setStyle(style: String) {

        val activity = currentActivity ?: return

        isDarkStatusBar = style != "light"

        applyChange(activity)

    }

    @ReactMethod
    fun setHidden(hidden: Boolean) {

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
    fun setNavigationBarColor(color: String) {

        val activity = currentActivity ?: return

        navigationBarColor = color

        applyChange(activity)

    }

    private fun applyChange(activity: Activity) {
        UiThreadUtil.runOnUiThread {

            ImmersionBar.with(activity)
                .statusBarDarkFont(isDarkStatusBar)
                .navigationBarColor(navigationBarColor)
                .init()

        }
    }

}