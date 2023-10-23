require "net/http" # gemを読み込む
require "uri" # gemを読み込む
require "json" # gemを読み込む
uri = URI.parse("https://igarashikuniaki.net/example.json")
result = Net::HTTP.get(uri) # URIを引数にしてgetメソッドを呼び出す
hash = JSON.parse(result) # JSONをパースしてハッシュに変換する
p hash
p hash["caffe latte"] # ハッシュのキーを指定すると値が取得できる