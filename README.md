Piet-Binary
===========

Description
-----------

Piet-Binary is a gem which contains binaries for use with the [Piet](https://github.com/albertbellonch/piet) gem.
This is harmless gem - you can add to your Gemfile without collateral effects. It only will be activated if you use the Piet gem and you don't have jpegoptim/optipng binaries (and any other used by the Piet gem) in your system.
This gem doesn't have the pretention to be an all-case solution to the problem of lack of binaries required by Piet in the system. But will resolve the problem in the mosts cases. If you use this gem and Piet still accuse a not found error for the binaries tools (jpegoptim/optipng), you have to manually install the tools in the system. In this case you can help to improve this gem and add the missing binaries (see the "Helping this gem" section).


Why?
----

To Piet gem work without manually install jpegoptim/optipng in the system. This is necessary to Piet work, for example, with Heroku.


Installation
------------

```bash
gem install piet-binary
```

or, if you are using in Rails just add to your Gemfile (and, of course, install with "bundle install"):

```ruby
gem 'piet-binary'
```

This gem automatically calls the piet gem, so it's not necessary to call the piet gem. So, you can just replace this:
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

You can help this gem in 2 ways:
* keeping this gem with the latest version of the binaries
* adding platforms: today it only have a linux/64 bits binaries

To compile the jpegoptim, clone the last version of https://github.com/tjko/jpegoptim and execute the config with the "-static" CFLAG (it's necessary to create a non-dependable standalone exec file):

```bash
git clone https://github.com/tjko/jpegoptim.git
cd jpegoptim
CFLAGS="-static" ./configure
```
after this, copy the jpegoptim executable to the correct folder of this gem and submit a pull request.