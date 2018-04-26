require 'csv'
require 'nokogiri'
CSV.read('test.csv,')

CSV.open('2.csv','wb') do |csv|
  20.times do |a|
  csv << a
end
end
