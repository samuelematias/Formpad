[![Netlify Status](https://api.netlify.com/api/v1/badges/db9d464b-4808-4449-a1c7-2dd252d5aedb/deploy-status)](https://app.netlify.com/sites/formpad/deploys)
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://opensource.org/licenses/MIT)
[![License](https://img.shields.io/badge/license-MIT-orange.svg)](https://github.com/samuelematias/Formpad/blob/master/LICENSE)

[![Twitter Follow](https://img.shields.io/twitter/follow/samuelematias.svg?style=social)](https://twitter.com/samuelematias)

<!-- header section -->
<p align="center">
  <img src="https://i.imgur.com/B1kNldO.png" height="224"  /><br/>
  <span><b>Formpad.</b></span><br/>
  <a href="https://formpad.netlify.com/">Access it</a>.<br/>
  <span>Application Developed in <b>Flutter.</b></span><br/>
  <span>Running on both mobile platforms, <b>Android 🤖</b>, <b>iOS 🍎</b>, <b>Web 🕸</b> & <b>PWA 📱</b>. </span><br/>
</p>
<!-- header section END -->

<br/>
<!-- show case/gif section -->
<p align="center">
    <img alt="Formpad" height="620" src="https://media.giphy.com/media/S8MpUK2Qhf1mkjyCLY/giphy.gif" />
</p>
<!-- show case/gif section END -->

<br/>

<!-- about app and course section -->

## About this app

**Formpad** is a app where you can **work** with Forms next to **Google Sheets** in an easy way!
All data placed on the Form will be sent and saved in your **Google Sheets**.

An example where **Formpad** can be used would be an event where you are performing and you want to collect feedback on your presentation at the time or during your presentation. All feedbacks will be saved instantly and easily on your **Google Sheets**.

For now, you can only change the **Google Sheets** in the code. Embreve do in a way that it could be changed remotely, so **Wait for Updates**!

This app was developed in [Flutter](https://flutter.dev/) and run on **Mobile (Android/iOS)**, **Web** and **PWA**!

## How Config the Google Sheet to save Formpad data 🤔?

You just need follow this steps [Here](https://github.com/samuelematias/Formpad/blob/master/GOOGLE_SHEET.MD)

## With version to work the Flutter Web and PWA config 🤔?

You need change your **channel** to **master** and use the version of **Flutter 1.14 +++** and aftert run this code bellow:

```bash
flutter channel master
flutter upgrade
flutter config --enable-web
flutter devices
```

## How run this project 🤔?

To run your project on web you need have the chrome installed on your PC/Mac and aftert run this code bellow:

```bash
flutter run -d chrome
```

To build your web project, run this code bellow:

```bash
flutter build web
```

To create the PWA files (e.g. Manifest, service_worked, etc..), delete the index.html on web folder and after run this code bellow:

```bash
flutter create .
```

To run your project on mobile, run this code bellow:

```bash
flutter run
```

To run your project on mobile (more than one device), run this code bellow:

```bash
flutter run -d all
```

## Beta phase

This **app is still in development** (**BETA PHASE**), so it may contain some bugs. The **project** is **open source**, so feel free to **open a PR**!

## Tech Stack

- [Dart](https://dart.dev/)
- [Flutter](https://flutter.dev/)

## Plugins

- [http](https://pub.dev/packages/http)
- [url_launcher](https://pub.dev/packages/url_launcher)
- [flutter_icons](https://pub.dev/packages/flutter_icons)
