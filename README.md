# sanatorium.com.mk

* http://github.com/dalibor/sanatorium.com.mk

## DESCRIPTION:

Official web site of Macedonian metal band Sanatorium


## INSTALL:

- Install gems

```
bundle install
```

- Start server

```
bundle exec jekyll serve
```

## DEPLOY

Because we're using [jekyll-multiple-languages-plugin](https://github.com/kurtsson/jekyll-multiple-languages-plugin) that is not in Github Pages supported plugins, we build the final source in `_site` and push it to `gh-pages` branch that gets published.

```
JEKYLL_ENV=production bundle exec jekyll build
cd _site
git remote add origin git@github.com:dalibor/sanatorium.com.mk.git
git checkout -b gh-pages
touch .nojekyll
git add -A
git commit -m "Jekyll build"
git push origin gh-pages
```
