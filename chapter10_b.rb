#webアプリを簡単に作ることが出来るGemである、Sinatra を導入して使ってみる
#本ファイルは、サーバー側の処理を記述している

=begin

URLを入力して、HTTPのGETメソッドでリクエストを送る（GETメソッドを送るデータは、URLに含まれる）
サーバ側（Webアプリ側）で、リクエストに基づいた処理を行う
レスポンスとしてHTMLを返す
ブラウザは、レスポンスされてきたHTMLを解釈して表示する

=end

require "sinatra"   #requireメソッドで、sinatraを読み込む

#リクエストに応じて、HTMLを生成する

get "/hi"  do    #RubyのGETメソッドでリクエストに対応した処理を行う
    "hi!"
end

get "/drink" do
    ["カフェラテ", "モカ", "コーヒー"].sample   #sampleメソッド・・・配列の要素をランダムで１つ返す
end