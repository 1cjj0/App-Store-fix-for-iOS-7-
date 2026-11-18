# App Store / iTunes Store diagnostics for iOS 8

A beginner Theos tweak project for a jailbroken iPad 2 running iOS 8.4.1.

**Important:** this is only a harmless starter/diagnostic package. It logs when the App Store or iTunes Store app starts; it does not change network traffic, certificates, Apple ID authentication, or store behavior. It is not a fix for “Cannot connect to the iTunes Store.” We need to identify the cause before a real fix can be written, and a tweak cannot guarantee Apple’s services will remain compatible.

## Build

You need a Mac or Linux environment with [Theos](https://theos.dev/) installed. From the project directory, run:

```sh
make package
```

The resulting `.deb` is in `packages/`. This source repository is not itself a Cydia repository/feed, and the package has not been tested on a device.

## What the starter does

The tweak is filtered to the App Store (`com.apple.AppStore`) and iTunes Store (`com.apple.MobileStore`). It writes a short message to the device system log when either app starts. It does not collect or transmit data.

## Next step

Test this starter only on a device you can restore. If it builds and installs, collect the exact store error and relevant device logs to diagnose the failure. Do not distribute it as a store fix unless it is verified to resolve a specific cause.