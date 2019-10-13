# bookmark

It is inspired from [Qiita bm command](https://qiita.com/mokemokechicken/items/69af0db3e2cd27c1c467?fbclid=IwAR3VERLg2jRjoYlbnxeRBqXBDGEfF9nYBSagi1IoX77ocWk3_yQQm7PXJC8)

## commands

* add path
if you add current path with auto number.
```
bmadd
```

if you add current path with define name.
```
bmadd [path nameh]
```
ex) `bmadd hoge`

* get list
```
bmls
```

or the command below without paramates.
```
bm
```

* move path
you use number or path name
```
bm [number]
```
ex) `bm 1`

```
bm [path name]
```
ex) `bm hoge`

* edit path setting file
it runs vi editor and open modify `~/.bmrc` file
```
vmvi
```

## help

where is file?

```
~/.bmrc
```
