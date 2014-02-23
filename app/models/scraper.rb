class Scraper
	def self.scrape
		response = HTTParty.get('http://www.brainyquote.com/quotes/authors/t/taylor_swift.html')
		
		doc = Nokogiri::HTML(response.body)

		quotes = []
		#doc.css('.bqQuoteLink').each do |link|
		  # puts link.content
		doc.css('.bqQuoteLink a').each do |data|
		  #puts data.content
		  quotes << data.content
		end
		#quotes

		#size = quotes.count
		#index = rand(size)
		#quotes[index]
		quotes.sample
	end
end
