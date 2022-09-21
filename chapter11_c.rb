#インスタンス変数を簡単に操作する

#いつもの
class Drink
    def name   #このメソッドはattr_readerに置き換える事が出来る
        @name
    end
    def name=(text)   #このメソッドはattr_writerに置き換える事が出来る
        @name = text
    end
end

drink = Drink.new
drink.name = "カフェラテ"
p drink.name


#上記のコードを簡略化してみる
class Drink

    #attr_reader・・・"同名のインスタンス変数を戻り値とするメソッドを定義する"メソッド
    attr_reader :name 

    #attr_writer・・・"同名のインスタンス変数へ代入するメソッドを定義する"メソッド
    attr_writer :name 

end

drink = Drink.new
drink.name = "コーヒー"
p drink.name


#上記のコードはさらに簡略化できる
class Drink

    #attr_accessor・・・attr_readerとattr_writerを、一つに纏めたメソッド
    attr_accessor :name

end

drink = Drink.new
drink.name = "ソイラテ"
p drink.name




#object_idメソッドを使って、selfについて少し掘り下げてみる
#self・・・その場所でのレシーバを返すもの

class Drink
    def me
        p self.object_id   
    end
end

drink = Drink.new   #Drinkクラスからインスタンスを作成
p drink.object_id   #作ったオブジェクトの識別番号（Ａ）を表示する
drink.me   #レシーバdrinkに対してmeメソッドを呼び出し、識別番号（Ｂ）を表示する
#ＡとＢは一致する
#よって、クラスのインスタンスメソッド中でのselfは、そのメソッドを呼んだ時のレシーバと同じであることが分かる


class Drink
    def self.me
        p self.object_id
    end
end

p Drink.object_id   #クラスそのものの識別番号（Ｃ）を表示する（クラスもClassクラスのオブジェクトである）
Drink.me   #クラスDrinkのクラスメソッドmeを呼び出し、識別番号（Ｄ）を表示する
#ＣとＤは一致する
#よって、クラスメソッドでのselfは、そのメソッドを呼んだ時のレシーバと同じであることが分かる



#クラスメソッドとインスタンスメソッドでのインスタンス変数は別物
class Drink
    def name   #インスタンスメソッドnameを定義
        @name = "カフェラテ"   #インスタンスメソッドのインスタンス変数@nameへ代入
    end
    def self.name   #クラスメソッドnameを定義
        @name   #クラスメソッドのインスタンス変数@nameを返す
    end
end

drink = Drink.new
drink.name   #インスタンスメソッドnameを呼び出し、インスタンスメソッドのインスタンス変数@nameへ代入
p Drink.name   #クラスメソッドnameで定義したインスタンス変数@nameには、何も代入されていないのでnilが返される



#クラス変数・・・クラスで共有される変数で、継承したクラスでも共有される（この点は、クラスが持つインスタンス変数とは異なる）
#クラス変数の定義方法・・・変数名の前に@@を付ける（例、@@nameとか）