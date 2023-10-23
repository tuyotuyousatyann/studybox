require "net/http" # gemを読み込む
require "uri" # gemを読み込む
uri = URI.parase("http://localhost:4567/hi")
p Net::HTTP.get(uri) # URIを引数にしてgetメソッドを呼び出す # => "hi!