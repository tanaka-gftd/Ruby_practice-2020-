#CHAPTER５   練習問題

#5-1 問１
order = ["コーヒー","カフェラテ"]
puts order.size
puts order.length


#5-1 問２
num = [1,2,3,4,5]
puts num.sum


#5-2 問３
order = ["モカ","カフェラテ","モカ"]
p order.uniq


#5-2 問４
p order
p order.clear


#5-3 問５
order = ["カフェラテ","モカ","カプチーノ"]
puts order.sample


#5-3 問６
omikuji = ["大吉","中吉","末吉","小吉"]
puts omikuji.sample


#5-4 問７
num = [100,50,300]
p num.sort


#5-4 問８
num = [100,50,300]
p num.sort.reverse


#5-4 問９
puts "cba".reverse   #reverseメソッドは文字列にも使える


#5-5 問１０
num = ["100","50","300"]
puts num.join(",")   #joinメソッド：配列の要素を連結して文字列に変換（引数を追加すると、間に挟む文字を指定できる）


#5-5 問１１
num = "100,50,300"
p num.split(",")   #splitメソッド：引数で文字列を分割し、分割した文字列を要素とした配列を作る


#5-6 問１２
n = [1,2,3]
num = n.map do |x|
    x*3
end
p num


#5-6 問１３
s = ["abc","xyz"]
string = s.map do |x|
    x.reverse
end
p string


#5-6 問１３ 別解１
result = ["abc","xyz"].map(&:reverse)
p result


#5-6 問１３ 別解２
result = ["abc","xyz"].map{|n| n.reverse} #ブロックをメソッドに渡す時は{}を使う
p result


#5-6 問１４
s = ["aya","achi","Tama"]
string = s.map do |x|
    x.downcase
end
p string.sort
