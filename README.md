Piet-Binary
===========

Description
-----------

Piet-Binary is a gem which contains binaries for use with the [Piet](https://github.com/albertbellonch/piet) gem.

This is an harmless gem - you can add to your Gemfile without collateral effects. It will only be activated if you use the Piet gem and you don't have the jpegoptim/optipng binaries (and any other used by the Piet gem) in your system.

This gem haven't the pretention to be an all-case solution to the problem of lack of binaries required by Piet in the system. But will resolve the problem in the mosts cases. If you use this gem and Piet still accuse a not found error for the binaries tools (jpegoptim/optipng), you have to manually install the tools in the system. In this case you can help to improve this gem and add the missing binaries (see the "Helping this gem" section).


Why?
----

This gem has the purpose to make the Piet gem work without manually install the jpegoptim/optipng tools in the system. This is necessary to Piet work if you are using Heroku as your host, and in many others hosting providers (mainly the shared ones) who doesn't allow to compile and/or install apps.


Installation
------------

__------ WARNING! ------__

this gem ain't work with the [original piet gem](https://github.com/albertbellonch/piet). It's necessary to use [my version of piet](https://github.com/loureirorg/piet) to work, as appointed by @PikachuEXE user at the [issue #1](https://github.com/loureirorg/piet-binary/issues/1). My version is on proccess to be merged with the original version, so, probally in a few days this gem will work with the official piet gem. When this occour this warning will be erased.

so, in your Gemfile (before call piet-binary) use:
```ruby
gem 'piet', github: 'loureirorg/piet'
```
or
```ruby
gem 'piet', git: 'git://github.com/loureirorg/piet.git'
```

__------ END OF WARNING! ------__

 ```bash
gem install piet-binary
```

or, if you are using in Rails just add to your Gemfile (and, of course, install with "bundle install"):

```ruby
gem 'piet-binary'
```

This gem automatically calls the piet gem, so it's not necessary to you call the piet gem. In this case, you can just replace this:
```ruby
gem 'piet'
```
to this:
```ruby
gem 'piet-binary'
```


Usage
-----

You simply require the gem

```ruby
require 'piet-binary'
```


Helping this gem
----------------

You can help to improve this gem in 2 ways:
* keeping this gem updated, with the latests binaries
* adding platforms: today it only have a linux/64 bits binaries

To compile the jpegoptim in linux/osx, clone the last version at https://github.com/tjko/jpegoptim and execute the configure with the "-static" CFLAG (it's necessary to create a non-dependable standalone exec file):

```bash
git clone https://github.com/tjko/jpegoptim.git
cd jpegoptim
CFLAGS="-static" ./configure
make
```
after this, copy the jpegoptim executable to the correct folder in this gem (the bin folder) and submit a pull request.
