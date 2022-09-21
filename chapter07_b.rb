#p176 練習問題
def order
    puts "カフェラテをください"
end
order

def area
    puts 3 * 3
end
area 

def dice
    puts [1,2,3,4,5,6].sample
end
dice

def order(item)
    puts "#{item}をください"
end
order("カフェラテ")
order("モカ")


def dice
    n = [1,2,3,4,5,6].sample
    if n == 1
        puts "もう１回"
        return #解答を見る限り、１も表示するようだ
    end
    puts n
end
dice

def price (item:)
    if item == "コーヒー"
        puts "300"
    end
    if item == "カフェラテ"
        puts "400"
    end
end
price(item:"コーヒー")
price(item:"カフェラテ")

def price (item:,size:)
    case
    when size == "ショート"
        n = 0
    when size == "トール"
        n = 50
    when size == "ベンティ"
        n = 100
    else
        puts "エラー"
        return
    end   
    if item == "コーヒー"
        puts 300 + n
    end
    if item == "カフェラテ"
        puts 400 + n
    end
end
price(item:"コーヒー",size:"トール")
price(item:"カフェラテ",size:"ベンティ")
price(item:"コーヒー",size:"グランデ")

def price (item:,size:"ショート")
    case
    when size == "ショート"
        n = 0
    when size == "トール"
        n = 50
    when size == "ベンティ"
        n = 100
    else
        puts "エラー"
        return
    end   
    if item == "コーヒー"
        puts 300 + n
    end
    if item == "カフェラテ"
        puts 400 + n
    end
end
price(item:"コーヒー",size:"トール")
price(item:"カフェラテ",size:"グランデ")
price(item:"コーヒー")

def order
    drink = "コーヒー"
    puts "#{drink}をください"
end
order
