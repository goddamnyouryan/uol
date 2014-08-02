###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page '/source/index.html', :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

class ViewHelper < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def section_header(text, number)
      id = "header-#{number}"
      <<-eos
        <h2 data-1000-center="top: -1000px;" data-center="top: 0;" id="#{id}">
          <div id="number">#{number}</div>
          <span data-1000-center="width:0%;" data-anchor-target="##{id}" data-center="width: 100%;"></span>
          #{text}
        </h2>
      eos
    end
  end
end
::Middleman::Extensions.register(:view_helper, ViewHelper)
activate :view_helper

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

###
# Gem
###
require 'slim'

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_html
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
