#ハッシュ・・・Ruby版連想配列
#ハッシュの基本形・・・{key1 => value1, key2 => value2...}
# :で始まるのはシンボルと呼ばれるオブジェクト（文字列とは異なる）

p ({:coffee => 300, :caffe_latte => 400})
p ({coffee:300, caffe_latte:400}) #この書き方はハッシュのキーにシンボルを使った時だけ使える

#文字列をシンボルに変換
p "coffee".to_sym
#シンボルを文字列に変換
p :coffee.to_s

#ハッシュには名前も付けられます
menu = {coffee:300, caffe_latte:400}
p menu

#ハッシュから値を取得
p menu[:coffee]

#様々なハッシュ
n = {title: "Ruby Book",members:["yano","beco"]} #値の部分にはいろいろなオブジェクトが置ける
m = {} #空のオブジェクト
p n 
p m

#ハッシュにキーと値の組を追加
menu[:mocha] = 400 #キーはシンボルなので、:から書き始めるのを忘れないように！
p menu

#ハッシュは同じキーを複数持てず、上書きされる
#見方を変えると、"キーを指定すれば値を更新できる"ともいえる
menu[:coffee] = 350 #キーはシンボルなので、:から書き始めるのを忘れないように！
p menu

#存在しないキーを指定すると、nilが返される
p menu[:tea]

#存在しないキーを指定した時の、返り値を指定できる
menu.default = 0
p menu[:tea]

#ハッシュから、キーと値の組を削除
menu.delete(:caffe_latte)
p menu

#ハッシュを繰り返し処理
#キーと値がそれぞれ変数に代入されて、繰り返し処理が実行される
menu.each do |key,value| #変数名はkeyやvalueでなくても可
    puts "#{key}は#{value}円です"
end

#ハッシュのキーだけ繰り返し処理
menu.each_key do |key|
    puts key
end