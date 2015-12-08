require 'rubygems'
require 'sitemap_generator'

def upload_sitemap
  SitemapGenerator::Sitemap.default_host = "http://hive-empire.com"
  SitemapGenerator::Sitemap.create do
    add 'index.html', :changefreq => 'daily', :priority => 0.9
    add 'about.html', :changefreq => 'weekly'
  end
end

upload_sitemap