<p align="center">
  <img
    height="30%"
    width="30%"
    src="img/logo.svg"
    alt="Old School YouTube Player"
    title="Old School YouTube Player"
  />
</p>

# Old School YouTube Player

![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fgreasyfork.org%2Fscripts%2F553724-old-school-youtube-player.json&query=total_installs&suffix=%20installs&label=greasy%20fork&color=%23670000&link=https%3A%2F%2Fgreasyfork.org%2Fen%2Fscripts%2F553724-old-school-youtube-player)
![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fopenuserjs.org%2Fmeta%2Fblakegearin%2FOld_School_YouTube_Player.meta.json&query=%24.OpenUserJS.installs%5B0%5D.value&suffix=%20installs&label=openuserjs&color=%23202d3b&link=https%3A%2F%2Fopenuserjs.org%2Fscripts%2Fblakegearin%2FOld_School_YouTube_Player)
[![License: GPL v3](https://img.shields.io/badge/license-GPLv3-blue.svg)](LICENSE)

This is a userstyle that updates YouTube's video player to the look & feel before the 2025 redesign.

| Before | After (Userstyle) |
|:-:|:-:|
| <img src = "img/screenshots/before-userstyle.png" alt = "YouTube player without userstyle" title = "YouTube player without userstyle" /> | <img src = "img/screenshots/after-userstyle.png" alt = "YouTube player with the userstyle applied" title = "YouTube player with the userstyle applied" /> |

| Original Design | Userstyle |
|:-:|:-:|
| <img src = "img/screenshots/original-design.png" alt = "YouTube player original design" title = "YouTube player original design" /> | <img src = "img/screenshots/after-userstyle.png" alt = "YouTube player with the userstyle applied" title = "YouTube player with the userstyle applied" /> |

## Features

- [x] Near pixel perfect recreation
- [x] Simple, auditable CSS

## Usage

1. Install a userstyle manager like [Stylus](https://add0n.com/stylus.html)
1. Go to [UserStyles.world](https://userstyles.world/style/24856/old-school-youtube-player) or [GreasyFork](https://greasyfork.org/en/scripts/553724-old-school-youtube-player)
1. Click the install button
1. The userstyle will open in your userstyle manager where you can install it

### Userscript Variant

1. Install a userscript manager like [Tampermonkey](https://www.tampermonkey.net), [Violentmonkey](https://violentmonkey.github.io), or [Greasemonkey](https://addons.mozilla.org/en-US/firefox/addon/greasemonkey/)
1. Go to [GreasyFork](https://greasyfork.org/en/scripts/553816-old-school-youtube-player) or [OpenUserJS](https://openuserjs.org/scripts/blakegearin/Old_School_YouTube_Player)
1. Click the install button
1. The userscript will open in your userscript manager where you can install it

**Note:** The userscript variant is a simple wrapper around the userstyle, so it's still CSS-based.

## Documentation

### Archiving

To help maintain this project and in the spirit of aiding future developers, the HTML of the movie player and the bottom element will be archived periodically.

### Maintenance

This was built with long-term maintenance in mind. All visual assets are locally stored to avoid external dependencies.

Unlike other solutions, this does not rely on JavaScript and **should continue to work** after YouTube removes the old player entirely. However, if YouTube makes significant changes to their player, like deprecating or combining elements, this userstyle does **not** aim to fill those gaps, since it is CSS-based. So it will not be a perfect recreation forever, but it will retain the same look and feel as long as possible within the given constraints.

This was designed for desktop browsers and retain compatibility with [SponsorBlock](https://sponsor.ajay.app/). For mobile devices, I recommend using [Grayjay](https://grayjay.app/) instead of the YouTube website or app.

**Note:** The settings menu is not modified by this userstyle. It's considered outside the scope of this project due to it being a separate, pop-up element and prone to changes video to video and over time by YouTube.

## Background

In 2025, YouTube began A/B testing new updates for their player to better support AR/VR devices. In October, YouTube began a [full rollout](https://support.google.com/youtube/thread/380540176) with no visual option to revert.

## Credit

- Archiving formatter: [Web Formatter](https://webformatter.com/html)
- [Control Panel for YouTube](https://soitis.dev/control-panel-for-youtube) for enabling temporary access to the old player

## Disclaimer

Not affiliated with Alphabet Inc., Google, YouTube, or any of their affiliations.

## Related Projects

Miss the old navigation of GitHub too? Check out my userscript: [GitHub Custom Global Navigation](https://github.com/blakegearin/github-custom-global-navigation#readme)

Miss the old design of Slack too? Check out my userscript: [Old School Slack](https://github.com/blakegearin/old-school-slack#readme)

Want to customize favicons for different YouTube tabs? I'm working on a solution for that too: [Favicon Packs](https://github.com/blakegearin/favicon-packs#readme)
