---
title: Crochet Pattern Generator
thumbnail: assets/images/crochetscreenshot.png
repo: https://github.com/codelazarus14/crochet-pattern-js
---
![A screenshot of the Crochet Pattern Generator home page](../assets/images/crochet1.png)

### [Link to the website](https://codelazarus14.github.io/crochet-pattern-js/)

Some time in the spring of 2023 I rekindled an old interest in crochet. As I started to browse sites like [ravelry.com](https://www.ravelry.com/) for more patterns, I noticed that many patterns existed online in common portable formats, such as blog pages or PDFs. Despite being easy to create, these didn't always seem the best suited to more complex patterns that involved a lot of flipping back and forth to find repeated rows or custom stitches defined at the start.

Initially I had the idea to write some kind of Markdown-esque crochet pattern format, which could then be parsed and presented through a GUI. However, this would have put a burden on the pattern author to learn an unusual, syntax-heavy way of writing patterns, not to mention lacking the ability to embed images in the same file.

Instead, I chose to create a JS-powered website for crochet patterns. After creating a pattern, it can be used directly along with any other saved patterns, each with an autosaving row counter to track the user's progress. Despite being hosted online, the website's functionality is entirely client-side, and all pattern data are saved locally.
