Piet-Binary
===========

Description
-----------

Piet-Binary its a gem that provides binaries for use with the [Piet](https://github.com/albertbellonch/piet) gem.

Its an harmless gem - you can add to your Gemfile without collateral effects. It will only be activated if you use Piet gem and you don't have the jpegoptim/optipng binaries (and any other used by the Piet gem) at your system.

This gem haven't the pretension to be an all-case solution to the problem of lack of binaries required by Piet in the system. But will resolve the problem in the mosts cases. If you use this gem and Piet still accuse a "not found" error for the binaries tools (jpegoptim/optipng), you must to manually install the tools at your system. In this case you can help to improve this gem and add the missing binaries (see the "Helping this gem" section).


Why?
----

This gem has the purpose to make the Piet gem works automagically, without having to manually install the jpegoptim/optipng tools. This is necessary to Piet work if you are using Heroku as your host, for instance, and in many others hosting providers (mainly the shared ones) who doesn't allow to compile and/or install apps.


Installation
------------

```bash
gem install piet-binary
```

or, if you are using Rails just add to your Gemfile (and, of course, do a "bundle install"):

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

Just use "require" to load (not necessary in Rails):

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
