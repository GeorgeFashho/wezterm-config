# 🌿 WezTerm Garden

Welcome to the curated WezTerm setup that keeps the terminal feeling calm, glassy, and efficient. This repo houses a single `wezterm.lua`, but inside you will find carefully tuned colors, macOS niceties, and keybindings that bring muscle memory from GUI editors straight into the command line.

## Highlights
- **Lucid woodland palette** with matching ANSI/bright ramps and a dimmed inactive pane for high contrast without harsh edges.
- **Vertical dusk gradient** backdrop plus a blurred macOS window for a soft translucency effect.
- **Font stack on standby**: JetBrains Mono primary with SFMono Nerd Font and Menlo fallbacks to keep ligatures, glyphs, and Powerline icons available.
- **Fancy tab bar** styling that matches the palette end-to-end—no more clashing chrome.
- **Productivity shortcuts** mapping familiar macOS gestures (⌘, ⌥) onto shell-native control sequences.

## Colorway
```
Foreground   #e6f0df    Cursor      bg #d0e1c1 / fg #1e2a21
Background   #131a16    Selection  bg #2c3a30 / fg #f2f8ec
ANSI         #1f2722 #b26e55 #7f9f65 #c0a76a #4f8273 #8c7e92 #6b9f99 #d6e6cd
Brights      #27322b #d4856d #9bc07c #e2c279 #63a590 #a895ae #83c1b9 #eef6e6
```
- Tab bar, title bar, and gradient background (`#101611 → #162019 → #1b271f`) are harmonized so panes, chrome, and wallpaper feel cohesive.
- Inactive panes keep hue but reduce saturation and brightness for quick focus tracking.

## Window Experience
- Minimal decorations (`RESIZE`) keep screen real estate while maintaining draggable edges.
- `native_macos_fullscreen_mode = true` gives native swipeable spaces.
- 96% opacity paired with a 16px macOS blur creates a glass panel vibe.
- Generous gutter (`left/right 10px`, `top 14px`, `bottom 10px`) so text never hugs the frame.

## Keybinding Cheat Sheet
| Shortcut            | Sends                | Shell Effect                                          |
| ------------------- | -------------------- | ----------------------------------------------------- |
| ⌘⌫ / ⌘⌦            | `Ctrl+U`             | Wipe the current prompt line instantly                |
| ⌥⌫                 | `Esc` `⌫`            | Delete previous word (POSIX-friendly)                 |
| ⌥⌦                 | `Esc` `d`            | Delete next word                                     |
| ⌘← / ⌘→            | `Ctrl+A` / `Ctrl+E`  | Jump to line start / end                             |
| ⌥← / ⌥→            | `Esc` `b` / `Esc` `f`| Hop backward / forward a word                        |
| ⌘Z                 | `Ctrl+_`             | Invoke shell undo (e.g., zsh history undo)           |
| ⇧⌘Z               | `Ctrl+X` `Ctrl+_`    | Redo the last undo when supported                    |
| ⌘K                 | Clear scrollback     | Fresh viewport without losing the session            |
| ⌘F                 | Toggle fullscreen    | Distraction-free focus in one tap                   |

## Usage
1. Clone or symlink this repo into your WezTerm config directory (default: `~/.config/wezterm`).
2. Launch WezTerm—no restart needed if you use the built-in **Reload Configuration** (`⌘+Shift+R`).
3. Enjoy a terminal that feels cohesive, modern, and tuned for macOS workflows.

## Tweaks
- Want single-tab zen? Flip `hide_tab_bar_if_only_one_tab` to `true`.
- Prefer even more focus? Nudge `window_background_opacity` toward `0.9` for a deeper tint.
- Add your favorite powerline font by appending to `font_with_fallback`.

---
Built for people who live in the shell all day and still crave a touch of polish.
