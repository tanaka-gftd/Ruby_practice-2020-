#モジュールにクラスメソッドを定義する
#クラスメソッドの定義に仕方は、クラスの時と同じ
#ただし、モジュールはnewメソッドを使ってインスタンスを作れない
module WhippedCream
    def self.info
        "トッピング用ホイップクリーム"
    end
end
puts WhippedCream.info   #"トッピング用ホイップクリーム" と表示される


#定数を使う例
#定数は大文字で始める
#モジュール内の定数を呼び出す場合は、モジュール名::定数名 と表記する
module WhippedCream
    Price = 100
end
puts WhippedCream::Price   #100 と表示される


#名前空間を作る
#同じクラス名を複数の場所で使いたいが、別々に定義して呼び分けたい時は、モジュールを使って名前を付け分ける
#クラス名（orモジュール名）を指定する際は、 クラス名（orモジュール名）::クラス名（orモジュール名）
#（例）以下の通りだと、それぞれのCoffeeクラスは別のクラスになる
module BecoCafe
    class Coffee
        def self.info
            "深みと香りのコーヒー"
        end
    end
end

module MachuCafe
    class Coffee
        def self.info
            "豊かな甘みのコーヒー"
        end
    end
end

puts BecoCafe::Coffee.info
puts MachuCafe::Coffee.info


#別ファイルのクラスやモジュールを読み込む
#require_relativeメソッド・・・同じフォルダの別ファイルを読み込む（.rbは省略可能）
require_relative "chapter09_source"   #chapter09_require.rbを読み込む
class Drink
    include ChocolateCream
    def name
        @name
    end
    def initialize
        @name = "ミルク"
    end
end

milk = Drink.new
milk.chocolate_cream
puts milk.name
