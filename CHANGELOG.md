# Changelog

All notable changes to Clipboard Button are documented here.

## 1.1.0 - 2026-11-20

- Draw the button with a Nerd Font glyph (`nf-md-clipboard_text`) through the
  stock `BarIconButton`, so it matches the other bar icons in size, colour and
  hinting and stays sharp at fractional display scales.
- Remove `icon.svg` and the SVG/`MultiEffect` rendering path.
- Require a Nerd Font as the bar font (the Omarchy default).
- Change the plugin id to `io.github.bonnyatole.clipboard-button`. Remove the
  previous plugin and reinstall from this repository; the bar entry in
  `shell.json` must use the new id.
- Update the README, manifest links and credits for the fork.

## 1.0.0 - 2026-08-29

- Add a native, theme-aware Omarchy bar button for clipboard history.
- Delegate clicks to Omarchy's built-in clipboard overlay over local shell IPC.
- Add accessible labeling and HiDPI-aware SVG rendering.
- Document installation, updates, removal, privacy, and security boundaries.
