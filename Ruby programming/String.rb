3.String
"Ala"- mozna dokonać podstawień
'Ala' - traktowany literalny

imie = "Ala"
"#{imie} to grzeczna dziewczynka"
=> "Ala to grzeczna dziewczynka"

imiona = [ "Grześ", "Bartek", "Jacek" ]
"Chłopcy: #{imiona.join(" i ")} idą na spacer"
=> "Chłopcy: Grześ i Bartek i Jacek idą na spacer"

jeden = "1"
dwa = "2"
"#{jeden + " #{dwa} " }"
=> "1 2 "

wierszyk = <<END
  Siała Baba mak
  Nie wiedziała jak
  Dziadek wiedział
  Nie powiedział
  A to było tak...
END

str1 = "Pszczółka Maja"
#=> "Pszczółka Maja"
str1.object_id
#=> -607662428
str1.sub!("M","m")
#=> "Pszczółka maja"
str.object_id
#=> -607662428

Inne metody:
strip! (usuwa białe znaki na początku i końcu łańcucha)
gsub! (dokonuje podmiany wszystkich podciągów pasujących do wzorca)
chop! (usuwa ostatni znak łańcucha)

Wśród ciekawszych metod występujących w klasie String można jeszcze wymienić:
capitalize (zamienia pierwszą literę na dużą, pozostałe na małe)
upcase (zamienia wszystkie litery na duże)
downcase (zamienia wszystkie litery na małe)
squeeze (usuwa powtarzające się znaki występujące w bezpośrednim sąsiedztwie)
