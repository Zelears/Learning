
require 'rubygems'
require 'nokogiri'
require 'csv'

all_the_things = []

xml = File.read('products.xml')
doc = Nokogiri::XML(xml)
#'o' - to klasa
  doc.css('o').each do |read|
    product_name = read.css('name').text
    product_code = read.css("a[name='Kod_producenta']").text
    material = read.css("a[name='material']").text
    light_source = read.css("a[name='lightsource']").text
    wysokosc = read.css("a[name='wysokosc']").text
    szerokosc = read.css("a[name='szerokosc']").text
    napiecie = read.css("a[name='voltage']").text
    gwint = read.css("a[name='gwint']").text
    color = read.css("a[name='color']").text
    seria = read.css("a[name='Seria']").text
    wykonczenie = read.css("a[name='wykonczenie']").text
    srednica_klosz = read.css("a[name='srednica_klosz']").text
    wysokosc_klosz = read.css("a[name='wysokosc_klosz']").text
    srednica_podstawy = read.css("a[name='srednica_podstawy']").text
    glebokosc = read.css("a[name='glebokosc']").text
    all_the_things << [product_name,";",product_code,";",material,";",light_source,";",wysokosc,";",szerokosc,";",napiecie,";",gwint,";",color,";",seria,";",wykonczenie,";",srednica_klosz,";",wysokosc_klosz,";",srednica_podstawy,";",glebokosc]
end
    CSV.open('new_file.csv', 'wb' ) do |row|
      row << ['product_name',";",'product_code',";",'material',";",'light_source',";",'wysokosc',";",'szerokosc',";",'napiecie',";",'gwint',";",'color',";",'seria',";",'wykonczenie',";",'srednica_klosz',";",'wysokosc_klosz',";",'srednica_podstawy',";",'glebokosc']
    all_the_things.each do |data|
    row << data
  end
end
