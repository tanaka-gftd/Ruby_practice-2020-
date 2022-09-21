#オブジェクトはクラスに属している
#オブジェクトのクラスを確認する・・・classメソッド
p 1.class
p 100.class
p "カフェラテ".class
p "".class
p [1,2,3].class
p [].class

#クラスに所属するオブジェクトを、そのクラスの "インスタンス" であるとも呼ぶ
#オブジェクトには、所属するクラスが用意しているメソッドが使える
#例として、Integerクラスのオブジェクトには偶数かどうかを判断するeven?メソッドがある
p 1.even?
p 100.even?

#オブジェクトをつくる２つの方法
#一つ目・・・そのまま
p "カフェラテ"
p [1,2,3]
#二つ目・・・クラスとnewメソッドを使ってオブジェクトを作る
#newメソッドを使うと、そのクラスのオブジェクト（インスタンス）を作ることができる
p String.new
p String.new("カフェラテ")
p Array.new
p Array.new(3,"カフェラテ")

#クラスを定義する
#Cakeクラスを作る
class Cake
end
cake = Cake.new #Cakeクラスのオブジェクトを作って変数cakeへ代入
p cake.class #cakeはCakeクラスのオブジェクト(インスタンス)である事が分かる

#Drinkクラスを作る
class Drink
    def name
        "カフェラテ"
    end
end
drink = Drink.new #Drinkクラスのオブジェクトを作って変数drinkへ代入
puts drink.name #Drinkクラスのオブジェクトのnameメソッドを呼ぶ出す

#レシーバ・・・メソッドを呼び出されるオブジェクト
#レシーバであるオブジェクトで呼び出せるメソッドを一覧表示する・・・methodsメソッド
#メソッドは配列形式で表示される
p 1.methods
p drink.methods #自分で定義したクラスから作ったオブジェクトからも、メソッド一覧は呼び出せる

#Drinkクラスを作る
#クラスに引数を受け取るメソッドを定義する
class Drink
    def order(name)
        puts "#{name}をください"
    end
end
drink = Drink.new
drink.order("カフェラテ")

#クラスの中のメソッドから、同じクラスに属する他のメソッドを呼び出す
class Drink
    def name
        "モカ" + topping # nameメソッドは、toppingメソッドを呼び出す
    end
    def topping
        "エスプレッソショット"
    end
end
drink = Drink.new
puts drink.name
puts drink.topping

#selfを使ってレシーバを調べる
#selfメソッドでは、selfメソッドを呼び出した時のレシーバのIDを返す
class Drink
    def name
        p self
        "モカ" + topping # nameメソッドは、toppingメソッドを呼び出す
    end
    def topping
        "エスプレッソショット"
    end
end
drink = Drink.new
p drink
puts drink.name
