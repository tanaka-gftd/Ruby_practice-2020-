#CHAPTER１０   練習問題１

#10-2 問1
require "sinatra"

get "/omikuji" do   #パス名を "" で囲むのを忘れないように!
    ["大吉", "中吉", "末吉","凶"].sample    
end

get "/hi"  do    #RubyのGETメソッドでリクエストに対応した処理を行う
    "hi!"
end

require "net/http"
require "uri"
uri = URI.parse("http://localhost:4567/hi")
p Net::HTTP.get(uri)