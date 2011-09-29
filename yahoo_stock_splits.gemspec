# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yahoo_stock_splits/version"

Gem::Specification.new do |s|
  s.name        = "yahoo_stock_splits"
  s.version     = YahooStockSplits::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Javier Vidal"]
  s.email       = ["zanaguara@gmail.com"]
  s.homepage    = "https://github.com/javiervidal/yahoo_stock_splits"
  s.summary     = %q{Retrieve stock splits from Yahoo! Finance}
  s.description =  <<END_OF_DESC
yahoo_stock_splits retrieves stock splits from Yahoo! Finance. Split information is not available via CSV download, so this gem scraps the basic chart page of the desired stock.

It returns an array of arrays that contain the date, post split shares, and pre split shares, in that order.

END_OF_DESC

  s.rubyforge_project = "yahoo_stock_splits"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('nokogiri')
end
