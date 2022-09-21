#p100 練習問題
a = 2
puts a <= 365
puts a == 1 + 1

season = "春"
unless season == "夏" 
    puts "あんまん食べたい"
end

season = "夏"
if season == "夏"
    puts "かき氷食べたい"
    puts "麦茶飲みたい"
end

wallet = 100
if wallet >= 120
    puts "ジュース買おう"
else
    puts "お金じゃ買えない幸せがたくさんあるんだ"
end

x = 200
if x <= 0 || x >= 100
    puts "範囲外です"
end

x = 0
y = -1
z = 1
if x > 0 || y > 0 || z > 0
    puts "正の数です"
end

season = "春"
case 
when season =="春"
    puts "アイスを買っていこう！"
when season =="夏"
    puts "かき氷買っていこう！"
else
    puts "あんまん買っていこう!"
end

2.times {
    puts "カフェラテ"
    puts "モカ"
    puts "モカ"
}
puts "フラペチーノ"
