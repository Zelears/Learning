8.Wartości logiczne i nil (TrueClass, FalseClass, NilClass)


a = ""
a.nil?
#=> false
a = []
a.nil?
#=> false
a = 0
a.nil?
#=> false
a = nil
a.nil?
#=> true


Aby uchronić się przed tego rodzaju sytuacją można skorzystać z funkcji defined?, która zwraca wartość niepustą (jest to informacja o typie zmiennej/stałej), jeśli dana zmienna została zainicjowana:

defined? a
#=> nil
a = 10
defined? a
#=> "local-variable"
defined? Z
#=> nil
Z = 10
defined? Z
#=> "constant"

Wartym odnotowania faktem jest też to, że przeciwieństwie do wielu innych języków skryptowych, w Ruby tylko false i nil są traktowane jako fałsz w wyrażeniach logicznych. Pusta tablica, wartość 0 czy pusty łańcuch ewaluowane są jako prawda.

if false or nil
  "True"
else
  "False"
end
#=> "False"
if 0 and [] and ""
  "True"
else
  "False"
end
#=> "True"
