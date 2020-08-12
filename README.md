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
