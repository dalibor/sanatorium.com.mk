![Travis status](https://travis-ci.org/dalibor/sanatorium.com.mk.png)

# Sanatorium Official Website

* http://sanatorium.com.mk


## Development Notes:

Setup database

```
cp config/database.yml.template config/database.yml
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

Run tests

```
bundle exec rspec spec
bundle exec cucumber features
```


## Deploy

Setup production (run only once)

```
gitploy production setup
```

Deploy to production

```
gitploy production
```


## Authors

Dalibor Nasevic ([@dalibor](https://github.com/dalibor))

Milan Nasevic ([@mnasevic](https://github.com/mnasevic))
