require "net/http" # gemを読み込む
require "uri" # gemを読み込む
uri = URI.parse("https://example.com/")
puts Net::HTTP.get(uri) # URIを引数にしてgetメソッドを呼び出す
