#文字列表示
puts "hello"

#文字列結合
puts "hello" + "  " + "world!"

#数値の表示&計算
puts 3 + 3

#数値を文字列として結合
puts "3" + "3"

#文字列を数値に変換・・・to_iメソッド
puts "3".to_i + 3

#数値を文字列に変換・・・to_sメソッド
puts "3" + 3.to_s

#変数&変数の展開&式展開
order = "カフェラテ"
puts "ご注文は" + order + "ですか？"
puts "ご注文は#{order}ですか？"
puts "1+2の答えは#{3}です"

#getsメソッド
=begin
・getsメソッドではコマンドプロンプトで入力された値を受け取る事が出来る
・入力された値は、文字列扱い&改行文字付
=end
x = gets
y = gets
puts x + y #改行文字付きなので、改行されて表示されます
puts x.to_i + y.to_i #計算するのであれば、数値に変換しよう

#プログラムの途中で変数を表示する、デバッグ用メソッド・・・ｐメソッド
#putsに似ているが、pメソッドは原則デバッグ専用として使われる
a = 3 / 2 #整数オブジェクト同士の計算
p a #1が表示される
b = a * 2
puts b #bの値が2なのは、3 / 2 が整数オブジェクト同士の計算だから

c = 3.0 / 2.0 #小数オブジェクト同士の計算
p c #1.5が表示される
d = c * 2
puts d #dの値は3となる


#p70 練習問題
puts 2 + 3
puts 2.0 ** 2 * 3.14
puts "Ruby"
puts "abc" + "def"
puts "123".to_i + "456".to_i
coffee = 300
puts "コーヒー：#{coffee}円"
puts "合計：#{coffee + 100 *2}円"
coffee = 400
puts "コーヒー：#{coffee}円"
puts "合計：#{coffee + 100 *2}円"
total = 300 * 2
p total
tax = total * 0.08
puts tax
total = 300 * 2
#puts t
puts total

require "irb"  #Rubyを対話的に実行
a = 1 
binding.irb #対話的実行を中断
puts a
