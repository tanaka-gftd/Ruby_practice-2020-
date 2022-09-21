#メソッドを定義する・・・def

#このメソッドは2*2を計算して、putsで表示する機能を持つ
def area
    puts 2 * 2
end

area

#このメソッドは2*2を計算する
def area
    2 * 2
end
#areaの結果をputsで表示
puts area

#areaの結果は変数にも代入できる
result = area
puts result

#このメソッドは、引数と引数を足し算する
def area(x)
    x + x
end
puts area(2)
puts area(3)
puts area(4)

#このメソッドは、２つの引数同士を足し算する
def area(x,y)
    x + y
end
puts area(2,3)
puts area(4,9)


#このメソッドでは、引数に応じて表示される文章が変わる
def thanks_and_receipt(receipt)
    puts "ありがとうございました。"
    unless receipt #receiptがfalseの時に、次の行（return）を実行
        return
    end
    puts "こちら、レシートになります。"
end
thanks_and_receipt(false)
thanks_and_receipt(true)


#このメソッドでは、引数に応じて表示される文章が変わる
def thanks_and_receipt(receipt)
     "ありがとうございました。"
    unless receipt #receiptがfalseの時に、次の行（return）を実行
        return
    end
    puts "こちら、レシートになります。"
end
thanks_and_receipt(false)
thanks_and_receipt(true)


#このメソッドでは、引数に応じて表示される文章が追加される
def thanks_and_receipt(receipt)
    greeting = "ありがとうございました。"
    unless receipt #receiptがfalseの時に次の行を実行
        return greeting #returnを実行し、変数greetingに代入された文字列を戻り値にする
    end #receiptがfalseの時は、ここでメソッドが終了
    greeting + "こちら、レシートになります。" #変数greeetingに代入された文字列を追加する
end
puts thanks_and_receipt(true)
puts thanks_and_receipt(false)


#このメソッドでは、文字列を返します
def order(item)
    "#{item}をください"
end
puts order("カフェラテ")
puts order("モカ")


#メソッドの引数には、デフォルト値を設定できる
#デフォルト値は、引数を省略してメソッドが呼び出されたときに使われる
def order(item = "コーヒー")
    "#{item}をください"
end
puts order #デフォルト値のコーヒーが使われる
puts order("カフェラテ")
puts order("モカ")


#引数の順番を変えられるキーワード引数
def order(item:, size:) #引数名の後ろに:をつけるとキーワード引数になる
    "#{item}を#{size}サイズでください"
end
puts order(item: "カフェラテ", size:"ベンティ") #引数を名前付きで指定する
puts order(size: "ベンティ", item:"カフェラテ") #引数を書く順番も変えられる


#キーワード引数にデフォルト値を設定
def order(item:, size:"ショート") # （引数名:デフォルト値） の形になる
    "#{item}を#{size}サイズでください"
end
puts order(item:"カフェラテ")
puts order(item:"カフェラテ", size:"ベンティ")

=begin
#変数を書く際はスコープ（変数の見える範囲と寿命）に注意
def hello
    text = "こんにちは"
end
hello
p text #エラーになる
=end

=begin
#スコープに注意
#メソッドの外に書いてある変数も、メソッドの中では見えない
text = "こんにちは"
def hello
    p text #エラーになる
end
hello
=end





