require 'nokogiri'
require 'open-uri'
require 'pry'
require 'csv'

all_the_things = []
doc = CSV.read('test.csv')
doc1 = CSV.read('test1.csv')

doc.each do |doc|
  doc1.each do |doc1|
    if doc[0] == doc1[0]
      doc << doc1[2]
      doc << doc1[3]
      doc << doc1[4]
      doc << doc1[5]
      doc << doc1[6]
      doc << doc1[7]
      doc << doc1[9]
      doc << doc1[10]
      doc << doc1[11]
      doc << doc1[12]
      doc << doc1[13]
      doc << doc1[14]
      doc << doc1[15]
      doc << doc1[16]
      doc << doc1[17]
      doc << doc1[18]
      all_the_things << doc
    else

    end
  end
end
CSV.open('id_matched.csv', 'wb' ) do |row|
  all_the_things.each do |data|
  row << data
  end
end
