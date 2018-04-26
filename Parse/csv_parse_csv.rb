require 'nokogiri'
require 'pry'
require 'csv'

CSV.foreach('1.csv') do |row|
    doc = Nokogiri::HTML(row[1])
    p doc

td=doc.css('td').map {|e| e.text }
filename = 'test.csv'
CSV.open('3.csv','a') do |csv|
  csv << td
end
end
 #IO.write(filename, td.map(&:to_csv).join)
