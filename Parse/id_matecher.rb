require 'nokogiri'
require 'open-uri'
require 'pry'
require 'csv'

all_the_things = []
doc = CSV.read('test.csv')
doc1 = CSV.read('test1.csv')

doc.each do |a|
  doc1.each do |b|
    if a[0] == b[0]
      a << b[1]
      a << b[2]
      a << b[3]
      a << b[4]
      a << b[5]
      a << b[6]
      a << b[7]
      all_the_things << a
    else

    end
  end
end
CSV.open('id_matched.csv', 'wb' ) do |row|
  all_the_things.each do |data|
  row << data
  end
end
