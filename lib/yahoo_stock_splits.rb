module YahooStockSplits

  require 'open-uri'
  require 'nokogiri'

  def YahooStockSplits.get(symbol)

    # Jul 3, 1989 [2:1]
    re = /(.+)\[(\d+):(\d+)\]/

    url = "http://finance.yahoo.com/q/bc?s=#{symbol}+Basic+Chart"
    doc = Nokogiri::HTML(open(URI.parse(url)))
    doc.css("center nobr").inject([]) do |splits, split|
      md = re.match split
      splits << [Date.parse(md[1]).strftime('%Y-%m-%d'), md[2].to_i, md[3].to_i] if md
    end

  end
end
