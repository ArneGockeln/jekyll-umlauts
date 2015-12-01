# Umlauts Generator for Jekyll
This generator converts all umlauts äÄöÖüÜ and ßẞ in its correct html equivalent.
When the jekyll site is generated all umlauts will be converted to html.
```html
ü = &uuml; Ü = &Uuml;
ä = &auml; Ä = &Auml;
ö = &ouml; Ö = &Ouml;
ß = &szlig; ẞ = &#7838;
```

# Installation as plugin
- Download the release, extract it
- Add folder "_plugins" to your jekyll root directory
- Put the file "jekyll-umlauts.rb" into "_plugins"

# Installation as gem
```
gem install jekyll-umlauts
```

# Updating jekyll-umlauts
```
gem update jekyll-umlauts
```
