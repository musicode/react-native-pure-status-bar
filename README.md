# react-native-pure-status-bar

This is a module which help you set status bar style and show/hide status bar.

## Installation

```
npm i react-native-pure-status-bar
// link below 0.60
react-native link react-native-pure-status-bar
```

## Setup

### iOS

nothing to do.

### Android

`android/app/src/main/res/values/styles.xml`, make sure `windowTranslucentStatus` is `true`.

```xml
<resources>

    <style name="AppTheme" parent="Theme.AppCompat.Light.NoActionBar">
        <item name="android:windowTranslucentStatus">true</item>
        <item name="colorAccent">your color</item>
    </style>

</resources>

```

## Usage

```js
import statusBar from 'react-native-pure-status-bar'

// at first, you must set the status bar style
// style: set text color, dark | light
// animated: if the transition to the new style should be animated, ios only
statusBar.setStyle('dark', true)

// Whether to hide status bar
// animation: fade | slide | none, ios only
statusBar.setHidden(true, animation)

// Whether to show network activity indicator, ios only
statusBar.setNetworkActivityIndicatorVisible(true)

// android only
statusBar.setNavigationBarColor('#ffffff')
```