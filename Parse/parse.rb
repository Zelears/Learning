require 'nokogiri'
require 'csv'

doc = Nokogiri::HTML('<table style="height: 347px;" width="534">  <tbody>  <tr>  <td width="172"><strong>WYMIARY</strong></td>  <td colspan="4" width="366">70 x 34 cm</td>  </tr>  <tr>  <td><strong>KOLOR ABAŻURA</strong></td>  <td colspan="4">Biały, Czarny</td>  </tr>  <tr>  <td><strong>ABAŻUR</strong></td>  <td colspan="4">35 x 15 cm - mocowany na oprawkę E27</td>  </tr>  <tr>  <td><strong>KOLOR STELAŻA</strong></td>  <td colspan="4"> Czarny Mat</td>  </tr>  <tr>  <td><strong>STELAŻ LAMPY</strong></td>  <td colspan="4">Metalowy, malowany elektrostatycznie</td>  </tr>  <tr>  <td><strong>ŹRÓDŁO ŚWIATŁA</strong></td>  <td colspan="4">2 x E27 max 60 W</td>  </tr>  <tr>  <td><strong>ZASILANIE</strong></td>  <td colspan="4">230 V</td>  </tr>  </tbody>  </table>')
td=doc.css('td').map {|e| e.text }
p td
#a=[["a","b","c","d"],["a","b","c","d"]]
 #filename = 'test.csv'
 #IO.write(filename, td.map(&:to_csv).join)
CSV.open('3.csv','wb') do |csv|
  csv << td
end


  #tester.join.to_a
 #p output
