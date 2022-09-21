#ライブラリ・・・色々なプログラムで共有して使うプログラムのこと
=begin

Rubyの世界には、大きく分けて3つのライブラリがある。
    ・組み込みライブラリ：何も準備せずに使える（例、Integer, String, Array, Hashといったクラス）
    ・標準添付ライブラり：requireメソッドを実行して準備する（例、JSONなど）
    ・Gem：インストールが必要となるもの rubygems.orgというサイトで公開されている（インストールはコマンドプロンプトから行う）

=end

#Gemの例として、awesome_printを使ってみる
require "awesome_print"
ap ["カフェラテ", "モカ", "コーヒー"]   #apメソッドはawesome_printのメソッド


=begin

たくさんのGemを、ひとつひとつgem installしていくのは大変。
そのため、複数のGemを管理するBundlerという仕組みがある。
Bundlerなら、Gem群を一気にインストールできる
    （手順）
    1:Bundlerをインストールする（Bundlerはよく使われるので、Rubyと一緒にインストールされている場合あり）
    2:Gemfileの作成
    3:bundle installコマンドの実行


    bundle init ・・・ Gemfileの作成
    bundle install ・・・ Gemfileに記載されたGemをインストール
    bundle update ・・・ Gemfileに記載されたGemをアップデート
    bundle exec ・・・ Gemfile.lockに書かれたバージョンのGemでRubyのプログラムを実行できる

    Gemfile・・・Bundlerを使ってインストールするGemのリストを記載する
    Gemfile.lock・・・実際にインストールされたGemとそのバージョン情報が記載されている
    （Gemfileを発注書、Gemfile.lockを納品書に例えると、イメージしやすい）

=end


