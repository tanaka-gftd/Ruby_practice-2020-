#p154 練習問題
menu = {coffee:300, caffe_latte:400}
puts menu[:caffe_latte]

menu = {"モカ" => "チョコレートシロップとミルク入り","カフェラテ" => "ミルク入り"}
puts menu["モカ"]

menu = {coffee:300, caffe_latte:400}
menu [:tea] = 300
puts menu

menu.delete(:coffee)
p menu

if menu[:tea] == nil
    p "紅茶はありませんか？"
end

if menu[:caffe_latte] <= 500
    p "カフェラテください"
end

#分からないので解答を見ました
hash = {}
hash.default = 0
array = "caffelate".chars
array.each do |x|
    hash[x] += 1
end
p hash

menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key,value|
    puts "#{key} - #{value}円"
end

menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key,value|
    next if value < 350
    puts "#{key} - #{value}円"
end

menu = {}
menu.each do |key,value|
    puts "#{key} - #{value}円"
end

menu = {"コーヒー" => 300, "カフェラテ" => 400}
array = []
menu.each_key do |n|
    array.push(n)
end
p array
