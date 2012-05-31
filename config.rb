activate :directory_indexes

require 'coffee-filter'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end
