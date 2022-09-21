#Webページへアクセスするプログラムを作る

require "net/http"   #標準添付ライブラリ net/http を読み込む（これで、Net::HTTPクラスが使えるようになる）
require "uri"   #標準添付ライブラリ uri を読み込む（これで、URIモジュールが使えるようになる）
require "json"   #標準添付ライブラリ json を読み込む（JSONをハッシュに変換する）


#URIモジュールでURIオブジェクトを作成
#URI.parseメソッドに、URLを文字列として渡すことで、URIオブジェクトを作成
#URIとは、インターネット資源に対する識別情報や所在場所を示すもので、URLの上位の概念
#https://example.com/は、IANA（Internet Assigned Numbers Authority：インターネットに関連する資源を管理する組織）が例として用意しているURL
uri1 = URI.parse("https://example.com/")

#HTMLソースだけでなく、JSONも取得できる
uri2 = URI.parse("https://igarashikuniaki.net/example.json")

#Net::HTTP.getメソッドで uri1 に格納されたサイトで取得したHTMLソースを、putsメソッドで表示する
puts Net::HTTP.get(uri1)

#Net::HTTP.getメソッドで uri2 に格納されたサイトで取得したJSONを、putsメソッドで表示する
puts Net::HTTP.get(uri2)

result1 = Net::HTTP.get(uri2)
hash = JSON.parse(result1)   #JSON.parseメソッドで、表示形式をJSONからハッシュへと変換

puts hash   #hashに格納されたハッシュを表示
puts hash ["caffe latte"]   #hashに格納されたハッシュから、キーを使って値を取得

puts hash.to_json   #to_jsonメソッドで、ハッシュをJSONに変換
puts ({mocha: 400}.to_json)   #同上   pメソッドに引数を渡す際、()で囲まないと意図通りに解釈されずエラーとなる

#WebページへHTTP POSTメソッドでリクエストをする
#リクエスト先の状態を変えない時はGETメソッド、リクエスト先の状態を変える時はPOSTメソッドを使う
#POSTメソッドは例として、入力フォームに情報を入れて登録ボタンを押したときなどに使う
result2 = Net::HTTP.post(uri1, {mocha: 400}.to_json, "Content-Type" => "application/json")
p result2

