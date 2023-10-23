require "net/http" # gemを読み込む
require "uri" # gemを読み込む
uri = URI.parse("https://igarashikuniaki.net/example.json")
p result = Net::HTTP.get(uri) # URIを引数にしてgetメソッドを呼び出す

# データをやりとりすることを目的としたJSONがある。