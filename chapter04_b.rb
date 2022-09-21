#p118 練習問題
p ["コーヒー","カフェラテ"]

drinks = ["コーヒー","カフェラテ","モカ"]
p drinks[1]
p drinks.first
p drinks.last

drinks_2 = ["コーヒー","カフェラテ"]
drinks_2.push("モカ")
p drinks_2

a1 = [2,3]
p a1.unshift[1]

a2 = [1,2]
a3 = [3,4]
p a2 + a3

drinks_3 = ["ティーラテ","カフェラテ","抹茶ラテ"]
drinks_3.each do |drink|
    puts drink + "お願いします"
end

a4 = [1,2,3]
sum = 0
a4.each do |x|
    sum = sum + x
end
puts sum

drinks_4 = []
drinks_4.each do |drink|
    puts drink + "お願いします"
end