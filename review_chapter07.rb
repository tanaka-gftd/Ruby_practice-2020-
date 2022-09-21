#CHAPTER７   練習問題

#7-1 問１
def order
    puts "カフェラテください"
end
order


#7-2 問２
def area
    3*3
end
puts area


#7-2 問３
def dice
    [1,2,3,4,5,6].sample
end
puts dice


#7-3 問４
def order(drink)   #メソッド呼び出し時だけでなく、メソッド定義時にも（）で仮引数を設定するように
    puts "#{drink}をください"
end
order("カフェラテ")
order("モカ") 
order "カフェラテ"   #メソッド呼び出し時の()は省略可能
order "モカ"


#7-3 問５
def dice
    n = [1,2,3,4,5,6].sample
    puts n
    if n == 1
        puts "もう一回"
    end
end
dice


#7-4 問６
def price(item:)
    if item == "コーヒー"
        puts 300
    elsif item == "カフェラテ"
        puts 400
    else
        
    end
end
price(item:"コーヒー")
price(item:"カフェラテ")


#7-4 問７
def price(item:,size:)
    n = 0
    case item   #case構文について要復習
    when "コーヒー"
            n = 300
    when "カフェラテ"
            n = 400
    end
    case size
    when "ショート"
            n += 0
    when "トール"
            n += 50
    when "ベンティ"
            n += 100
    end
    puts n
end
price(item:"コーヒー",size:"ショート")
price(item:"カフェラテ",size:"トール")
price(item:"コーヒー",size:"ベンティ")
price(item:"ミルク",size:"グランデ")


#7-4 問８
def price(item:,size:"ショート")   #デフォルト値を指定する際、キーワード引数を使うときは:,キーワード引数を使わないときは=で設定する
    n = 0
    case item   #case構文について要復習
    when "コーヒー"
            n = 300
    when "カフェラテ"
            n = 400
    end
    case size
    when "ショート"
            n += 0
    when "トール"
            n += 50
    when "ベンティ"
            n += 100
    end
    puts n
end
price(item:"コーヒー")
price(item:"カフェラテ")


#7-5 問９
def order
    drink = "コーヒー"
    puts "#{drink}をください"
end
order
