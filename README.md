sample-ios-TabChildView
=======================

This example shows you how to _embed_ a CoronaView into an existing view hierarchy. In this case, a tab.

# Code Overview

## CoronaView setup (Obj-C)

The CoronaView is instantiated just like any normal UIView. A `CoronaView` is paired with an instance of `CoronaViewController`.

This example sets up the `CoronaViewController` as a child of `FirstViewController` which is the view controller for the first tab. This enables the `CoronaView` to be inserted anywhere in the view hierachy of the first tab.

## CoronaView contents (Lua)

The contents of the `CoronaView` are determined via Lua. In this project, the `CoronaView` is told to look for Lua files in the `Corona` subfolder of the .app bundle. 

NOTE: The Xcode project is setup to automatically copy the contents of `TabChildView/Corona` to a `Corona` subfolder in the destination .app bundle, so you are free to modify/add/delete the Lua files as well as other asset files.

# Setup

The sample expects `CoronaKit.framework` to be installed at `/Users/Shared/CoronaLabs/Frameworks/CoronaKit.framework`. 

# Requirements

* Xcode 5
* Mac OS X 10.8 or higher

