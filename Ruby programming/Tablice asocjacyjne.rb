7.Tablice asocjacyjne (Hash)

W nawiasach klamrowych oddzielone przecinkami pary klucz => wartość

hash = { "jeden" => 1, "dwa" => 2, "trzy" => 3 }
hash["jeden"]
#=> 1
hash["cztery"]
#=> nil
hash["cztery"] = 4
hash["cztery"]
#=> 4

histogram = Hash.new(0)
histogram["Ala"]
#=> 0
histogram["Ala"] += 1
histogram["Ala"]
#=> 1

Podobnie jak zwykłe tablice, tablice asocjacyjne posiadają wiele wbudowanych metod. Wśród nich na szczególną uwagę zasługują:
has_key? – zwraca prawdę, jeśli tablica posiada określony klucz.
has_value? – zwraca prawdę, jeśli tablica posiada określoną wartość.
each – wykonuje blok przekazując jako jego parametry parę: klucz – wartość
each_key – jw. ale przekazywane są tylko klucze.
each_value – jw. ale przekazywane są tylko wartości. Jeśli wartości się powtarzają to wywołanie następuje wiele razy dla tych samych wartości.
index – zwraca klucz, posiadający wartość przekazaną jako parametr wywołania. Jeśli jest wiele takich kluczy, to zwracany jest tylko jeden (dowolny).
merge – zwraca tablicę asocjacyjną, która jest połączeniem tablicy, dla której została wywołana ta metoda oraz jej argumentu. Jeśli w obu tablicach występują pokrywające się klucze, to wartości wybierane są z drugiej tablicy (przekazanej jako parametr). Metoda ta posiada wariant z wykrzyknikiem, który modyfikuje tablicę, dla której została wywołana.
select – przyjmuje blok jako argument. Zwraca zwykłą tablicę, która składa się z par [klucz, wartość], dla których blok zwrócił wartość true.
Przykłady wykorzystania powyższych metod przedstawione są poniżej.

hash = { "jeden" => 1, "dwa" => 2, "trzy" => 3}
hash.has_key?("jeden")
#=> true
hash.has_key?(1)
#=> false
hash.has_value?(1)
#=> true
hash.has_value?("jeden")
#=> false
hash.each{|key,value| puts "klucz: #{key}, wartość: #{value}" }
 # klucz: jeden, wartość: 1
 # klucz: dwa, wartość: 2
 # klucz: trzy, wartość: 3
#=> {"jeden"=>1, "dwa"=>2, "trzy"=>3}
hash.index(1)
#=> "jeden"
hash.index(5)
#=> nil
hash.merge({ "jeden" => "I", "dwa" => "II", "cztery" => "IV"})
#=> {"jeden" => "I", "dwa" => "II", "cztery" => "IV", "trzy" => 3}
hash.select{|key,value| key.match(/d/)}
#=> [["jeden",1], ["dwa",2]]
