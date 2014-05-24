![Travis status](https://travis-ci.org/dalibor/sanatorium.com.mk.png)

# Sanatorium Official Website

* http://sanatorium.com.mk


## Development Notes:

Setup database

```
rake db:create
rake db:migrate
rake db:seed
```

Run tests

```
rspec spec
cucumber features
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
