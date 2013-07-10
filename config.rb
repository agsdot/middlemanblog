require 'bootstrap-sass'

###
# Settings
###

set :site_url, "http://agsdot.github.io/middlemanblog/"

###
# Compass
###

# Change Compass configuration
compass_config do |config|
#   config.output_style = :compact
  config.http_path = "/"
  config.images_dir = "images"
  config.javascripts_dir = "javascripts"
end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end


activate :blog do |blog|
  blog.prefix         = "blog"
  blog.permalink      = ":title.html"
  blog.taglink        = "tags/:tag.html"
  blog.paginate       = true
  blog.layout         = "post"
  blog.summary_length = 250
end


activate :livereload

Time.zone = "America/Los_Angeles"

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true


activate :syntax

set :css_dir, 'stylesheets/'

set :js_dir, 'javascripts'

set :images_dir, 'images'


activate :directory_indexes
page "/404.html", directory_index: false
page "/feed.xml", :layout => false


set :relative_links, true

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_path, "/images/"
end

activate :deploy do |deploy|
  deploy.method = :git
end
