# 🎩 Flutter Extend – The Magical Extensions Toolbox!

![FLUTTER EXTEND](https://github.com/user-attachments/assets/b3a4d7ae-e1b6-4f3d-b485-857567a2cc2b)

![Pub Version](https://img.shields.io/pub/v/flutter_extend)
![License](https://img.shields.io/github/license/KenStarry/flutter_extend)
![Stars](https://img.shields.io/github/stars/KenStarry/flutter_extend?style=social)

🚀 Welcome to the ultimate Flutter cheat code! This package brings you a collection of mind-blowing extensions that'll
make your development experience smoother than a buttered-up otter sliding down a rainbow. 🌈✨

## 🍕 Why Should You Care?

Because **Flutter Extend** makes your life easier, that's why! Instead of writing **boring repetitive code**, let these
extensions do the heavy lifting while you sip on your coffee ☕ (or energy drink, we don’t judge).

👌 **Save time** – Fewer lines of code, more time for memes.  
🔄 **Write cleaner code** – Your future self will thank you.  
🧙 **Look like a coding wizard** – Impress your teammates.

---

## ⚒️ Installation – Get Started Faster than a Cheetah on Roller Skates

1. **Summon Flutter Extend into your project** by adding this to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_extend: ^0.0.6
```  

2. **Run this spell** in your terminal:

```bash
flutter pub get
```  

3. **Import the package** and start your journey to developer enlightenment:

```dart
import 'package:flutter_extend/flutter_extend.dart';
```  

BOOM. 💥 You’re now **10x more powerful** (results may vary).

---

## 🤯 **Behold, The Extensions That Will Blow Your Mind!**

### 🎨 **Color Extensions – For When You Need to Make Things Pretty**

<details>

<summary>🖍️ Global Color Extensions (Click to open)</summary>

| Extension                   | Description                                        | Example                          |
|:----------------------------|:---------------------------------------------------|----------------------------------|
| `.getLighterShade(percent)` | Turns red into diet red (10\% lighter)\!           | `Colors.red.getLighterShade(10)` |
| `.isDark`                   | Checks if the color is dark. 🌑                    | `Colors.red.isDark`              |
| `.isLight`                  | Checks if the color is light. 🌞                   | `Colors.red.isLight`             |
| `.luminance`                | Computes the luminance to determine brightness. 🌟 | `Colors.red.luminance`           |
| `.toHex()`                  | Converts red into that fancy \#FF0000 format.      | `Colors.red.toHex()`             |

</details> 

🔥 No more googling **“Flutter color to hex”** like a caveman.

---

### 📏 **Context Extensions – Your App’s Sixth Sense**

<details>

<summary>🧠 Global Context Extensions</summary>

| Extension                        | Description                            |
|:---------------------------------|:---------------------------------------|
| `context.hideKeyboard()`         | Hides the keyboard when needed. ⌨️     |
| `context.safeSetState(callback)` | Performs safe setState operations. 🏷️ |

</details> 

<details>

<summary>📱 MediaQuery Context Extensions</summary>

| Extension                   | Description                                     |
|:----------------------------|:------------------------------------------------|
| `context.isDarkMode`        | Detects if your app has gone full Sith mode. 🌑 |
| `context.screenSize`        | Retrieves the full screen size. 📏              |
| `context.screenHeight`      | Measures how tall your app stands. 📏           |
| `context.screenWidth`       | Measures the width, because size matters. 📐    |
| `context.theme`             | Retrieves the whole theme like a style guru. 👔 |
| `context.safePadding`       | Retrieves the safe padding from MediaQuery. 🛏️ |
| `context.orientation`       | Gets the screen orientation. 🔄                 |
| `context.brightness`        | Checks platform brightness. 🌌                  |
| `context.isKeyboardVisible` | Detects if the keyboard is on screen. ⌨️        |
| `context.isLandscape`       | Detects if the device is in landscape mode. 🎢  |
| `context.isPortrait`        | Detects if the device is in portrait mode. 🌆   |

</details> 

<details>

<summary>↗️ Navigator Context Extensions</summary>

| Extension                  | Description                                |
|:---------------------------|:-------------------------------------------|
| `context.navigateTo(page)` | Simplifies navigation to a new screen. 🚀  |
| `context.popScreen()`      | Pops the current screen from the stack. ⏏️ |

</details> 

<details>

<summary>💻 Platform Context Extensions</summary>

| Extension           | Description                            |
|:--------------------|:---------------------------------------|
| `context.isIOS`     | Checks if the platform is iOS. 🌐      |
| `context.isAndroid` | Checks if the platform is Android. 📱  |
| `context.isWindows` | Checks if the platform is Windows. 🖥️ |
| `context.isMacOS`   | Checks if the platform is macOS. 💻    |
| `context.isLinux`   | Checks if the platform is Linux. 🐟    |
| `context.isFuchsia` | Checks if the platform is Fuchsia. 🛶  |

</details> 

<details>

<summary>🖍️ Theme Context Extensions</summary>

| Extension             | Description                                     |
|:----------------------|:------------------------------------------------|
| `context.theme`       | Retrieves the whole theme like a style guru. 👔 |
| `context.textTheme`   | Retrieves the text theme of the app. 🖊️        |
| `context.colorScheme` | Retrieves the color scheme of the app. 🌐       |
| `context.iconTheme`   | Retrieves the icon theme data. 💎               |

</details> 

💡 These context extensions **always know what’s up** (literally).

---

### 📆 **DateTime Extensions – Manipulate Time Like Doctor Strange**

<details>

<summary>⏳ DateTime Comparison Extensions (Click to open)</summary>

| Extension        | What It Does                         |  
|------------------|--------------------------------------|  
| `.isToday()`     | Is today… today? 🤔                  |  
| `.isPast()`      | Confirms if your date is ancient. 📜 |  
| `.isFuture()`    | Predicts the future… kinda. 🔮       |  
| `.isYesterday()` | Checks if it was **Laundry Day**.    |  
| `.isTomorrow()`  | Future You says hello. 👋            |  

</details>

<details>

<summary>🗓️ DateTime Formatting Extensions (Click to open)</summary>

| Extension           | Example                               | Output       |
|:--------------------|:--------------------------------------|--------------|
| `.timeAgo()`        | DateTime(2024, 1, 1).timeAgo()        | "1 year ago" |
| `.timeUntil()`      | DateTime(2026, 1, 1).timeUntil()      | "in 1 year"  |
| `.monthName()`      | DateTime(2024, 1, 1).monthName()      | "January"    |
| `.monthNameShort()` | DateTime(2024, 1, 1).monthNameShort() | "Jan"        |
| `.dayName()`        | DateTime(2024, 1, 1).dayName()        | "Monday"     |
| `.dayNameShort()`   | DateTime(2024, 1, 1).dayNameShort()   | "Mon"        |
| `.slashedDate()`    | DateTime(2024, 1, 1).slashedDate()    | "01/01/2024" |
| `.weekNumber()`     | DateTime(2024, 1, 1).weekNumber()     | 1            |

</details>

<details>

<summary>🛠️ DateTime Manipulation Extensions (Click to open)</summary>

| Extension                 | Example                                 | Output                 |
|:--------------------------|:----------------------------------------|------------------------|
| `.addDays(days)`          | DateTime(2025, 1, 1).addDays(5)         | DateTime(2025, 1, 6)   |
| `.subtractDays(days)`     | DateTime(2025, 1, 1).subtractDays(5)    | DateTime(2024, 12, 27) |
| `.addMonths(months)`      | DateTime(2025, 1, 1).addMonths(5)       | DateTime(2025, 6, 1)   |
| `.subtractMonths(months)` | DateTime(2025, 1, 1).subtractMonths(5)  | DateTime(2024, 8, 1)   |
| `.addYears(years)`        | DateTime(2025, 1, 1).addYears(5)        | DateTime(2030, 1, 1)   |
| `.subtractYears(years)`   | DateTime(2025, 1, 1).subtractYears(5)   | DateTime(2020, 1, 1)   |
| `.addBusinessDays(days)`  | DateTime(2025, 1, 1).addBusinessDays(5) | DateTime(2025, 1, 8)   |

</details>


🔄 **Master time manipulation and become the Flutter Time Lord!**

---

### 📂 **File Extensions – Handle Files Like a Pro!**

<details>

<summary>📁 File Extensions (Click to open)</summary>

| Extension                     | Example                                   | Output                 |
|:------------------------------|:------------------------------------------|------------------------|
| `.fileFormattedSize()`        | `File('path').fileFormattedSize()`        | 500 MB                 |
| `.filePath()`                 | `File('path').filePath()`                 | /emulated/0/storage... |
| `.fileExtension()`            | `File('path').fileExtension()`            | pdf, jpg, etc.         |
| `.fileNameWithoutExtension()` | `File('path').fileNameWithoutExtension()` | myAwesomeFile          |

</details>

🗂️ **Stop wrestling with file paths like it’s 1999!**

---

### 🔖 **Future Extensions – Async Like a Boss!**

💡 Tired of waiting for your Futures like they're stuck in dial-up internet? Say hello to **instant gratification**!
These extensions turn async from a patience test into a **speedrun to success**—no more unnecessary delays, retries, or
timeout meltdowns!

<details>

<summary>🕰️ Future Extensions (Click to reveal the magic)</summary>

| Extension                                      | What It Does (In Normal-Person Terms)                          | Example                                                            |
|------------------------------------------------|----------------------------------------------------------------|--------------------------------------------------------------------|
| `.wrapInCompleter()`                           | Turns your Future into a **Completer** like a pro.             | `myFuture.wrapInCompleter()`                                       |
| `.isComplete()`                                | Checks if a Future is **donezo** or still playing hard to get. | `myFuture.isComplete()`                                            |
| `.retry(retries, delay)`                       | Gives your Future **extra lives** (great for network calls).   | `myFuture.retry(3, delay: Duration(seconds: 2))`                   |
| `.timeoutWithFallback(timeout, fallbackValue)` | **Stops waiting** after a timeout and gives a backup plan.     | `myFuture.timeoutWithFallback(Duration(seconds: 5), fallbackData)` |
| `.runAfterDelay(delay)`                        | **Hits snooze** before running the Future.                     | `myFuture.runAfterDelay(Duration(seconds: 2))`                     |

</details>

<details>

<summary>🌀 Future Iterable Extensions (Click to reveal the magic)</summary>

| Extension                     | What It Does (In Normal-Person Terms)                                      | Example                            |
|-------------------------------|----------------------------------------------------------------------------|------------------------------------|
| `.runWithLimit(limit)`        | Runs multiple Futures **at once**, but limits how many run simultaneously. | `myFutures.runWithLimit(3)`        |
| `.runWithLimitOrdered(limit)` | Runs multiple Futures **in order**, with limited concurrent executions.    | `myFutures.runWithLimitOrdered(2)` |

</details>

<details>

<summary>📋 String Future Extensions (Click to reveal the magic)</summary>

| Extension            | What It Does (In Normal-Person Terms)                     | Example                                   |
|----------------------|-----------------------------------------------------------|-------------------------------------------|
| `.copyToClipboard()` | Copies a string to the clipboard **like a sneaky ninja**. | `await 'Hello, world!'.copyToClipboard()` |

</details>

💥 Wave goodbye to async chaos and say hello to Future-powered hyperspeed! No more waiting in the async DMV line—your
code is now on rollerblades. 🛼⚡

---

### 📦 **Generator Extensions – Auto-Magic String Generation!**

_NB: String generator methods should be used on Empty Strings for the best results._

<details>

<summary>🔠 String Generator Extensions (Click to open)</summary>

| Extension                                | Example                               | Output                                |
|:-----------------------------------------|:--------------------------------------|---------------------------------------|
| `.generateLoremIpsum(wordCount)`         | `"".generateLoremIpsum(wordCount: 5)` | `Lorem ipsum dolor sit amet`          |
| `.generateUUID(length)`                  | `"".generateUUID(length: 10)`         | `Random UUID`                         |
| `.generateClipboardContents(textIfNull)` | `"".generateClipboardContents()`      | `Returns a String clipboard contents` |
| `.generateRandomString(length)`          | `"".generateRandomString(10)`         | `Random 10-character string`          |

</details>

📝 **Because manually typing random text is so last year!**

---

### 📋 **List Extensions – Sorting, Chunking, and More!**

<details>

<summary>📜 List Extensions (Click to open)</summary>

| Extension                  | Example                                                                                | Output                                                   |
|:---------------------------|:---------------------------------------------------------------------------------------|----------------------------------------------------------|
| `.firstOrNull()`           | ["hello", "world", "awesome"].firstOrNull()                                            | hello                                                    |
| `.lastOrNull()`            | ["hello", "world", "awesome"].lastOrNull()                                             | awesome                                                  |
| `.sortBy()`                | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].sortBy((car) => car)                | ["Aston Martin", "BMW", "Ferari", "Lambo", "Urus"]       |
| `.sortByAndReturnSorted()` | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].sortByAndReturnSorted((car) => car) | ["Aston Martin", "BMW", "Ferari", "Lambo", "Urus"]       |
| `.shuffled()`              | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].shuffled()                          | ["Ferari", "Aston Martin", "BMW", "Lambo", "Urus"]       |
| `.chunked(size)`           | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].chunked(2)                          | [['Urus', 'BMW'], ['Aston Martin', 'Ferari'], ['Lambo']] |

</details>

📌 **Because sorting lists manually is for mere mortals!**

---

### 🔢 **Number Extensions – Math is Hard, Let’s Make It Easy**

<details>

<summary>🕞 Number Duration Extensions</summary>

| Extension       | Example          | Output                    |
|:----------------|:-----------------|---------------------------|
| `.days`         | `5.days`         | Duration(days: 5)         |
| `.hours`        | `5.hours`        | Duration(hours: 5)        |
| `.minutes`      | `5.minutes`      | Duration(minutes: 5)      |
| `.seconds`      | `5.seconds`      | Duration(seconds: 5)      |
| `.milliSeconds` | `5.milliSeconds` | Duration(milliSeconds: 5) |
| `.microSeconds` | `5.microSeconds` | Duration(microSeconds: 5) |

</details> 

<details>

<summary>💰 Number Currency Extensions</summary>

| Extension          | Example                  | Output      |
|:-------------------|:-------------------------|-------------|
| `.toCurrency()`    | `100000.toCurrency()`    | KES 100,000 |
| `.toAbbreviated()` | `100000.toAbbreviated()` | 100K        |

</details> 

🧠 **Because numbers should work for you, not the other way around.**

---

### 🔤 **String Extensions – Tame Your Text Like a Pro!**

<details>

<summary>🔑 Validation String Extensions (Click to open)</summary>

| Extension            | Example                         | Output  |
|:---------------------|:--------------------------------|---------|
| `.isEmailValid()`    | `"badEmail.com".isEmailValid()` | `false` |
| `.isPasswordValid()` | `"weak12".isPasswordValid()`    | `false` |
| `.isValidURL()`      | `"weirdurl//".isValidURL()`     | `false` |

</details>

<details>

<summary>🌍 Global String Extensions (Click to open)</summary>

| Extension                            | Example                                           | Output        |
|:-------------------------------------|:--------------------------------------------------|---------------|
| `.capitalizeFirstLetter()`           | `"hello".capitalizeFirstLetter()`                 | `Hello`       |
| `.capitalizeFirstLetterOfEachWord()` | `"hello world".capitalizeFirstLetterOfEachWord()` | `Hello World` |
| `.getLastNCharacters(n)`             | `"hello".getLastNCharacters(2)`                   | `lo`          |
| `.mask(visibleCount)`                | `"helloworld".mask()`                             | `he******ld`  |
| `.reverse()`                         | `"hello".reverse()`                               | `olleh`       |
| `.truncateName()`                    | `"Ken Starry".truncateName()`                     | `Ken S.`      |

</details>

<details>

<summary>🕵️ Regex String Extensions (Click to open)</summary>

| Extension                             | Example                                              | Output               |
|:--------------------------------------|:-----------------------------------------------------|----------------------|
| `.extractDigits()`                    | `"abc123".extractDigits()`                           | `"123"`              |
| `.removeAllDigits()`                  | `"abc123".removeAllDigits()`                         | `"abc"`              |
| `.removeAllWordsStartingWithNumber()` | `"1abc 2def ghi".removeAllWordsStartingWithNumber()` | `"ghi"`              |
| `.isDigitsOnly()`                     | `"12345".isDigitsOnly()`                             | `true`               |
| `.isTextOnly()`                       | `"abc".isTextOnly()`                                 | `true`               |
| `.removeAllWhiteSpaces()`             | `"a b c".removeAllWhiteSpaces()`                     | `"abc"`              |
| `.getWords()`                         | `"Hello world!".getWords()`                          | `["Hello", "world"]` |

</details>

<details>

<summary>🔢 String Formatter Extensions (Click to open)</summary>

| Extension                  | Example                           | Output          |
|:---------------------------|:----------------------------------|-----------------|
| `.capitalizeFirstLetter()` | `'hello'.capitalizeFirstLetter()` | `'Hello'`       |
| `.toTitleCase()`           | `'hello world'.toTitleCase()`     | `'Hello World'` |
| `.toCamelCase()`           | `'hello_world'.toCamelCase()`     | `'helloWorld'`  |
| `.toSlug()`                | `'Hello World!'.toSlug()`         | `'hello-world'` |
| `.toOrdinal()`             | `'23'.toOrdinal()`                | `'23rd'`        |
| `.toBase64()`              | `'Hello'.toBase64()`              | `'SGVsbG8='`    |
| `.fromBase64()`            | `'SGVsbG8='.fromBase64()`         | `'Hello'`       |

</details>

<details>

<summary>💰 String Currency Extensions</summary>

| Extension               | Example                         | Output    |
|:------------------------|:--------------------------------|-----------|
| `.thousandNumberFormat` | `'100000'.thousandNumberFormat` | '100,000' |
| `.cleanNumbers`         | `'100,000'.cleanNumbers`        | '100000'  |

</details> 

🔠 **Say goodbye to messy text handling forever!**

---

### 🖼️ **Widget Extensions – Supercharge Your Widgets!**

<details>

<summary>🧩 Widget Extensions (Click to open)</summary>

| Extension          | Example                                                             | Output                                                                         |
|--------------------|---------------------------------------------------------------------|--------------------------------------------------------------------------------|
| `clickableMouse`   | `Text('Click me').clickableMouse(onTap: () { print('Clicked'); })`  | A text widget that shows a mouse pointer on hover and prints 'Clicked' on tap. |
| `expanded`         | `Text('Expanded').expanded()`                                       | A text widget wrapped with an `Expanded` widget.                               |
| `flexibe`          | `Text('Flexible').flexibe()`                                        | A text widget wrapped with a `Flexible` widget.                                |
| `padding`          | `Text('Padded').padding(padding: EdgeInsets.all(16))`               | A text widget with 16 pixels of padding on all sides.                          |
| `align`            | `Text('Aligned').align(alignment: Alignment.centerRight)`           | A text widget aligned to the center right of its parent.                       |
| `clip`             | `Image.network('url').clip(borderRadius: BorderRadius.circular(8))` | An image widget clipped with an 8-pixel border radius.                         |
| `removeScrollbar`  | `ListView().removeScrollbar(context)`                               | A `ListView` without a scrollbar.                                              |
| `addScrollbar`     | `ListView().addScrollbar(context)`                                  | A `ListView` with a scrollbar.                                                 |
| `visibility`       | `Text('Visible').visibility(visible: false)`                        | A text widget that is not visible.                                             |
| `invinsible`       | `Text('Invisible').invinsible()`                                    | A text widget that is not visible.                                             |
| `visible`          | `Text('Visible').visible()`                                         | A text widget that is visible.                                                 |
| `addSelectionArea` | `Text('Selectable').addSelectionArea()`                             | A text widget that can be selected.                                            |
| `center`           | `Text('Centered').center()`                                         | A text widget centered within its parent.                                      |

</details>

<details>

<summary>🛠️ Scaffold Extensions (Click to open)</summary>

| Extension               | Example                                                                                                                                                                       | Output                                                                                   |
|:------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------|
| `.addAnnotatedRegion()` | `Scaffold().addAnnotatedRegion(statusBarColor: Colors.red, statusBarBrightness: Brightness.dark, navigationBarColor: Colors.blue, navigationBarBrightness: Brightness.light)` | A `Scaffold` widget with customized status bar and navigation bar colors and brightness. |

</details>

<details>

<summary>🔗 Text Extensions (Click to open)</summary>

| Extension        | Example                                                                                                      | Output                                                                                               |
|:-----------------|:-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| `.addHyperLinks` | `Text('Click here for more info').addHyperLinks(hyperLinkTexts: ['here'], onHyperlinkClicked: (word) => {})` | A `Text` widget with the word "here" as a hyperlink that triggers the `onHyperlinkClicked` function. |

</details>

🖍️ **Make your widgets do more with less code!**

---

## ⏳ **Coming Soon – The Future is Bright!**

### 📦 **Animation Extensions – Because Motion is Magic!**

_(Coming soon… if I ever stop procrastinating.)_

---

### 🎭 **Widget Generators – The Magic is Brewing! ☕🔮**

_(Coming soon... currently summoning the code wizards for this one. 🧙‍♂️✨)_

---

## 🤝 **Contributors**

A huge shoutout to the amazing people who have contributed to making **Flutter Extend** even more awesome! 🎉

<div>

<table style="border: none;">
  <tr style="border: none;">
    <a href="https://github.com/KenStarry" target="_blank"><td style="border: none; text-align: center; vertical-align: middle;">
        <img src="https://github.com/KenStarry.png" width="80" style="border-radius: 50%;"  alt="KenStarry"/><br /><sub><b>KenStarry(Owner)</b></sub></td>
</a>
    <a href="https://github.com/okelloEnos" target="_blank"><td style="border: none; text-align: center; vertical-align: middle;">
        <img src="https://github.com/okelloEnos.png" width="80" style="border-radius: 50%;"  alt="Enos Okello"/><br /><sub><b>Enos Okello</b></sub></td>
</a>

<a href="https://github.com/MohammedHishamFarouk" target="_blank"><td style="border: none; text-align: center; vertical-align: middle;">
<img src="https://github.com/MohammedHishamFarouk.png" width="80" style="border-radius: 50%;"  alt="Mohammed Hisham"/><br /><sub><b>
Mohammed Hisham</b></sub></td>
</a>

  </tr>
</table>

</div>

---

## 👥 **Want to Contribute?**

🛠 Found something cool to add? **Please read our [**Contribution Guidelines**](CONTRIBUTING.md) before making a pull
request.**

👾 **Join the Fun!** We love developers who break things (and then fix them).

---

## 📘 **Useful Links – Because You’ll Need ‘Em**

🔗 **[Package on pub.dev](https://pub.dev/packages/flutter_extend)**  
🔗 **[GitHub Repo](https://github.com/KenStarry/flutter_extend/tree/main/example/lib)**  
📖 **[Flutter Documentation](https://docs.flutter.dev)**  
📒 **[Dart Documentation](https://dart.dev/docs)**

---

## Examples

📚 Enough talk, time for action! Want to see these extensions in action? Head over to our [**examples directory
**](https://github.com/KenStarry/flutter_extend/tree/main/example/lib) directory and witness the magic firsthand! ✨
🔍 **See. Try. Enjoy. Repeat.**

_(Warning: May cause extreme excitement and spontaneous coding sprees.) 😆_

---

## 🐝 **License – Go Wild!**

This package is [**licensed under MIT**](https://github.com/KenStarry/flutter_extend/blob/main/LICENSE), meaning you can
use it, modify it, and show it off to your friends. 🎉

---

🎉 **That’s it, folks!** Now go forth and write Flutter code like an absolute **legend**. 🚀💙