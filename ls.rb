# coding: utf-8
require 'uri'

sleep(rand*10)
start = Time.now
print "$"
if gets.chomp == "ls -l" then
	result = (Time.now - start).to_s+ "秒"
else
	result = "失格"
end

puts result

uri = URI.escape("https://twitter.com/intent/tweet?text=早撃ち記録:#{result}でした https://github.com/onomotoharu/ls-l_hayauti #ls")
system("open #{uri}")
