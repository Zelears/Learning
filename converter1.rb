





require 'rubygems'
require 'nokogiri'
require 'csv'

all_the_things = []

xml = File.read('test.xml')
doc = Nokogiri::XML(xml)






doc.xpath('//o').each do |file|
  product_photo = file.xpath("./imgs/main").attr('url').text
  all_the_things << [product_photo]
end
CSV.open('new_file.csv', 'wb' ) do |row|
  row << ['product_photo']
all_the_things.each do |data|
row << data
end
end
