#CHAPTER４   練習問題

#4-1 問１
p ["コーヒー","カフェラテ"]


#4-2 問２
drinks = ["コーヒー","カフェラテ","モカ"]


#4-2 問３
puts drinks[1]


#4-2 問４
puts drinks.first
puts drinks.last


#4-3 問５
drinks = ["コーヒー","カフェラテ"]
p drinks.push("モカ")   #配列にputsを使うと要素ごとに改行されて表示される


#4-3 問６
num = [2,3]
p num.unshift(1)   #先頭に追加はunshift、先頭を削除はshift


#4-3 問７
num1 = [1,2]
num2 = [3,4]
p num1 + num2


#4-4 問８
order = ["ティーラテ","カフェラテ","抹茶ラテ"]
puts order


#4-4 問９
order.each do |drink|   
    puts "#{drink}お願いします"
end


#4-4 問９ 解説
=begin

eachメソッド書式：配列の各要素を変数に代入していくのがポイント
    配列.each do |任意の変数名|
        行いたい処理(変数名は上の行で指定したものを用いる)
    end

=end


#4-5 問１０ 
num = [1,2,3]
sum = 0
num.each do |n|
    sum += n
end
puts sum


#4-6 問１１
order = []
puts order


#自習用１
num = [1,2,3,4]
num.each do |n|
    next if n == 3 
    puts n
end


#自習用２
num = [1,2,3,4]
num.each do |n|
    break if n == 3 
    puts n
end
