# From Pegs to Pixels

This is the Flutter project used in the publication "From Pegs To Pixels"


## Prerequisites

Before you begin, make sure you have the following:

- macOS computer
- Latest version of [Xcode](https://developer.apple.com/xcode/)
- [Flutter SDK](https://flutter.dev/docs/get-started/install/macos)
- An Apple ID linked to a developer account (free or paid)
- An iPad with Apple Pencil support (connected via USB or Wi-Fi)


## Setup Instructions

### 1. Install Flutter

```bash
brew install --cask flutter
```

Then, run the Flutter setup tool:

```bash
flutter doctor
```

Follow the output to fix any missing dependencies.


### 2. Clone the Repository

```bash
git clone https://github.com/Dominik-Schoen/FromPegsToPixels
```


### 3. Download Flutter Dependencies

From the root of the project, run:

```bash
flutter pub get
```

This will install all the Dart and Flutter package dependencies.


### 4. Connect Your iPad

- Connect your iPad via USB or over Wi-Fi.
- Trust the device if prompted.
- Ensure it appears under `flutter devices`:

```bash
flutter devices
```


### 5. Run the App on iPad

You can run the Flutter app directly on the iPad using:

```bash
flutter run
```

If multiple devices are connected, specify the iPad's device ID:

```bash
flutter run -d <DEVICE_ID>
```

To get the list of connected devices:

```bash
flutter devices
```

Make sure your iPad is unlocked and trusted. The app will compile and launch directly onto the device.


## Cite the work

```bash
Dominik Schön, Thomas Kosch, Martin Schmitz, Sebastian Günther, Max Mühlhäuser, and Florian Müller.
2025. From Pegs to Pixels: A Comparative Analysis of the Nine Hole Peg Test and a Digital Copy Drawing Test
for Fine Motor Control Assessment. Proc. ACM Hum.-Comput. Interact. 9, 5, Article pn6393 (September 2025),
29 pages. https://doi.org/10.1145/3743714
```


## License

This project is licensed under the MIT License.
