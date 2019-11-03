# bookmark

It is inspired from [Qiita bm command](https://qiita.com/mokemokechicken/items/69af0db3e2cd27c1c467?fbclid=IwAR3VERLg2jRjoYlbnxeRBqXBDGEfF9nYBSagi1IoX77ocWk3_yQQm7PXJC8)

It easily add your path as bookmark. And you can move ther path quickly.

## Install

With [Fisher](https://github.com/jorgebucaran/fisher)

```
fisher add shinriyo/bookmark
```

## commands

* Add path as bookmark
If you add current path with auto number.
```
bmadd
```

If you add current path with define name.
```
bmadd [path nameh]
```
ex) `bmadd hoge`

* Get list of bookmark
Just show list of bookmark.
```
bmls
```

Or the command below without paramates.
```
bm
```

* Move path you bookmark
You use number or path name.
```
bm [number]
```
ex) `bm 1`

```
bm [path name]
```
ex) `bm hoge`

* Edit path setting file
It runs vi editor and open modify `~/.bmrc` file.
```
bmvi
```

## help

* Where is file?
It is here.
```
~/.bmrc
```
