require 'nokogiri'
require 'open-uri'
require 'pry'
require 'csv'

all_the_things = []
document = Nokogiri::HTML.parse(open('https://swiatlo-w-domu.pl/produkty-metal/'))
add_img = document.css('.elementor-widget-wrap').map do |a|
  com1, com2, com3 = *a.css('.elementor-image-gallery a').map{|e| e.attribute('href').value}
  img = *a.css('.elementor-image a img').map{|e| e.attribute('src').value}
  id = *a.css('.elementor-widget-container h2').map{|e| e.text}
  puts(id)
  puts(img)
  puts(com1)
  puts(com2)
  puts(com3)
  all_the_things << [id,";",com1,";",com2,";",com3]
end
CSV.open('new_file.csv', 'wb' ) do |row|
row << ['id','main_image','add_img1',"add_img2"]
all_the_things.each do |data|
row << data
end
end

# Fetch and parse HTML document
doc = Nokogiri::HTML(open('https://swiatlo-w-domu.pl/produkty-drewno/'))
doc.each do |a|
print a.xpath('html/body/div/div/main/div/div/div/section/div/div/div/div/div/div/div/h2').text
end

doc.xpath('html/body/div/div/main/div/div/div/section/div/div/div/div/div/div/div/h2').text


print com
print img
print a

elementor-widget-container a').attribute('href')
