
puts("hello world")
# カッコは省略できる
puts "hello world"

# 一行コメント
=begin
ブロックコメントはこれ
ですよ
=end


# class
class Greeting

    # コンストラクタ
    def initialize
        setup
    end

    def execute
        message = "hello!" # これはローカル変数 このブロック内で有効
        puts message 
    end

    def setup
        @mess = "good morning" # インスタンス変数 このclass内で有効 つねにprivate メソッド経由で取得
    end

    def exec2
        puts @mess
    end

    private # これ以降に定義したメソッドはprivateになる
    def exec3
        puts @mess
    end

end

# オープンクラスのためこういうことができる
class Greeting
    def exec4 message="hoge" # def exec4(message="hoge") これのカッコも省略できる
        puts message
    end
end



# new と呼び出し
greeting = Greeting.new
greeting.execute

# インスタンス変数の確認
# greeting.setup
greeting.exec2
greeting.exec4 "hogehogehoge"

puts greeting.class.superclass # クラス構成をrubyに聞く

# if文 文字列の連結
a = 2
if a == 1
  puts a
elsif a == 2
  puts a.to_s + " desu"
else
  puts "no"
end



=begin
# [繰り返し構文]

while 継続条件 do
  # ...
end

until 終了条件 do # while の逆
  # ...
end

for 変数 in オブジェクト do
  # ...
end

# [メソッド]

100.times do
  # ...
end

配列.each do |変数|
  # ...
end

ハッシュ.each do |キー, 値|
  # ...
end

loop do # 無限ループ
  # ...
end
=end



=begin
名前について

Ruby では、以下は単なる慣習ではなく、名前によりスコープが決定
ローカル変数 : 先頭が小文字 or _
グローバル変数 : 先頭が $
インスタンス変数: 先頭が @
クラス変数 : 先頭が @@
定数 : 先頭が大文字

以下は慣習
変数名、メソッド名は、xxx_xxx_xxx のような、小文字を _ でつなぐ形
クラス名、モジュール名は、キャメルケース
?で終わるメソッドは、真偽値を返す
!で終わるメソッドは、破壊的メソッド
=end


# 特異メソッドについて
