#以下の構文はエラーになる
#orderメソッド内で定義されている変数nameはローカル変数なので、reorderメソッドからは見えない

=begin

class Drink
    def order(item)
        puts "#{item}をください"
        name = item
    end
    def reorder
        puts "#{name}をもう一杯ください"
    end
end

drink = Drink.new
drink.order("カフェラテ")
drink.reorder

=end


#インスタンス変数・・・変数名の前に@を付ける
#インスタンス変数の寿命はオブジェクト（インスタンス）と同じなので、同じオブジェクトの別メソッドからも呼び出せる
class Drink
    def order(item)
        puts "#{item}をください"
        @name = item
    end
    def reorder
        puts "#{@name}をもう一杯ください"
    end
end

drink = Drink.new
drink.order("カフェラテ")
drink.reorder


#インスタンス変数はオブジェクトごとに存在する
#同じクラスに書かれているインスタンス変数でも、オブジェクトが別ならば、別のインスタンス変数になる
class Drink
    def order(item)
        puts "#{item}をください"
        @name = item
    end
    def reorder
        puts "#{@name}をもう一杯ください"
    end
end

drink1 = Drink.new
drink2 = Drink.new
drink1.order("カフェラテ")
drink2.order("モカ")
drink1.reorder
drink2.reorder


#インスタンス変数を取得するメソッドを作る
#インスタンス変数を取得するメソッドは、慣習的に "インスタンス変数名から@を取り除いたもの" にすることが多い
class Drink
    def order(item)
        puts "#{item}をください"
        @name = item
    end
    def name   #インスタンス変数@nameを返すメソッド
        @name
    end
end

drink = Drink.new
drink.order("カフェラテ")
puts drink.name   #インスタンス変数の中身を表示


#インスタンス変数へ代入するメソッドを作る
class Drink
    def name=(text)   #name=メソッドを定義  引数で渡したオブジェクトを@nameへ代入する
        @name = text
    end
    def name
        @name
    end
end
drink = Drink.new
drink.name="カフェオレ"  #name=メソッドの=の左右に半角スペースを入れられる（メソッド名が=で終わる時限定）
puts drink.name   #文字列オブジェクト "カフェオレ" が表示される

#instance_variablesメソッド・・・オブジェクトが持っている全てのインスタンス変数を返す
p drink.instance_variables   #現在drinkオブジェクトが持つインスタンス変数は @name
