2.Przedziały
=>Range (1..10) 2 kropki górny kres przedziału nalezy
=>Range (1...10)3 kropki nie nalezy do przedziału

.to_a konwersja do Array

przykład:         => - co wyświetla konsolka
2 KROPKI
x = (1..4)
puts x
=>1..4
x.to_a
=>[1, 2, 3]

3 KROPKI
x = (1...4)
puts x
=>1...4
x.to_a
=>[1, 2, 3, 4]
