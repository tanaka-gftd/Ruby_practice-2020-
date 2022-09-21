##Cafeクラスにstaffメソッドとmakanaiメソッドを設定する
class Cafe
    def staff
        makanai
    end
    def makanai
        "店員用スペシャルメニュー"
    end
end

cafe = Cafe.new
puts cafe.staff   #staffメソッドを呼び出すと、合わせてmakanaiメソッドが呼びされる
puts cafe.makanai   #makanaiメソッドを呼び出す

#private・・・これ以降で定義するメソッドをprivateなメソッドにする
#privateなメソッドはレシーバをしていない方法では呼び出せるが、レシーバを指定する方法では呼び出せない
#結果、privateなメソッドは、そのクラス定義内のインスタンスメソッドの中でしか呼び出せない
class Cafe
    def staff
        makanai   #privateなメソッドは、レシーバを指定しない方法でだけ呼び出せる
    end
    private   #以降で定義するメソッドをprivateなメソッドにする
    def makanai
        "店員用スペシャルメニュー"
    end
end

cafe = Cafe.new
puts cafe.staff   #staffメソッドを呼び出すと、合わせてmakanaiメソッドが呼び出される
#puts cafe.makanai   #Cafeクラスの定義外ではmakanaiメソッドを呼び出せず、エラーになる

#privateとpublic
class Foo
    def a   #public
    end
    def b   #public
    end

    private   #これ以降はprivateなメソッドになる

    def c   #private
    end
    def d   #private
    end
end

class Foo
    def a   #public
    end
    def b   #public
    end

    private   #これ以降はprivateなメソッドになる

    def c   #private
    end

    public   #これ以降はpublicなメソッドになる  

    def d   #public
    end
end

class Foo
    private def a   #この書き方だと aメソッドだけがprivateになる
    end

    def b   #public（privateにはならない）
    end
end

#privateなクラスメソッドを定義する際は、別な書き方をする・・・private_class_method
#（class << selfの書き方なら、インスタンスメソッドと同様の方法でOK）
class Foo
    private   #クラスメソッドの前にprivateを書いても、privateにならない
    def self.a   #privateにならない
        "method a"
    end
end
p Foo.a   #クラスの定義外からでも呼び出せる

class Foo
    private_class_method def self.a   #この書き方なら、privateになる
        "method a"
    end
end
#p Foo.a   #クラスの定義外からは呼び出せず、エラーとなる