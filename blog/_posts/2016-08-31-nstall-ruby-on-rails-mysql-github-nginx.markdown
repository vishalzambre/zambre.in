---
layout: post
title:  "Install and Use Jenkins on Ubuntu 12.04"
date:   2016-08-31 12:12:56
categories: ruby-on-rails
---
Install dependancies

{% highlight ruby %}
sudo apt-get install zlib1g zlib1g-dbg zlib1g-dev sqlite3 libsqlite3-dev build-essential openssl libreadline6 libreadline6-dev curl git-core libssl-dev libyaml-dev libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion g++ openjdk-6-jdk git nodejs
{% endhighlight %}

Install rvm with stable ruby version
{% highlight ruby %}
curl -L https://get.rvm.io | bash -s stable --ruby
{% endhighlight %}

Edit .bash_profile file and add following file then press Ctrl-D if you are using cat

{% highlight ruby %}
cat >>~/.bash_profile
{% endhighlight %}

Copy following line and paste to console
{% highlight ruby %}
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
{% endhighlight %}

Press control and D to save changes
{% highlight ruby %}
Ctrl+D
{% endhighlight %}

Install latest rubygems
{% highlight ruby %}
rvm rubygems latest
{% endhighlight %}
