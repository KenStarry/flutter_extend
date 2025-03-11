# 🚀 Contributing to flutter_extend

Oh wow, you want to contribute? YOU’RE AWESOME! 🎉

Before you unleash your inner Flutter wizard, let’s lay down some ground rules—because even chaos needs some structure.

---

## 🌳 Branching Strategy (a.k.a. "Where Should I Put My Genius Code?")

- **🚫 NO TOUCHY the `main` branch!** It’s sacred and only updated for releases.
- **✅ ALL pull requests should go to the `dev` branch.**
- If you send a PR to `main`, a cyber duck will personally quack at you. 🦆

---

## 🛠️ How to Contribute Like a Boss

1. **Fork this repo** – Make your own playground.
2. **Clone it** – Bring the fun to your local machine:
   ```bash
   git clone https://github.com/KenStarry/flutter_extend.git
   cd flutter_extend
   ```
3. **Set upstream (fancy term, just do it)**
   ```bash
   git remote add upstream https://github.com/KenStarry/flutter_extend.git
   git fetch upstream
   ```
   
4. **Make a new branch from `dev`** - (BEHOLD, THE CHOSEN ONE)
   ```bash
   git checkout dev
   git pull upstream dev
   git checkout -b cool-new-feature
   ```
5. **Code your heart out ❤️**

6. **Test stuff** - (Don't break things, we have feelings too)
   ```bash
   flutter test
   ```

7. **Commit like a poet** - Describe your masterpiece
   ```bash
   git add .
   git commit -m "feat: Added a mind-blowing new String extension"
   ```

8. **Push it real good 🎶**
   ```bash
   git push origin cool-new-feature
   ```

9. **Open a Pull Request to dev** – Then sit back and wait for the magic.

---
## 🤓 Code Rules (a.k.a. "How to Not Make Maintainers Cry")

- **🧼 Write clean, readable code.** If your code looks like an ancient spell, rewrite it.
- **📝 Document your extensions!** A little love for future devs goes a long way
- **🪡 Keep PRs focused.** No **"fix typo"** + **"rewrite entire package"** combos, please.

---

## 🔍 PR Review Process

- We check your code (and your soul).
- If needed, we request changes (but we’ll be nice about it).
- Once approved, it gets merged into `dev`.
- `main` only updates when we make a new release **(BIG BOOM)**.

---

## 🎤 Final Words

- **🐛 Found a bug?** Open an issue!
- **💡 Got a wild idea?** Let’s talk before you build a rocket.
- **🍕 Bringing pizza?** Instant merge.

---

_**Thanks for contributing! 🚀✨**_