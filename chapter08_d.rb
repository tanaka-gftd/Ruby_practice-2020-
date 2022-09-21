#継承
#書式：class クラス名 < スーパークラス名
#下記の例だと、
#Itemクラスで使えるメソッド：name, name=
#Drinkクラスで使えるメソッド：Itemクラスの持つメソッド（name, name=）に加え、size, size=

class Item
    def name
        @name
    end
    def name=(text)
        @name = text
    end
end

class Drink < Item   #Itemクラスを基に、Drinkクラスを作る
    def size
        @size
    end
    def size=(text)
        @size = text
    end
end

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts "#{drink.name} #{drink.size}サイズ"   #nameメソッドはItemクラス継承したもの

#ancestorsメソッド・・・そのクラスの継承関係（親クラスとincludeしているモジュール）を表示する
p Integer.ancestors
p Array.ancestors
p Class.ancestors

#親子のクラスで同名のメソッドをつくったときの動作は、自分のクラス（or自分により近い親クラス）のメソッドが呼ばれる
class Item
    def name
        @name
    end
    def name=(text)
        @name = text
    end
    def full_name
        @name
    end
end

class Drink < Item
    def size
        @size
    end
    def size=(text)
        @size=text
    end
    def full_name
        "#{@name} #{@size}サイズ"
    end
end

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.full_name   #Drinkクラスのfull_nameメソッドが呼ばれる

#親のクラスのメソッドを呼び出す
#super・・・親クラスの同名メソッドを呼び出す
class Item
    def name
        @name
    end
    def name=(text)
        @name = text
    end
    def full_name
        @name
    end
end

class Drink < Item
    def size
        @size
    end
    def size=(text)
        @size=text
    end
    def full_name
        super   #superで親クラスの同名メソッドを呼び出す
    end
end

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.full_name   #親クラス（Itemクラス）のfull_nameメソッドが呼ばれる

#superはこういう使い方もできる
class Item
    def name
        @name
    end
    def name=(text)
        @name = text
    end
    def full_name
        @name
    end
end

class Drink < Item
    def size
        @size
    end
    def size=(text)
        @size=text
    end
    def full_name
        "#{super} #{size}サイズ"   #superで親クラスの返り値を埋め込む
    end
end

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.full_name   #子クラスのメソッド内に親クラスのメソッドの返り値が埋め込まれて表示される

