#配列（array）
#[オブジェクト1, オブジェクト2, ...]
p ["カフェラテ", 400, 1.08] #要素数3つ 種類が違うオブジェクトも、同じ配列に入れられる
p [300] #要素数1つ
p [] #要素なし、空の配列

#配列に名前を付ける
drinks = ["カフェラテ", "モカ", "コーヒー"]
p drinks

#配列内の要素を取得
puts drinks[0]
puts drinks[1]
puts drinks[-1] #マイナスをつけると後ろから数える -1は最後尾
puts drinks[-2] #-2は最後尾から２つめ

puts drinks.first #配列の最前列を取得 drinks[0]と同じ
puts drinks.last #配列の最後尾を取得 drinks[-1]と同じ

#要素数お超えた値を指定すると、nilが返される
#putsメソッドだと何も返されない、pメソッドだとnilが返される
p drinks[4] 

#配列の要素取得色々
p ["カフェラテ", "モカ", "コーヒー"].first # "カフェラテ" が表示される
puts ["カフェラテ", "モカ", "コーヒー"].first # カフェラテ が表示される(ｐメソッドとputsメソッドでは挙動が少し違う)
p ["カフェラテ", "モカ", "コーヒー"][1] # "モカ" が表示される

#要素の追加
#配列の最後尾に追加
drinks.push("ティーラテ")
p drinks

#配列の最後尾に追加 その２
drinks << "ブレンド"
p drinks

#配列の最前列に追加
drinks.unshift("ソイラテ")
p drinks

#要素の削除
#配列の最後尾を削除
drinks.pop

#配列の最後尾を削除&削除した要素を表示
p drinks.pop

#配列の最前列を削除
drinks.shift

#配列の最前列を削除&削除した要素を表示
p drinks.shift

#配列をもう一つ作成
drinks_2 = ["ミルク","ブレンド","抹茶ラテ","コーヒー"]

p drinks
p drinks_2

#配列の合成
p drinks + drinks_2

#配列を比較し、一つ目の配列にある要素だけを表示
p drinks - drinks_2

#eachメソッドで配列の要素ごとに処理を実行
drinks_2.each do |drink|
    puts drink
end

#変数drinkに抹茶ラテが格納されたら、繰り返しを終了させる
drinks_2.each do |drink|
    break if drink == "抹茶ラテ"
    puts drink
end

#変数drinkに抹茶ラテが格納されているたら、次の繰り返しに飛ぶ
drinks_2.each do |drink|
    next if drink == "抹茶ラテ"
    puts drink
end

#Rangeオブジェクト 3..6は３から６までの範囲を表す
(3..6).each do |x|
    puts x
end

