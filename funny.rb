require 'open-uri'
url = 'http://www.anekdot.ru/scripts/rand_anekdot.php'
page = open(url)
text = page.read
joke = text.scan(%r{<div class="text" id="txt_id_-{0,}\d{1,}">(.*?)</div>})
n = joke.length
str = joke[rand(n)]
str = str[0].gsub(/<br \/>/){"\n"}
str = str.gsub(/&quot;/){"\""}
puts str
