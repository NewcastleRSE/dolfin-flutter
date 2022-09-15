# dolfin-flutter
The Flutter-based app for the DOLFIN Project

## About

Andoird and iOS app for parents participating in the DOLFIN study. This research aims to understand how a nutritional supplement can improve long term congnitive development in baies who are born very early or who experience poor blood supply at birth. Parents can use the app to report the supplement dosing, their baby's weight and any unplanned hospital admissions. The app is backed by a Google Firebase setup including a Firestore database and Cloud Messaging. Parents also receive push notifications to remind them to give the supplement. 

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

Deploying to the production system. Examples of this would include cloud, HPC or virtual machine. 

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
This work was funded by the NIHR, and managed by the National Perinatal Epidemiology Unit, Clinical Trials Unit (NPEU CTU) at the University of Oxford and sponsored by The Newcastle upon Tyne Hospitals NHS Foundation Trust.
