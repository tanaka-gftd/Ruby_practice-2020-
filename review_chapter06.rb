#CHAPTER６   練習問題

#6-1 問１
menu = {coffee: 300, caffe_latte: 400}
p menu[:caffe_latte]

#6-1 問２
menu = {"モカ"=>"チョコレートシロップとミルク入り", "カフェラテ"=>"ミルク入り"}
p menu["モカ"]   #""で囲った場合は、:は不要

#6-2 問３
menu = {coffee: 300, caffe_latte: 400}
menu[:tea] = 300
p menu

#6-2 問４
menu = {coffee: 300, caffe_latte: 400}
menu.delete(:coffee)   #deleteメソッドは、メソッドなので引数は()で囲む
p menu

#6-2 問５
menu = {coffee: 300, caffe_latte: 400}
if menu[:tea] == nil
    puts "紅茶はありませんか？"
end

#6-2 問６
menu = {coffee: 300, caffe_latte: 400}
if menu[:caffe_latte] <= 500
    puts "カフェラテください"
end

#6-2 問７ #分からないので、ギブアップ
string = "caffelatte".chars
string_uniq = string.uniq
p string
p string_uniq

#6-2 問７ 解答
hash = {}   #空のハッシュを作る
hash.default = 0   #defaultメソッドで初期値を0と設定
array = "caffelate".chars   #文字列をcharsメソッドで配列化
array.each do |x|   #eachメソッドでarrayの文字列から一文字ずつ取り出し、取り出した文字を空のハッシュにキーとして追加&その値を増やす処理を繰り返す   
    hash[x] += 1   #初期値を1ずつ増やしていく
end
p hash

#6-3 問８
menu = {"コーヒー"=> 300, "カフェラテ"=> 400}
menu.each do |key, value|   #ハッシュ名とeachの間に.を入れるのを忘れないように！
    puts "「#{key} - #{value}」"   #rubyで変数を展開するときは#{}を使う（$ではない）
end

#6-3 問９
menu = {"コーヒー"=> 300, "カフェラテ"=> 400}
menu.each do |key, value|
    if value > 350   #別解としてこの行を "next if value < 350" とするのもある
        puts "「#{key} - #{value}」"
    end
end

#6-3 問１０
menu = {}
menu.each do |key, value|
    puts "「#{key} - #{value}」"
end

#6-3 問１１
menu = {"コーヒー"=> 300, "カフェラテ"=> 400}
menu_key = []
menu.each_key do |key|
    menu_key.push(key)
end
p menu_key
