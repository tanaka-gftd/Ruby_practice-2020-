#メソッドを共同利用する手順
    #1.モジュールを作る
    #2.モジュールにメソッドを定義する
    #3.モジュールのメソッドをクラスで使う


#1.モジュールを作る
#モジュール名はクラス名と同様に、先頭を大文字から始めるキャメルケースで書く
#モジュールはクラスと似ているが、インスタンスは作れない
#（例）WhippedCreamという名前のモジュールを作る
module WhippedCream
end


#2.モジュールにメソッドを定義する
#モジュールにメソッド（モジュールメソッドを定義する）
#（例）WhippedCreamにwhipped_creamメソッドを定義する
module WhippedCream
    def whipped_cream   #whipped_creamメソッドを呼ぶと、インスタンス変数@nameの後ろに "ホイップクリーム" を追加
        @name += "ホイップクリーム"   
    end
end


#モジュールを使うクラスを作成する
#モジュールのメソッドをクラスで使えるようにするためには、includeメソッドでモジュールを指定して、クラスにモジュールをインクルードする
class Drink
    include WhippedCream   #includeメソッドで、モジュールを指定する
    def initialize(name)
        @name = name
    end
    def name
        @name
    end
end

drink = Drink.new("モカ")
drink.whipped_cream   #includeメソッドで指定したWhippedCreamモジュールを呼び出す
puts drink.name   #"モカホイップクリーム" と表示される


#モジュールは複数のクラスで共同利用できる
class Cake
    include WhippedCream
    def initialize(name)
        @name = name
    end
    def name
        @name
    end
end

drink2 = Drink.new("ココア")
drink2.whipped_cream
puts drink2
.name   #"ココアホイップクリーム" と表示される

cake = Cake.new("チョコレートケーキ")
cake.whipped_cream
puts cake.name   #"チョコレートケーキホイップクリーム" と表示される


=begin
#Enumerbleモジュール・・・
Arrayクラスにインクルードされていて、メソッド群を提供している。
つまり、配列ではEnumerbleのメソッドもすべて使えるようになっている。
Enumerableモジュールにはeachメソッドを使うメソッド群が定義されている。
そのため、Enumerableモジュールを使うためには、インクルード元のクラスにeachメソッドが定義されている必要がある。
逆に言えば、自分で作ったクラスにeachメソッドを定義しておけば、Enumerableモジュールをインクルードすれば、たくさんのメソッド群が使えるようになる。

Rubyクラスが用意しているクラスでは、他にも例えばHashクラスがeachメソッドを持っているので、
ハッシュでもEnumerbleモジュールのメソッドを使う事が出来る
=end

#none?メソッド・・・配列やハッシュに対して「全要素が該当しない」ことを調べる
#全要素が該当しなければtrue, ひとつでも該当すればfalseを返す
x1 = [1, 2, 3].none?{ |x| x==0}   #true
x2 = [1, 2, 3].none?{ |x| x==1}   #false
x3 = {a:1, b:2}.none?{ |k,v| v==0}   #-true
x4 = {a:1, b:2}.none?{ |k,v| v==1}   #-false
p x1
p x2
p x3
p x4

#モジュールのメソッドをクラスメソッドとして使う
#extendメソッド・・・クラスで使うと、モジュールのメソッドをextend先のクラスのクラスメソッドとして使える
#（例）Greetingメソッドを、Cafeクラスのクラスメソッドとして使えるようにする
module Greeting
    def welcome
        "いらっしゃいませ！"
    end
end

class Cafe
    extend Greeting
end

puts Cafe.welcome   #"いらっしゃいませ！"と表示される
