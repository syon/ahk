Hyperkey <kbd>CapsLock</kbd>
============================

Emulates hyperkey (yet another modifier key) on Windows.  
Main use case is getting same experience of macOS keyboard.


## keymap

Hyperkey is assigned to <kbd>CapsLock</kbd>.

| Shortcut | Perform | For |
|----------|---------|-----|
| <kbd>CapsLock</kbd> | <kbd>F13</kbd> | IME OFF (see below) |
| <kbd>CapsLock</kbd> + <kbd>B</kbd> | <kbd>◀</kbd> | Left |
| <kbd>CapsLock</kbd> + <kbd>F</kbd> | <kbd>▶</kbd> | Right |
| <kbd>CapsLock</kbd> + <kbd>P</kbd> | <kbd>▲</kbd> | Up |
| <kbd>CapsLock</kbd> + <kbd>N</kbd> | <kbd>▼</kbd> | Down |
| <kbd>CapsLock</kbd> + <kbd>A</kbd> | <kbd>Home</kbd> | Line-Head |
| <kbd>CapsLock</kbd> + <kbd>E</kbd> | <kbd>End</kbd> | Line-End |
| <kbd>CapsLock</kbd> + <kbd>,</kbd> | <kbd>Ctrl</kbd> + <kbd>Home</kbd> | Head of File |
| <kbd>CapsLock</kbd> + <kbd>.</kbd> | <kbd>Ctrl</kbd> + <kbd>End</kbd> | End of File |
| <kbd>CapsLock</kbd> + <kbd>D</kbd> | <kbd>Delete</kbd> | Forward Delete |
| <kbd>CapsLock</kbd> + <kbd>H</kbd> | <kbd>Backspace</kbd> | Backspace |
| <kbd>CapsLock</kbd> + <kbd>M</kbd> | <kbd>Enter</kbd> | Enter |
| <kbd>CapsLock</kbd> + <kbd>Q</kbd> | <kbd>Alt</kbd> + <kbd>F4</kbd> | Quit |
| <kbd>CapsLock</kbd> + <kbd>Enter</kbd> | <kbd>F2</kbd> | Rename / Edit |
| <kbd>CapsLock</kbd> + <kbd>R</kbd> | <kbd>F5</kbd> | Reload |
| <kbd>CapsLock</kbd> + <kbd>C</kbd> | <kbd>Ctrl</kbd> + <kbd>C</kbd> | Copy |
| <kbd>CapsLock</kbd> + <kbd>V</kbd> | <kbd>Ctrl</kbd> + <kbd>V</kbd> | Paste |
| <kbd>CapsLock</kbd> + <kbd>S</kbd> | <kbd>Ctrl</kbd> + <kbd>S</kbd> | Save |
| <kbd>CapsLock</kbd> + <kbd>W</kbd> | <kbd>Ctrl</kbd> + <kbd>W</kbd> | Close |
| <kbd>CapsLock</kbd> + <kbd>L</kbd> | <kbd>Ctrl</kbd> + <kbd>L</kbd> | Location bar |
| <kbd>CapsLock</kbd> + <kbd>T</kbd> | <kbd>Ctrl</kbd> + <kbd>T</kbd> | New Tab |
| <kbd>CapsLock</kbd> + <kbd>Space</kbd> | <kbd>Click</kbd> | Click |


## setup

### Remap CapsLock Key

In this script, Hyperkey is assigned to <kbd>F15</kbd>.
Standard keyboards don't have <kbd>F15</kbd>, therefore,
I choose it.
So you need to remap <kbd>CapsLock</kbd> to <kbd>F15</kbd>.

In order to remap <kbd>CapsLock</kbd> key,
I recommend __SharpKeys__.

- [Releases · randyrants/sharpkeys](https://github.com/randyrants/sharpkeys/releases)

### IME Settings for Japanese (Optional)

#### Google 日本語入力

| モード | 入力キー | コマンド |
|-------|----------|---------|
| 入力文字なし | <kbd>Katakana</kbd> | IMEを有効化 |
| 入力文字なし | <kbd>Muhenkan</kbd> | IMEを無効化 |
| 入力文字なし | <kbd>F13</kbd> | IMEを無効化 |


## forked from

- https://stackoverflow.com/questions/40435980
