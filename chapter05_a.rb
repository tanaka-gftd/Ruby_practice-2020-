#配列の要素数を取得・・・sizaメソッド
puts [2,4,6].size

#配列の全要素の合計・・・sumメソッド（Rubyのバージョンが2.4以降）
puts [2,4,6].sum

#こういう使い方もできる（平均が求められる）
a = [1,9,14]
puts a.sum/a.size #・・・２４/３

#小数メソッドを整数メソッドに変更・・・to_fメソッド
a = [1,1,3]
puts a.sum.to_f/a.size 

#要素の重複を削除・・・uniqメソッド
p [1,1,1].uniq
p [1,4,1].uniq
p [1,3,2,2,3].uniq

#uniqメソッドは自分自身は変えず、新しい配列オブジェクトを作る
array1 = [1,1,2]
array2 = array1.uniq
p array1
p array2
p array1.object_id
p array2.object_id

#uniq!メソッドは破壊的変更（自分自身も変更）を行い、その結果をもとに新しい配列を作る
=begin
    末尾に!が付くメソッドは、オブジェクトを破壊的に変更するものが多い
=end
array1 = [1,1,2]
array2 = array1.uniq!
p array1
p array2
p array1.object_id
p array2.object_id

p [1,3,2,"2","3"].uniq
p [1,3,2,"2","3"].uniq {|n| n.to_s}

#配列の要素を、ランダムで１個返す・・・sampleメソッド
puts [1,2,3].sample

#配列の要素を、ランダムに並び替える・・・shuffleメソッド
p [1,2,3].shuffle

#配列の要素を順に並び変える
p [4,2,8].sort #昇順
p ["aya","achi","tama"].sort #abc順 大文字優先
p [4,2,8].reverse #要素を逆順に並び替える
p [4,2,8].sort.reverse #降順

#reverseメソッドは文字列にも使える
p "とくれせんたぼーび".reverse

#配列の要素を連結・・・joinメソッド
#joinメソッドでは連結部分に文字を指定できる
puts ["カフェラテ","チーズケーキ","バニラアイス"].join
puts ["カフェラテ","チーズケーキ","バニラアイス"].join("と")

#文字列を分解して配列にする・・・splitメソッド
#どこで文字列を区切るかを指定できる（指定しない場合は、スペースで区切られる）
p "カフェラテ チーズケーキ バニラアイス".split
p "カフェラテとチーズケーキとバニラアイス".split("と")

#配列の各要素を変換した配列を作る・・・mapメソッド
result = [1,2,3].map do |x|
    x + 2
end
p result

#mapメソッドは色々変換できる
result = [100,200,300].map do |x|
    "#{x}円"
end
p result

#特定のブロックには短い書き方がある
result = ["abc","123"].map do |text|
    text.reverse #要素である文字列を、それぞれ逆順に並び替える
end 
p result
           #↓ ブロックはdo~endの替わりに{}を使って1行で書ける
result = ["abc","123"].map{|text| text.reverse}
p result
           #↓ さらに簡略化
result = ["abc","123"].map(&:reverse)
p result
