a =[]
i= 0
loop do
i+=1
a << [Faker::Name.first_name]
break if i >=1500
end

CSV.open('imiona.csv', 'wb' ) do |row|
  a.each do |data|
  row << data
  end
end
