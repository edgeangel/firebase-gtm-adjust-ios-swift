[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<img src="https://assets.edgeangel.co/app-firebase-gtm-adjust-github.png" width="400">

# Firebase, GTM and Adjust with iOS Swift
🔥 iOS Swift sample app with Firebase, GTM and Adjust

## How to
* Add the dependencies using Swift Package Manager: Firebase iOS SDK, GoogleTagManager iOS SDK, Adjust SDK for iOS
* Add your Firebase GoogleService-Info.plist config file to the Xcode project
* Import the [GTM iOS configuration](https://assets.edgeangel.co/GTM_config.json) to your container and update your ADJUST_EVENT_TOKEN in the AdjustEventTag
* Submit a new version for the container, download the version and add the GTM-XXX.json file into the container folder
* Update your ADJUST_APP_TOKEN in AppDelegate.swift
* Build and run

<img src="https://assets.edgeangel.co/app-firebase-gtm-adjust-github-image.png" width="800">

## Details
* Send test_event: event sent to Firebase with a Modify Event tag in GTM in order to send custom parameters (based on Event Parameter variables and Function Call variables)
* Send adjust_test_event: event collect with Firebase Analytics and sent to Adjust with a Function Call tag triggering the Adjust SDK for iOS trackEvent() method

## Resources
* Google Analytics for Firebase - iOS SDK: https://firebase.google.com/docs/analytics/get-started?platform=ios
* Google Tag Manager - iOS SDK: https://developers.google.com/tag-platform/tag-manager/ios/v5
* Google Tag Manager - Advanced iOS Tag Manager configuration: https://developers.google.com/tag-platform/tag-manager/ios/v5/advanced-config 
* Adjust - iOS SDK: https://help.adjust.com/en/article/get-started-ios-sdk

## More information and contribution
💌 hello@edgeangel.co

## License
The contents of this repository is licensed under the GPL-3.0 license. See [LICENSE](LICENSE) for more information.