#CHAPTER３   練習問題

#3-1 問１
a = 2
puts a < 365


#3-1 問２
a = 2
puts a == 1 + 1


#3-2 問３
season = "春"
if season != "夏"   # "!" は "=" の左側
    puts "あんまんたべたい"
end


#3-2 問４
season = "夏"
if season == "夏"
    puts "かき氷たべたい"
    puts "麦茶のみたい"
end


#3-3 問５
wallet = 100
if wallet >= 120
    puts "ジュース買おう"
else
    puts "お金じゃ買えない幸せがたくさんあるんだ"
end


#3-4 問６
x = 200
if x <= 0 || 100 <= x
    puts "範囲外です"
end


#3-4 問７
x = 0
y = -1
z = 1
if x > 0 || y > 0 ||  z > 0
    puts "正の数です"
end


#3-5 問８
season = "春"
case season 
   when "春"   #case構文のwhenには比較演算子は不要
    puts "アイスを買っていこう！"
   when "夏"   #case構文のwhenには比較演算子は不要
    puts "かき氷買っていこう！"
   else
    puts "あんまん買っていこう！"
end

#3-5 問８ 別解 ・・・caseの後の変数を略した場合  
season = "春"
case  
   when season == "春"  
    puts "アイスを買っていこう！"
   when season == "夏"   
    puts "かき氷買っていこう！"
   else
    puts "あんまん買っていこう！"
end


#3-6 問９
2.times{ 
    puts "カフェラテ"

    2.times {
        puts "モカ"
    }
}
puts "フラペチーノ"

#3-6 問９ 別解・・・{}をdo endで記述する
2.times do
    puts "カフェラテ"
       
       2.times do
           puts "モカ"
       end
end
puts "フラペチーノ"
