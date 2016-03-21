# docker-coffeescript

Dockerfile for installing IcedCoffeeScript 108.0.9 on Ubuntu 14.04

## How to use

### Check IcedCoffeeScript version

```console
$ docker run -it --rm jayjanssen/icedcoffeescript iced --version
```

### Open REPL

```console
$ docker run -it --rm jayjanssen/coffeescript iced
```

### Work with source codes

Make your code at docker host.

hello.coffee:

```coffeescript
console.log("Hello World!")
```

Then you can run it by mounting with `-w` option.

```console
$ docker run -it --rm -v `pwd`:/pwd -w /pwd jayjanssen/icedcoffeescript iced hello.coffee
Hello World!
```

Also you can compile it.

```console
$ docker run -it --rm -v `pwd`:/pwd -w /pwd jayjanssen/icedcoffeescript iced -c hello.coffee
```

### Tips

Alias docker command in your .bashrc:

```
alias="docker run -it --rm -v `pwd`:/pwd -w /pwd jayjanssen/icedcoffeescript iced"
```
