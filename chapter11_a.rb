#例外処理・・・処理が上手く進まなかった時や、エラーが起きた時に行う処理

=begin

例外処理の書式：begin~rescueを使う
    begin
        例外が発生する可能性がある処理
    rescue エラー名
        例外が発生したときに実行する処理（rescue節）
    end

=end


#割り勘の処理で、例外を処理してみる
#getsメソッド：キーボード（標準入力）からの入力を取り込むメソッド
#to_iメソッド：文字列を整数に変換するメソッド
puts "金額を入力してください"
bill = gets.to_i
puts "割り勘する人数を入力してください"
number = gets.to_i

#例外処理の記述開始
begin
    warikan = bill / number
    puts "１人当たり#{warikan}円です"
rescue ZeroDivisionError
    #ZeroDivisionError例外が発生したらメッセージを表示する
    puts "おっと、0人では割り勘できません"
end


#メソッド内で例外処理を書く場合は、beginとendを省略できる
def warikan(bill, number)
    warikan = bill / number
    puts "１人当たり#{warikan}円です"
rescue ZeroDivisionError
    puts "おっと、0人では割り勘できません"
end

warikan(100, 0)
warikan(100, 1)
warikan(100, 2)


#Ruby2.5以降ではブロック内でもbeginとendを省略可能
bill = 100
numbers = [0, 1, 2]

numbers.each do |number|
    warikan = bill / number
    puts "１人あたり#{warikan}円です"
rescue ZeroDivisionError
    puts "おっと、0人では割り勘できません"
end

