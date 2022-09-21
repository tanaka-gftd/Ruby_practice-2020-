#CHAPTER９   練習問題

#9-1 問1
module ChocolateChip
    def chocolate_chip
        @name += "チョコレートチップ"
    end
end


#9-1 問2
class Drink
    include ChocolateChip   #includeメソッドで、モジュールを指定する
    def initialize(name)
        @name = name
    end
    def name
        @name
    end
end

drink = Drink.new("モカ")
drink.chocolate_chip
puts drink.name


#9-2 問3
module EspressoShot
    Price = 100
end

puts EspressoShot::Price


#9-3 問4
require_relative "chapter09_source"   #require_relativeで別ファイルを指定するときは、= は不要
puts WhippedCream.info
