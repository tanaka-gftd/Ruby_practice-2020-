#CHAPTER８   練習問題

#8-1 問１
a = {:coffee=>300, :caffe_latte=>400}
puts a.class   #putsがなければ表示されないことを忘れないように！


#8-1 問２
hash = Hash.new
puts hash


#8-2 問３
class CaffeLatte 
end
caffeLatte = CaffeLatte.new
puts caffeLatte.class


#8-3 問４
class Item
    def name
        "チーズケーキ"
    end
end
item=Item.new
puts item.name


#8-4 問５（問４と混同しないよう単語を変更）
class Item
    def name=(text)
    @name=text
    end
    def name
        @name
    end
end
item = Item.new
item.name="ショートケーキ"
puts item.name


#8-5 問６
class Item
    def initialize
        puts "商品を扱うオブジェクト"
    end
end
item = Item.new


#8-5 問７
class Item
    def initialize(text)
        @name=text
    end
end
item1=Item.new("マフィン")   #newメソッドでインスタンス生成時にも引数を渡せる
item2=Item.new("スコーン")   #newメソッドでインスタンス生成時にも引数を渡せる
puts item1.name
puts item2.name


#8-6 問８
class Drink
    def self.todays_special
        "ホワイトモカ"
    end
end
puts Drink.todays_special


#8-7 問９（上記の問題と混ざらないよう、クラス名などを変更）
class Item2
    def name
        @name
    end
    def name=(text)
        @name = text
    end
end

class Food < Item2
end
food = Food.new
food.name=("チョコレートケーキ")
puts food.name
