#例外の詳しい情報を得る・・・rescue節の後ろに =>e と書くことで、変数eに例外オブジェクトが代入される

#例
#Fileクラス・・・組み込みライブラリのひとつで、ファイル操作をするためのクラス
def hyouji(filename)
    File.open(filename) do |file|   #FIle.open()は引数で指定したファイルを開き、ファイル操作のためのFileオブジェクトを作ってfile変数に代入する
        file.each_line{|line| puts line}   #each_lineメソッド：ファイルの先頭から１行ずつ読み込み、繰り返しline変数に代入する
    end   #ファイル操作が終了したので、ファイルが閉じられる
rescue SystemCallError => e   #受け取った例外オブジェクトが変数eに代入される

    #SystemCallErrorが発生(ファイル操作に失敗)した場合、以下が表示される
    puts "--- 例外が発生しました ---"   
    puts "例外クラス：#{e.class}"   #例外オブジェクトのクラス名を表示する
    puts "例外メッセージ：#{e.message}"   #例外オブジェクトのメッセージを表示する
end

#ARGV・・・Rubyが用意した特別な定数で、コマンドプロンプトで指定した引数（今回の例だと、ファイル名）を要素として持つ配列
filename = ARGV.first   #ARVGに .first を付ける事で、先頭の要素を取得し、変数に格納
hyouji(filename)   #コマンドプロンプトで指定したファイル名を引数とし、hyoujiメソッド実行



#例外を発生させる・・・raiseメソッド
#raiseメソッド書式（必ずRuntimeErrorになる）・・・raise "例外メッセージ"
#raiseメソッド書式（特定の例外クラスを指定したい時）・・・raise 例外クラス名, "例外メッセージ"

#raiseメソッド使用例（年齢から、未成年、成年を判定。 マイナスなら例外を投げる）
def type(age)
    if age < 0
        raise "年齢がマイナスです（#{age}才）"
    elsif age < 20
        "未成年"
    else 
        "成年"
    end
end

age = ARGV[1].to_i   #コマンドプロンプトで指定した２つ目の値を取得（ファイル操作のコードと同時に実行させるため）
type = type(age)
puts "#{age}才は#{type}です"   #例外が発生したら、その時点で処理が止まる


#例外の有無に関わらず必ず処理を実行する・・・ensureメソッド

=begin

ensureメソッドの書式：begin~rescueに追加する
    begin
        例外が発生する可能性がある処理
    rescue => e
        例外が発生したときに実行する処理（rescue節）
    ensure
        例外の発生有無に関わらず実行される処理
    end

=end

#ensureメソッドの使用例（上記のコードを改変）
begin
    #例外が発生する可能性のある処理
    age = ARGV[2].to_i
    puts "#{age}才は#{type(age)}です"
rescue => e
    #例外が発生したときに実行する処理
    puts "例外が発生しましした#{e.message}"
ensure
    #例外の発生有無にかかわらず実行される処理
    puts "ご利用ありがとうございました"
end