7.tablice zwykłe

Tablice tworzy się wartościami oddzielonymi przecinkiem wewnątrz nawiasów kwadratowych

a = [ "zero", "one", "two", "three"]
#=> [ "zero", "one", "two", "three"]
b = Array.new(5) {|i| i*i}
#=> [0, 1, 4, 9, 16]

Tablica-tablic

matrix = [[1,2,3],[3,4,5],[5,6,7]]
matrix[1]
#=> [3, 4, 5]
matrix[1][1]
#=> 4
matrix[1,1]
#=> [[3, 4, 5]]

Próba przekazania dwóch indeksów w jednym operatorze indeksowania spowodowała zwrócenie podtablicy tablicy matrix, a nie liczby 4, ponieważ ten zapis interpretowany jest jako alternatywna definicja zakresu. Dlatego matrix[1,1] tożsame jest z matrix[1..1] a nie matrix[1][1].

Klasa Array posiada mnóstwo przydatnych metod, wśród których można wyróżnić kilka grup:
metody operatorowe – pozwalają operować na tablicach jak na abstrakcyjnych obiektach matematycznych, np.:
+ zwraca tablicę, która jest sumą dwóch tablic
- zwraca tablicę, która jest różnica tablicy pierwszej i drugiej
<< dodaje element na końcu tablicy
& zwraca tablicę, która jest częścią wspólną (iloczynem) dwóch tablic

Metody blokowe – akceptują blok kodu, który wykonywany jest dla wszystkich elementów tablicy, np.:
delete_if – usuwa element tablicy jeśli blok zwraca wartość true
collect – tworzy tablicę, która składa się z elementów zwróconych przez blok
each – wykonuje blok kodu dla każdego elementu tablicy
reject – tworzy nową tablicę, z elementów dla których blok zwrócił wartość false
reverse_each – wykonuje blok kodu dla każdego elementu tablicy, poczynając od ostatniego
select – zwraca tablicę składającą się z elementów, dla których blok zwrócił wartość true

Pozostałe metody – wśród nich warto zwrócić uwagę na:
empty? – zwraca wartość true, jeśli tablica jest pusta
join – zwraca łańcuch znaków, który powstaje z łańcuchowych reprezentacji elementów tablicy połączonych opcjonalnym łącznikiem
include? – zwraca wartość true jeśli tablica zawiera określoną wartość
push – dodaje element na końcu tablicy (działanie identyczne do <<)
reverse – zwraca tablicę, w której elementy ułożone są w porządku odwrotnym
shift – usuwa pierwszy element tablic i zwraca go
sort – sortuje tablice w sposób naturalny (akceptuje również blok, który pozwala określić dowolny porządek sortowania)

################each → Enumerator
Calls the given block once for each element in self, passing that element as a parameter.

An Enumerator is returned if no block is given.

a = [ "a", "b", "c" ]
a.each {|x| print x, " -- " }

produces:

a -- b -- c --

################Returns an array for all elements of enum for which block is false (see also Enumerable#find_all).

If no block is given, an enumerator is returned instead.

(1..10).reject {|i|  i % 3 == 0 }   #=> [1, 2, 4, 5, 7, 8, 10]

################ %w(foo bar) is a shortcut for ["foo", "bar"]

##  arr.select { |a| a > 3 }     #=> [4, 5, 6]
    arr.reject { |a| a < 3 }     #=> [3, 4, 5, 6]



## [1,2,3,4,1,2].drop_while{|i| i < 3} #=> [3,4,1,2]
    sprawdza pokolei wyrzucając az nie spełni i < 3

##                      # Spacing for clarity:
a = [2, 4, 8]    # a =>       [2, 4, 8]
a.push(16, 32)   # a =>       [2, 4, 8, 16, 32]
a.unshift(0, 1)  # a => [0, 1, 2, 4, 8, 16, 32]
a.shift          # a =>    [1, 2, 4, 8, 16, 32]
a.pop            # a =>    [1, 2, 4, 8, 16]

##
Metody operatorowe
[ 1, 2, 3 ] + [ 4, 5 ]
#=> [ 1, 2, 3, 4, 5 ]
[ 1, 2, 3 ] - [ 1, 3 ]
#=> [ 2 ]
a = [ 1, 2, 3 ]
a << 4
#=> [ 1, 2, 3, 4 ]

##
map
Creates a new array containing the values returned by the block.

a = [ "a", "b", "c", "d" ]
a.map { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]

a.map.with_index{ |x, i| x * i } #=> ["", "b", "cc", "ddd"]
a                                #=> ["a", "b", "c", "d"]

##
Metody blokowe
zenskie = [ "Janek", "Jozef", "Kasia", "Ania", "Wojtek" ].delete_if {|name| name !~ /a$/ }
#=> ["Kasia", "Ania"]
duza_litera = [ "ania", "kasia" ].map{|name| name.capitalize }
#=> ["Ania", "Kasia"]
literki = [ "a", "b", "c" ].each{|l| puts l}
 # a
 # b
 # c
#=> ["a", "b", "c" ]

##
Pozostałe metody
[].empty?
#=> true
zawiera_dwa = [1,2,3].include?(2)
#=> true
grzybki = [ "kurka", "kania", "muchomor" ]
grzybki.join(", ")
#=> "kurka, kania, muchomor"
kolejka = [ "pierwszy", "drugi", "trzeci" ]
kolejka.shift
#=> "pierwszy"
 # kolejka = [ "drugi", "trzeci" ]
priorytety = [ 7, 5, 3, 4, 8].sort
#=> [ 3, 4, 5, 7, 8 ]
macierz = [[1,2],[2,1],[2,2],[1,1]]
macierz.sort
#=> [[1,1],[1,2],[2,1],[2,2]]
macierz.sort{|e1,e2| e1[1] == e2[1] ? e1[0] <=> e2[0] : e1[1] <=> e2[1]}
#=> [[1, 1], [2, 1], [1, 2], [2, 2]] ???????????????????????????????????????????????????????????????????????????????????

dziwna1 = [ 2, 3, "a" ].sort
 # ArgumentError: comparison of String with 2 failed...
dziwna2 = [ 3, 2, "a" ].sort do |a,b|
  v1 = a.is_a?(String) ? a.size : a
  v2 = b.is_a?(String) ? b.size : b
  v1 <=> v2
end
#=> ["a", 2, 3] ??????????????????????????????????????????????????????????????????????????????
