# dolfin-flutter
The Flutter-based app for the [DOLFIN Project](https://www.npeu.ox.ac.uk/dolfin).   Note, there is a dev version of the code in a seperate repo that bipasses the verification with NPEU's databases so that we can create users and have access to the app through a dev version. Currently this is only available for Android. It's a hastle, but development is probably best done in the dev app first to test before transferring updates to this one.

## About

Babies who are born very early, or who suffer poor blood supply or lack of oxygen to the brain before or around birth, are more likely to have problems with their brain development and child neurological development. This may affect how children think and learn, communicate, play, and interact with the world around them.

DOLFIN aims to answer the research question:

In babies who are born very early or who suffer poor blood supply or lack of oxygen to the brain before or around birth, does giving a nutritional supplement daily for a year improve long-term cognitive development?

### Project Team
**PI(s):** [Jeremy Parr](https://research.ncl.ac.uk/neurodisability/theteam/jeremyparr/)  
**RSE(s):** 
* [Mike Simpson](https://rse.ncldata.dev/mike-simpson) [(@mdsimpson42)](https://github.com/mdsimpson42) 
* [Kate Court](https://rse.ncldata.dev/kate-court) [(@KateCourt)](https://github.com/KateCourt) 
* [Mark Turner](https://rse.ncldata.dev/mark-turner) [(@markdturner)](https://github.com/markdturner)

## Getting Started

### Prerequisites

The application uses Flutter.

* The instructions for installing Flutter on various platforms are [here](https://docs.flutter.dev/get-started/install).
* Instructions for configuring VS Code are [here](https://docs.flutter.dev/development/tools/vs-code). 

These include instructions for installing and configuring the Flutter SDK and Android Studio, including setting up a device emulator.

The project expects environment variables stored in a `.env` file saved at the project root. See `.env.example` for details of what is required.

### Firebase Setup

To get the app to work correctly with Firebase:

* **Android** - download google-services.json for the app on Firebase and copy it to the "android/app" folder.

### Debugging the App (Android)

Once Flutter, Android Studio and VS Code are installed and configured, you can run the app on the Android device emulator. The Android Emulator should appear in the list of available devices in VS Code and, once selected, can be run with "Run -> Start Debugging" (or F5).

### Debugging the App (iOS)

### Installation

#### Android

#### iOS

```
fastlane match development
fastlane match appstore
pod install
bundle install
flutter build ipa
bundle exec fastlane beta
```

### Running Tests

How to run tests on your local system.

## Deployment

### Local

Deploying to a production style setup but on the local system. Examples of this would include `venv`, `anaconda`, `Docker` or `minikube`. 

### Production

The GitHub Action for building the Android app requires you to add secrets to GitHub.

You will need to create a Google Play json key and give a service account email access to your app. You can follow instructions to do this [here](https://help.radio.co/en/articles/6232140-how-to-get-your-google-play-json-key). 

You will also need to generate an app signing key, encode it and add it to GitHub secrets, following instructions from step 2 [here](https://proandroiddev.com/how-to-securely-build-and-sign-your-android-app-with-github-actions-ad5323452ce). 

## Usage

Any links to production environment, video demos and screenshots.

### Regenerating the Icons
The base icon image is specified in `pubspec.yaml` and the relevent dependencies should be installed automatically.
To regenerate the icons (for Android and iOS), edit the master image file and then use the following commands:

```
flutter pub get  
flutter pub run flutter_launcher_icons:main
```

## Roadmap

- [x] Initial Development  
- [x] Minimum viable product  
- [x] Feature-Complete
- [ ] Testing

## Acknowledgements
This work was funded by a grant from the UK Research Councils, EPSRC grant ref. EP/L012345/1, “Example project title, please update”.
