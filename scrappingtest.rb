require 'open-uri'
require 'nokogiri'

url = "https://www.emilehenry.com/fr/recettes/tourte-sucree-a-la-patate-douce-et-a-la-vanille.html"
html_doc = Nokogiri::HTML(open(url))

html_doc.search('h4 mb-3 mb-md-5').each do |element|
  puts element.text
end
