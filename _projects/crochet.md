---
title: Crochet Pattern Generator
thumbnail: assets/images/crochetscreenshot.png
repo: https://github.com/codelazarus14/crochet-pattern-js
---
![A screenshot of the Crochet Pattern Generator home page](../assets/images/crochet1.png)

### [Link to the website](https://codelazarus14.github.io/crochet-pattern-js/)

Some time in the spring of 2023 I rekindled an old hobby interest in crochet. As I started to browse sites like [ravelry.com](https://www.ravelry.com/) for more patterns, I noticed that many of them existed in common portable formats, such as a blog page or a PDF. Despite being easy to create, these didn't always seem the best suited to more complex patterns that involved a lot of flipping back and forth to find repeatedly-referenced rows or unique stitch combinations defined earlier in the pattern.

Initially I had the idea to write a custom plain text format and parser for crochet patterns, which would have allowed for patterns to be encoded in a format more useful for designing an interactive UI. However, this would have put more burden on the pattern author to learn the syntax and troubleshoot mistakes.

Instead, I opted to create a JS-powered website for managing patterns created through standard form elements. It allows users to create, preview, export, and track their progress through any number of patterns in one place. The website is entirely client-side as intended for personal convenience rather than being a public collection.
