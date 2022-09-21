#p142 練習問題
p ["コーヒー","カフェラテ"].size

p [1,2,3,4,5].sum

p ["モカ","カフェラテ","モカ"].uniq

p [1,2,3,4,5].clear

p ["カフェラテ","モカ","カプチーノ"].sample

p ["大吉","中吉","末吉","凶"].sample

p [100,50,300].sort

p [100,50,300].sort.reverse

p "cba".reverse

p ["100","50","300"].join(",") # ,は文字なので、ダブルクォーテーションを忘れないように

p "100,50,300".split(",") # ,は文字なので、ダブルクォーテーションを忘れないように

result = [1,2,3].map do |x|
    x*3
end
p result

result = ["abc","xyz"].map(&:reverse)
p result

=begin
result = ["abc","xyz"].map{|n| n.reverse} #ブロックをメソッドに渡す時は{}を使う
p result
=end

result = ["aya","achi","Tama"].map do |x|
    x.downcase
end
p result.sort