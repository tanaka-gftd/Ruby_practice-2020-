#initializeメソッド・・・オブジェクトが新しく作られると、自動で呼び出される
class Drink
    def initialize
        puts "新しいオブジェクト！"
    end
end
Drink.new   # "新しいオブジェクト！" と表示される

#initializeメソッドを使えば、インスタンス変数の初期値を設定できる
class Drink
    def initialize
        @name = "カフェラテ"   #インスタンス変数の初期値を設定
    end
    def name
        @name
    end
end
drink = Drink.new
puts drink.name

#initializeメソッドへ引数を渡す
class Drink
    def initialize(name)
        @name = name
    end
    def name
        @name
    end
end
drink = Drink.new("モカ")
puts drink.name

#当然、オブジェクトごとに引数に違いを持たせる事も出来る
drink1 = Drink.new("カフェラテ")
drink2 = Drink.new("コーヒー")
drink3 = Drink.new("モカ")
puts drink1.name
puts drink2.name
puts drink3.name

#インスタンスメソッド・・・レシーバがインスタンス（あるクラスのオブジェクト）であるメソッド（メジャー？な方)
#クラスメソッド・・・レシーバがクラスであるメソッド（上記のnewメソッドが当てはまる）

#クラスメソッドを定義する
class Cafe 
    def self.wlcome   #クラスメソッドを定義する際は、メソッド名の前に self を付ける
        "いらっしゃいませ！"
    end
end

#同じクラスのクラスメソッドを呼び出す
#インスタンスメソッドと同じように、メソッド名だけを書けばOK
class Cafe
    def self.welcome
        "いらっしゃいませ！"
    end
    def self.welcome_again
        welcome + "いつもありがとうございます！"   #クラスメソッドwelcomeを呼び出す
    end
end
puts Cafe.welcome_again

#クラスメソッドの別の定義方法(他にもある)
class Macdonald
    class << self 
        def welcome  
            "いらっしゃいませ！"
        end
    end
end

puts Macdonald.welcome