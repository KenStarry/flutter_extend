<div align="center">

# 🎩 Flutter Extend
### *The Ultimate Cheat Code for Flutter Developers*

[![Mintlify Docs](https://img.shields.io/badge/Documentation-Starry%20Hub-blue?style=for-the-badge&logo=rocket&logoColor=white)](https://docs.yourdomain.com/flutter_extend)
[![Pub Version](https://img.shields.io/pub/v/flutter_extend?style=for-the-badge&color=blue)](https://pub.dev/packages/flutter_extend)
[![License](https://img.shields.io/github/license/KenStarry/flutter_extend?style=for-the-badge&color=orange)](https://github.com/KenStarry/flutter_extend/blob/main/LICENSE)

<br/>

**Stop writing boilerplate. Start writing magic.**
<br/>
`flutter_extend` supercharges your workflow with intuitive extensions for Widgets, Context, Data Generation, and more.

# 🚀 [Read the Full Documentation on Starry Hub](https://starrycodes.mintlify.app/flutter_extend_docs/introduction)
**All guides, advanced examples, and API references have moved to our official documentation site.**

</div>

---

## ⚡ Why Use This?

Because you have better things to do than writing `MediaQuery.of(context).size.width` for the 100th time.

| **The Old Way (Boring 😴)**                       | **The Flutter Extend Way (Magic ✨)** |
|:--------------------------------------------------|:-------------------------------------|
| `MediaQuery.of(context).size.width`               | `context.screenWidth`                |
| `Navigator.push(context, MaterialPageRoute(...))` | `context.push(NextPage())`           |
| `Padding(padding: EdgeInsets.all(8), child: ...)` | `myWidget.padding()`                 |
| *Googling "Lorem Ipsum generator"*                | `30.loremWords`                      |
| *Manually writing animation controllers*          | `myWidget.fadeIn().moveY()`          |

---

## ⚒️ Installation

1. Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_extend: ^0.0.6
```  

2. Run this spell in your terminal:

```bash
flutter pub get
```  

3. Import it and unleash the power:

```dart
import 'package:flutter_extend/flutter_extend.dart';
```  

BOOM. 💥 You’re now **10x more powerful** (results may vary).

---

## 🏎️ Quick Start

This is just a taste. [**See all 50+ extensions in the Official Docs.**](https://starrycodes.mintlify.app/flutter_extend_docs/introduction)

---

### 1. Context Magic 🪄

```dart
// The Old Way
double width = MediaQuery.of(context).size.width;
bool isDark = Theme.of(context).brightness == Brightness.dark;

// The New Way
double width = context.screenWidth;
bool isDark = context.isDarkMode;
```

### 2. String Power ⚡

```dart
String email = "badEmail.com";

if (!email.isEmailValid()) {
print("Invalid Email!"); // Prints: Invalid Email!
}

String title = "hello world".toTitleCase(); // Hello World
```

### 3. Widget Shortcuts 🖼️

```dart
// Add padding, alignment, and click events without nesting hell
Text("Click Me")
    .center()
    .padding(all: 16)
    .clickable(onTap: () => print("Clicked!"));
```

[//]: # (## 🤯 **Behold, The Extensions That Will Blow Your Mind!**)

[//]: # ()
[//]: # (### 🔥 The "Wow" Features &#40;New!&#41;)

[//]: # ()
[//]: # (| **Feature**        | **Code Example**                                    | **Output**                                                    |)

[//]: # (|:-------------------|:----------------------------------------------------|---------------------------------------------------------------|)

[//]: # (| User Avatars       | `user_123'.avatar&#40;style: DiceBearStyle.adventurer&#41;` | Generates a consistent, unique avatar URL using DiceBear API. |)

[//]: # (| Placeholder Images | `300.placeholderImage&#40;grayscale: true&#41;`             | A 300x300 grayscale image URL from Lorem Picsum.              |)

[//]: # (| Lorem Ipsum        | `20.loremWords / 3.loremParagraphs`                 | "Lorem ipsum dolor sit amet..."                               |)

[//]: # (| Mock UUIDs         | `ExtendGenerator.uuid`                              | a1b2c3d4-e5f6...                                              |)

[//]: # (| Random Colors      | `ExtendGenerator.randomColor`                       | A random opaque Color.                                        |)

[//]: # (| Credit Cards       | `ExtendGenerator.randomCreditCard&#40;&#41;`                | A valid mock Visa/Mastercard number.                          |)

[//]: # ()
[//]: # (### 🎨 **Color Extensions – For When You Need to Make Things Pretty**)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🖍️ Global Color Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension                   | Description                                        | Example                          |)

[//]: # (|:----------------------------|:---------------------------------------------------|----------------------------------|)

[//]: # (| `.getLighterShade&#40;percent&#41;` | Turns red into diet red &#40;10\% lighter&#41;\!           | `Colors.red.getLighterShade&#40;10&#41;` |)

[//]: # (| `.isDark`                   | Checks if the color is dark. 🌑                    | `Colors.red.isDark`              |)

[//]: # (| `.isLight`                  | Checks if the color is light. 🌞                   | `Colors.red.isLight`             |)

[//]: # (| `.luminance`                | Computes the luminance to determine brightness. 🌟 | `Colors.red.luminance`           |)

[//]: # (| `.toHex&#40;&#41;`                  | Converts red into that fancy \#FF0000 format.      | `Colors.red.toHex&#40;&#41;`             |)

[//]: # ()
[//]: # (</details> )

[//]: # ()
[//]: # (🔥 No more googling **“Flutter color to hex”** like a caveman.)

[//]: # ()
[//]: # (---)

[//]: # ()
[//]: # (### 📏 **Context Extensions – Your App’s Sixth Sense**)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🧠 Global Context Extensions</summary>)

[//]: # ()
[//]: # (| Extension                        | Description                            |)

[//]: # (|:---------------------------------|:---------------------------------------|)

[//]: # (| `context.hideKeyboard&#40;&#41;`         | Hides the keyboard when needed. ⌨️     |)

[//]: # (| `context.safeSetState&#40;callback&#41;` | Performs safe setState operations. 🏷️ |)

[//]: # ()
[//]: # (</details> )

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>📱 MediaQuery Context Extensions</summary>)

[//]: # ()
[//]: # (| Extension                   | Description                                     |)

[//]: # (|:----------------------------|:------------------------------------------------|)

[//]: # (| `context.isDarkMode`        | Detects if your app has gone full Sith mode. 🌑 |)

[//]: # (| `context.screenSize`        | Retrieves the full screen size. 📏              |)

[//]: # (| `context.screenHeight`      | Measures how tall your app stands. 📏           |)

[//]: # (| `context.screenWidth`       | Measures the width, because size matters. 📐    |)

[//]: # (| `context.theme`             | Retrieves the whole theme like a style guru. 👔 |)

[//]: # (| `context.safePadding`       | Retrieves the safe padding from MediaQuery. 🛏️ |)

[//]: # (| `context.orientation`       | Gets the screen orientation. 🔄                 |)

[//]: # (| `context.brightness`        | Checks platform brightness. 🌌                  |)

[//]: # (| `context.isKeyboardVisible` | Detects if the keyboard is on screen. ⌨️        |)

[//]: # (| `context.isLandscape`       | Detects if the device is in landscape mode. 🎢  |)

[//]: # (| `context.isPortrait`        | Detects if the device is in portrait mode. 🌆   |)

[//]: # ()
[//]: # (</details> )

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>↗️ Navigator Context Extensions</summary>)

[//]: # ()
[//]: # (| Extension                  | Description                                |)

[//]: # (|:---------------------------|:-------------------------------------------|)

[//]: # (| `context.navigateTo&#40;page&#41;` | Simplifies navigation to a new screen. 🚀  |)

[//]: # (| `context.popScreen&#40;&#41;`      | Pops the current screen from the stack. ⏏️ |)

[//]: # ()
[//]: # (</details> )

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>💻 Platform Context Extensions</summary>)

[//]: # ()
[//]: # (| Extension           | Description                            |)

[//]: # (|:--------------------|:---------------------------------------|)

[//]: # (| `context.isIOS`     | Checks if the platform is iOS. 🌐      |)

[//]: # (| `context.isAndroid` | Checks if the platform is Android. 📱  |)

[//]: # (| `context.isWindows` | Checks if the platform is Windows. 🖥️ |)

[//]: # (| `context.isMacOS`   | Checks if the platform is macOS. 💻    |)

[//]: # (| `context.isLinux`   | Checks if the platform is Linux. 🐟    |)

[//]: # (| `context.isFuchsia` | Checks if the platform is Fuchsia. 🛶  |)

[//]: # ()
[//]: # (</details> )

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🖍️ Theme Context Extensions</summary>)

[//]: # ()
[//]: # (| Extension             | Description                                     |)

[//]: # (|:----------------------|:------------------------------------------------|)

[//]: # (| `context.theme`       | Retrieves the whole theme like a style guru. 👔 |)

[//]: # (| `context.textTheme`   | Retrieves the text theme of the app. 🖊️        |)

[//]: # (| `context.colorScheme` | Retrieves the color scheme of the app. 🌐       |)

[//]: # (| `context.iconTheme`   | Retrieves the icon theme data. 💎               |)

[//]: # ()
[//]: # (</details> )

[//]: # ()
[//]: # (💡 These context extensions **always know what’s up** &#40;literally&#41;.)

[//]: # ()
[//]: # (---)

[//]: # ()
[//]: # (### 📆 **DateTime Extensions – Manipulate Time Like Doctor Strange**)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>⏳ DateTime Comparison Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension        | What It Does                         |  )

[//]: # (|------------------|--------------------------------------|  )

[//]: # (| `.isToday&#40;&#41;`     | Is today… today? 🤔                  |  )

[//]: # (| `.isPast&#40;&#41;`      | Confirms if your date is ancient. 📜 |  )

[//]: # (| `.isFuture&#40;&#41;`    | Predicts the future… kinda. 🔮       |  )

[//]: # (| `.isYesterday&#40;&#41;` | Checks if it was **Laundry Day**.    |  )

[//]: # (| `.isTomorrow&#40;&#41;`  | Future You says hello. 👋            |  )

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🗓️ DateTime Formatting Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension           | Example                               | Output       |)

[//]: # (|:--------------------|:--------------------------------------|--------------|)

[//]: # (| `.timeAgo&#40;&#41;`        | DateTime&#40;2024, 1, 1&#41;.timeAgo&#40;&#41;        | "1 year ago" |)

[//]: # (| `.timeUntil&#40;&#41;`      | DateTime&#40;2026, 1, 1&#41;.timeUntil&#40;&#41;      | "in 1 year"  |)

[//]: # (| `.monthName&#40;&#41;`      | DateTime&#40;2024, 1, 1&#41;.monthName&#40;&#41;      | "January"    |)

[//]: # (| `.monthNameShort&#40;&#41;` | DateTime&#40;2024, 1, 1&#41;.monthNameShort&#40;&#41; | "Jan"        |)

[//]: # (| `.dayName&#40;&#41;`        | DateTime&#40;2024, 1, 1&#41;.dayName&#40;&#41;        | "Monday"     |)

[//]: # (| `.dayNameShort&#40;&#41;`   | DateTime&#40;2024, 1, 1&#41;.dayNameShort&#40;&#41;   | "Mon"        |)

[//]: # (| `.slashedDate&#40;&#41;`    | DateTime&#40;2024, 1, 1&#41;.slashedDate&#40;&#41;    | "01/01/2024" |)

[//]: # (| `.weekNumber&#40;&#41;`     | DateTime&#40;2024, 1, 1&#41;.weekNumber&#40;&#41;     | 1            |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🛠️ DateTime Manipulation Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension                 | Example                                 | Output                 |)

[//]: # (|:--------------------------|:----------------------------------------|------------------------|)

[//]: # (| `.addDays&#40;days&#41;`          | DateTime&#40;2025, 1, 1&#41;.addDays&#40;5&#41;         | DateTime&#40;2025, 1, 6&#41;   |)

[//]: # (| `.subtractDays&#40;days&#41;`     | DateTime&#40;2025, 1, 1&#41;.subtractDays&#40;5&#41;    | DateTime&#40;2024, 12, 27&#41; |)

[//]: # (| `.addMonths&#40;months&#41;`      | DateTime&#40;2025, 1, 1&#41;.addMonths&#40;5&#41;       | DateTime&#40;2025, 6, 1&#41;   |)

[//]: # (| `.subtractMonths&#40;months&#41;` | DateTime&#40;2025, 1, 1&#41;.subtractMonths&#40;5&#41;  | DateTime&#40;2024, 8, 1&#41;   |)

[//]: # (| `.addYears&#40;years&#41;`        | DateTime&#40;2025, 1, 1&#41;.addYears&#40;5&#41;        | DateTime&#40;2030, 1, 1&#41;   |)

[//]: # (| `.subtractYears&#40;years&#41;`   | DateTime&#40;2025, 1, 1&#41;.subtractYears&#40;5&#41;   | DateTime&#40;2020, 1, 1&#41;   |)

[//]: # (| `.addBusinessDays&#40;days&#41;`  | DateTime&#40;2025, 1, 1&#41;.addBusinessDays&#40;5&#41; | DateTime&#40;2025, 1, 8&#41;   |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # ()
[//]: # (🔄 **Master time manipulation and become the Flutter Time Lord!**)

[//]: # ()
[//]: # (---)

[//]: # ()
[//]: # (### 📂 **File Extensions – Handle Files Like a Pro!**)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>📁 File Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension                     | Example                                   | Output                 |)

[//]: # (|:------------------------------|:------------------------------------------|------------------------|)

[//]: # (| `.fileFormattedSize&#40;&#41;`        | `File&#40;'path'&#41;.fileFormattedSize&#40;&#41;`        | 500 MB                 |)

[//]: # (| `.filePath&#40;&#41;`                 | `File&#40;'path'&#41;.filePath&#40;&#41;`                 | /emulated/0/storage... |)

[//]: # (| `.fileExtension&#40;&#41;`            | `File&#40;'path'&#41;.fileExtension&#40;&#41;`            | pdf, jpg, etc.         |)

[//]: # (| `.fileNameWithoutExtension&#40;&#41;` | `File&#40;'path'&#41;.fileNameWithoutExtension&#40;&#41;` | myAwesomeFile          |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (🗂️ **Stop wrestling with file paths like it’s 1999!**)

[//]: # ()
[//]: # (---)

[//]: # ()
[//]: # (### 🔖 **Future Extensions – Async Like a Boss!**)

[//]: # ()
[//]: # (💡 Tired of waiting for your Futures like they're stuck in dial-up internet? Say hello to **instant gratification**!)

[//]: # (These extensions turn async from a patience test into a **speedrun to success**—no more unnecessary delays, retries, or)

[//]: # (timeout meltdowns!)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🕰️ Future Extensions &#40;Click to reveal the magic&#41;</summary>)

[//]: # ()
[//]: # (| Extension                                      | What It Does &#40;In Normal-Person Terms&#41;                          | Example                                                            |)

[//]: # (|------------------------------------------------|----------------------------------------------------------------|--------------------------------------------------------------------|)

[//]: # (| `.wrapInCompleter&#40;&#41;`                           | Turns your Future into a **Completer** like a pro.             | `myFuture.wrapInCompleter&#40;&#41;`                                       |)

[//]: # (| `.isComplete&#40;&#41;`                                | Checks if a Future is **donezo** or still playing hard to get. | `myFuture.isComplete&#40;&#41;`                                            |)

[//]: # (| `.retry&#40;retries, delay&#41;`                       | Gives your Future **extra lives** &#40;great for network calls&#41;.   | `myFuture.retry&#40;3, delay: Duration&#40;seconds: 2&#41;&#41;`                   |)

[//]: # (| `.timeoutWithFallback&#40;timeout, fallbackValue&#41;` | **Stops waiting** after a timeout and gives a backup plan.     | `myFuture.timeoutWithFallback&#40;Duration&#40;seconds: 5&#41;, fallbackData&#41;` |)

[//]: # (| `.runAfterDelay&#40;delay&#41;`                        | **Hits snooze** before running the Future.                     | `myFuture.runAfterDelay&#40;Duration&#40;seconds: 2&#41;&#41;`                     |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🌀 Future Iterable Extensions &#40;Click to reveal the magic&#41;</summary>)

[//]: # ()
[//]: # (| Extension                     | What It Does &#40;In Normal-Person Terms&#41;                                      | Example                            |)

[//]: # (|-------------------------------|----------------------------------------------------------------------------|------------------------------------|)

[//]: # (| `.runWithLimit&#40;limit&#41;`        | Runs multiple Futures **at once**, but limits how many run simultaneously. | `myFutures.runWithLimit&#40;3&#41;`        |)

[//]: # (| `.runWithLimitOrdered&#40;limit&#41;` | Runs multiple Futures **in order**, with limited concurrent executions.    | `myFutures.runWithLimitOrdered&#40;2&#41;` |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>📋 String Future Extensions &#40;Click to reveal the magic&#41;</summary>)

[//]: # ()
[//]: # (| Extension            | What It Does &#40;In Normal-Person Terms&#41;                     | Example                                   |)

[//]: # (|----------------------|-----------------------------------------------------------|-------------------------------------------|)

[//]: # (| `.copyToClipboard&#40;&#41;` | Copies a string to the clipboard **like a sneaky ninja**. | `await 'Hello, world!'.copyToClipboard&#40;&#41;` |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (💥 Wave goodbye to async chaos and say hello to Future-powered hyperspeed! No more waiting in the async DMV line—your)

[//]: # (code is now on rollerblades. 🛼⚡)

[//]: # ()
[//]: # (---)

[//]: # ()
[//]: # (### 📦 **Generator Extensions – Auto-Magic String Generation!**)

[//]: # ()
[//]: # (_NB: String generator methods should be used on Empty Strings for the best results._)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🔠 String Generator Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension                                | Example                               | Output                                |)

[//]: # (|:-----------------------------------------|:--------------------------------------|---------------------------------------|)

[//]: # (| `.generateLoremIpsum&#40;wordCount&#41;`         | `"".generateLoremIpsum&#40;wordCount: 5&#41;` | `Lorem ipsum dolor sit amet`          |)

[//]: # (| `.generateUUID&#40;length&#41;`                  | `"".generateUUID&#40;length: 10&#41;`         | `Random UUID`                         |)

[//]: # (| `.generateClipboardContents&#40;textIfNull&#41;` | `"".generateClipboardContents&#40;&#41;`      | `Returns a String clipboard contents` |)

[//]: # (| `.generateRandomString&#40;length&#41;`          | `"".generateRandomString&#40;10&#41;`         | `Random 10-character string`          |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (📝 **Because manually typing random text is so last year!**)

[//]: # ()
[//]: # (---)

[//]: # ()
[//]: # (### 📋 **List Extensions – Sorting, Chunking, and More!**)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>📜 List Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension                  | Example                                                                                | Output                                                   |)

[//]: # (|:---------------------------|:---------------------------------------------------------------------------------------|----------------------------------------------------------|)

[//]: # (| `.firstOrNull&#40;&#41;`           | ["hello", "world", "awesome"].firstOrNull&#40;&#41;                                            | hello                                                    |)

[//]: # (| `.lastOrNull&#40;&#41;`            | ["hello", "world", "awesome"].lastOrNull&#40;&#41;                                             | awesome                                                  |)

[//]: # (| `.sortBy&#40;&#41;`                | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].sortBy&#40;&#40;car&#41; => car&#41;                | ["Aston Martin", "BMW", "Ferari", "Lambo", "Urus"]       |)

[//]: # (| `.sortByAndReturnSorted&#40;&#41;` | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].sortByAndReturnSorted&#40;&#40;car&#41; => car&#41; | ["Aston Martin", "BMW", "Ferari", "Lambo", "Urus"]       |)

[//]: # (| `.shuffled&#40;&#41;`              | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].shuffled&#40;&#41;                          | ["Ferari", "Aston Martin", "BMW", "Lambo", "Urus"]       |)

[//]: # (| `.chunked&#40;size&#41;`           | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].chunked&#40;2&#41;                          | [['Urus', 'BMW'], ['Aston Martin', 'Ferari'], ['Lambo']] |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (📌 **Because sorting lists manually is for mere mortals!**)

[//]: # ()
[//]: # (---)

[//]: # ()
[//]: # (### 🔢 **Number Extensions – Math is Hard, Let’s Make It Easy**)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🕞 Number Duration Extensions</summary>)

[//]: # ()
[//]: # (| Extension       | Example          | Output                    |)

[//]: # (|:----------------|:-----------------|---------------------------|)

[//]: # (| `.days`         | `5.days`         | Duration&#40;days: 5&#41;         |)

[//]: # (| `.hours`        | `5.hours`        | Duration&#40;hours: 5&#41;        |)

[//]: # (| `.minutes`      | `5.minutes`      | Duration&#40;minutes: 5&#41;      |)

[//]: # (| `.seconds`      | `5.seconds`      | Duration&#40;seconds: 5&#41;      |)

[//]: # (| `.milliSeconds` | `5.milliSeconds` | Duration&#40;milliSeconds: 5&#41; |)

[//]: # (| `.microSeconds` | `5.microSeconds` | Duration&#40;microSeconds: 5&#41; |)

[//]: # ()
[//]: # (</details> )

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>💰 Number Currency Extensions</summary>)

[//]: # ()
[//]: # (| Extension          | Example                  | Output      |)

[//]: # (|:-------------------|:-------------------------|-------------|)

[//]: # (| `.toCurrency&#40;&#41;`    | `100000.toCurrency&#40;&#41;`    | KES 100,000 |)

[//]: # (| `.toAbbreviated&#40;&#41;` | `100000.toAbbreviated&#40;&#41;` | 100K        |)

[//]: # ()
[//]: # (</details> )

[//]: # ()
[//]: # (🧠 **Because numbers should work for you, not the other way around.**)

[//]: # ()
[//]: # (---)

[//]: # ()
[//]: # (### 🔤 **String Extensions – Tame Your Text Like a Pro!**)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🔑 Validation String Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension            | Example                         | Output  |)

[//]: # (|:---------------------|:--------------------------------|---------|)

[//]: # (| `.isEmailValid&#40;&#41;`    | `"badEmail.com".isEmailValid&#40;&#41;` | `false` |)

[//]: # (| `.isPasswordValid&#40;&#41;` | `"weak12".isPasswordValid&#40;&#41;`    | `false` |)

[//]: # (| `.isValidURL&#40;&#41;`      | `"weirdurl//".isValidURL&#40;&#41;`     | `false` |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🌍 Global String Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension                            | Example                                           | Output        |)

[//]: # (|:-------------------------------------|:--------------------------------------------------|---------------|)

[//]: # (| `.capitalizeFirstLetter&#40;&#41;`           | `"hello".capitalizeFirstLetter&#40;&#41;`                 | `Hello`       |)

[//]: # (| `.capitalizeFirstLetterOfEachWord&#40;&#41;` | `"hello world".capitalizeFirstLetterOfEachWord&#40;&#41;` | `Hello World` |)

[//]: # (| `.getLastNCharacters&#40;n&#41;`             | `"hello".getLastNCharacters&#40;2&#41;`                   | `lo`          |)

[//]: # (| `.mask&#40;visibleCount&#41;`                | `"helloworld".mask&#40;&#41;`                             | `he******ld`  |)

[//]: # (| `.reverse&#40;&#41;`                         | `"hello".reverse&#40;&#41;`                               | `olleh`       |)

[//]: # (| `.truncateName&#40;&#41;`                    | `"Ken Starry".truncateName&#40;&#41;`                     | `Ken S.`      |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🕵️ Regex String Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension                             | Example                                              | Output               |)

[//]: # (|:--------------------------------------|:-----------------------------------------------------|----------------------|)

[//]: # (| `.extractDigits&#40;&#41;`                    | `"abc123".extractDigits&#40;&#41;`                           | `"123"`              |)

[//]: # (| `.removeAllDigits&#40;&#41;`                  | `"abc123".removeAllDigits&#40;&#41;`                         | `"abc"`              |)

[//]: # (| `.removeAllWordsStartingWithNumber&#40;&#41;` | `"1abc 2def ghi".removeAllWordsStartingWithNumber&#40;&#41;` | `"ghi"`              |)

[//]: # (| `.isDigitsOnly&#40;&#41;`                     | `"12345".isDigitsOnly&#40;&#41;`                             | `true`               |)

[//]: # (| `.isTextOnly&#40;&#41;`                       | `"abc".isTextOnly&#40;&#41;`                                 | `true`               |)

[//]: # (| `.removeAllWhiteSpaces&#40;&#41;`             | `"a b c".removeAllWhiteSpaces&#40;&#41;`                     | `"abc"`              |)

[//]: # (| `.getWords&#40;&#41;`                         | `"Hello world!".getWords&#40;&#41;`                          | `["Hello", "world"]` |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🔢 String Formatter Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension                  | Example                           | Output          |)

[//]: # (|:---------------------------|:----------------------------------|-----------------|)

[//]: # (| `.capitalizeFirstLetter&#40;&#41;` | `'hello'.capitalizeFirstLetter&#40;&#41;` | `'Hello'`       |)

[//]: # (| `.toTitleCase&#40;&#41;`           | `'hello world'.toTitleCase&#40;&#41;`     | `'Hello World'` |)

[//]: # (| `.toCamelCase&#40;&#41;`           | `'hello_world'.toCamelCase&#40;&#41;`     | `'helloWorld'`  |)

[//]: # (| `.toSlug&#40;&#41;`                | `'Hello World!'.toSlug&#40;&#41;`         | `'hello-world'` |)

[//]: # (| `.toOrdinal&#40;&#41;`             | `'23'.toOrdinal&#40;&#41;`                | `'23rd'`        |)

[//]: # (| `.toBase64&#40;&#41;`              | `'Hello'.toBase64&#40;&#41;`              | `'SGVsbG8='`    |)

[//]: # (| `.fromBase64&#40;&#41;`            | `'SGVsbG8='.fromBase64&#40;&#41;`         | `'Hello'`       |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>💰 String Currency Extensions</summary>)

[//]: # ()
[//]: # (| Extension               | Example                         | Output    |)

[//]: # (|:------------------------|:--------------------------------|-----------|)

[//]: # (| `.thousandNumberFormat` | `'100000'.thousandNumberFormat` | '100,000' |)

[//]: # (| `.cleanNumbers`         | `'100,000'.cleanNumbers`        | '100000'  |)

[//]: # ()
[//]: # (</details> )

[//]: # ()
[//]: # (🔠 **Say goodbye to messy text handling forever!**)

[//]: # ()
[//]: # (---)

[//]: # ()
[//]: # (### 🖼️ **Widget Extensions – Supercharge Your Widgets!**)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🧩 Widget Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension          | Example                                                             | Output                                                                         |)

[//]: # (|--------------------|---------------------------------------------------------------------|--------------------------------------------------------------------------------|)

[//]: # (| `clickableMouse`   | `Text&#40;'Click me'&#41;.clickableMouse&#40;onTap: &#40;&#41; { print&#40;'Clicked'&#41;; }&#41;`  | A text widget that shows a mouse pointer on hover and prints 'Clicked' on tap. |)

[//]: # (| `expanded`         | `Text&#40;'Expanded'&#41;.expanded&#40;&#41;`                                       | A text widget wrapped with an `Expanded` widget.                               |)

[//]: # (| `flexibe`          | `Text&#40;'Flexible'&#41;.flexibe&#40;&#41;`                                        | A text widget wrapped with a `Flexible` widget.                                |)

[//]: # (| `padding`          | `Text&#40;'Padded'&#41;.padding&#40;padding: EdgeInsets.all&#40;16&#41;&#41;`               | A text widget with 16 pixels of padding on all sides.                          |)

[//]: # (| `align`            | `Text&#40;'Aligned'&#41;.align&#40;alignment: Alignment.centerRight&#41;`           | A text widget aligned to the center right of its parent.                       |)

[//]: # (| `clip`             | `Image.network&#40;'url'&#41;.clip&#40;borderRadius: BorderRadius.circular&#40;8&#41;&#41;` | An image widget clipped with an 8-pixel border radius.                         |)

[//]: # (| `removeScrollbar`  | `ListView&#40;&#41;.removeScrollbar&#40;context&#41;`                               | A `ListView` without a scrollbar.                                              |)

[//]: # (| `addScrollbar`     | `ListView&#40;&#41;.addScrollbar&#40;context&#41;`                                  | A `ListView` with a scrollbar.                                                 |)

[//]: # (| `visibility`       | `Text&#40;'Visible'&#41;.visibility&#40;visible: false&#41;`                        | A text widget that is not visible.                                             |)

[//]: # (| `invinsible`       | `Text&#40;'Invisible'&#41;.invinsible&#40;&#41;`                                    | A text widget that is not visible.                                             |)

[//]: # (| `visible`          | `Text&#40;'Visible'&#41;.visible&#40;&#41;`                                         | A text widget that is visible.                                                 |)

[//]: # (| `addSelectionArea` | `Text&#40;'Selectable'&#41;.addSelectionArea&#40;&#41;`                             | A text widget that can be selected.                                            |)

[//]: # (| `center`           | `Text&#40;'Centered'&#41;.center&#40;&#41;`                                         | A text widget centered within its parent.                                      |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🛠️ Scaffold Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension               | Example                                                                                                                                                                       | Output                                                                                   |)

[//]: # (|:------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------|)

[//]: # (| `.addAnnotatedRegion&#40;&#41;` | `Scaffold&#40;&#41;.addAnnotatedRegion&#40;statusBarColor: Colors.red, statusBarBrightness: Brightness.dark, navigationBarColor: Colors.blue, navigationBarBrightness: Brightness.light&#41;` | A `Scaffold` widget with customized status bar and navigation bar colors and brightness. |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (<details>)

[//]: # ()
[//]: # (<summary>🔗 Text Extensions &#40;Click to open&#41;</summary>)

[//]: # ()
[//]: # (| Extension        | Example                                                                                                      | Output                                                                                               |)

[//]: # (|:-----------------|:-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|)

[//]: # (| `.addHyperLinks` | `Text&#40;'Click here for more info'&#41;.addHyperLinks&#40;hyperLinkTexts: ['here'], onHyperlinkClicked: &#40;word&#41; => {}&#41;` | A `Text` widget with the word "here" as a hyperlink that triggers the `onHyperlinkClicked` function. |)

[//]: # ()
[//]: # (</details>)

[//]: # ()
[//]: # (🖍️ **Make your widgets do more with less code!**)

[//]: # ()
[//]: # (---)

[//]: # ()
[//]: # (## ⏳ **Coming Soon – The Future is Bright!**)

[//]: # ()
[//]: # (### 📦 **Animation Extensions – Because Motion is Magic!**)

[//]: # ()
[//]: # (_&#40;Coming soon… if I ever stop procrastinating.&#41;_)

[//]: # ()
[//]: # (---)

[//]: # ()
[//]: # (### 🎭 **Widget Generators – The Magic is Brewing! ☕🔮**)

[//]: # ()
[//]: # (_&#40;Coming soon... currently summoning the code wizards for this one. 🧙‍♂️✨&#41;_)

[//]: # ()
[//]: # (---)

---

## 🤝 **Contributors**

We love our community! Big thanks to these wizards:

<div> <table style="border: none;"> <tr style="border: none;"> <td style="border: none; text-align: center;"> <a href="https://github.com/KenStarry"> <img src="https://github.com/KenStarry.png" width="60" style="border-radius: 50%;" alt="KenStarry"/><br /> <sub><b>KenStarry</b></sub> </a> </td> <td style="border: none; text-align: center;"> <a href="https://github.com/okelloEnos"> <img src="https://github.com/okelloEnos.png" width="60" style="border-radius: 50%;" alt="Enos Okello"/><br /> <sub><b>Enos Okello</b></sub> </a> </td> <td style="border: none; text-align: center;"> <a href="https://github.com/MohammedHishamFarouk"> <img src="https://github.com/MohammedHishamFarouk.png" width="60" style="border-radius: 50%;" alt="Mohammed Hisham"/><br /> <sub><b>Mohammed Hisham</b></sub> </a> </td> </tr> </table> </div>
---

🛠 Found something cool to add? **Please read our [**Contribution Guidelines**](CONTRIBUTING.md) before making a pull
request.

<div align="center">

## 🐝 **License – Go Wild!**

This package is [**licensed under MIT**](https://starrycodes.mintlify.app/flutter_extend_docs/license), meaning you can
use it, modify it, and show it off to your friends. 🎉

</div>

---

<div align="center">

🎉 **That’s it, folks!** Now go forth and write Flutter code like an absolute **legend**. 🚀💙

Made with 💙 by KenStarry

</div>