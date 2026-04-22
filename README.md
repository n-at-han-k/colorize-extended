# colorize-extended

A fork of [colorize](https://github.com/fazibear/colorize) that adds chainable `.on.color` syntax sugar for setting background colors.

## Usage

```ruby
require 'colorize_extended'

"red text on a blue background".red.on.blue
"bold green on cyan".green.on.cyan.bold
"just a yellow background".on.yellow
```

## Colors

```
black
red
green
yellow
blue
magenta
cyan
white
light_black
light_red
light_green
light_yellow
light_blue
light_magenta
light_cyan
light_white
grey
gray
```
