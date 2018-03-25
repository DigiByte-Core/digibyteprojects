DigiByteProjects
==========

[![DigiByte tip for next commit](http://DigiByteProjects.org/projects/16.svg)](http://DigiByteProjects.org/projects/16)


Donate DigiBytes to open source projects or make commits and earn DGB.

Official site: http://DigiByteProjects.org/

Development
===========

To run DigiByteProjects in development mode follow these instructions:

* Install [Ruby](https://www.ruby-lang.org/en/downloads/) 2.4.1 & RVM

apt install ruby

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --rails

source /usr/local/rvm/scripts/rvm
rvm install "ruby-2.4.1"

* Clone the repository
```
git clone https://github.com/digibyte/digibyteprojects.git
cd digibyteprojects/
```
* Install the [bundler](http://bundler.io/) gem (you may need root):
```
gem install bundler
sudo apt-get install libmysql-ruby libmysqlclient-dev
sudo apt-get install libmysqlclient-dev
```

* Install the sqlite3 development libraries

* Install the gems (without the production gems):
```
bundle install --without mysql postgresql
```

* Create `database.yml`.
```
cp config/database.yml{.sample,}
```

* Create `config.yml`
```
cp config/config.yml{.example,}
```

* Edit `config.yml`

* Initialize the database
```
    bundle exec rake db:migrate
```

* Make sure `digibyted` is running with RPC enabled

* Run the server


    bundle exec rails server

* Connect to the server at http://localhost:3000/


To update the project balances run this command:
```
    bundle exec rails runner "BalanceUpdater.work"
```

To retreive commits and send tips on project that do not hold tips:
```
    bundle exec rails runner "BitcoinTipper.work"
```

License
=======

[MIT License](https://github.com/digibyte/DigiByteProjects/blob/master/LICENSE)

Which is based on [Tip4commit](http://tip4commit.com/), [MIT License](https://github.com/tip4commit/tip4commit/blob/master/LICENSE), copyright (c) 2013-2014 tip4commit
