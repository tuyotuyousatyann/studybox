require "net/http" # gemを読み込む
require "uri" # gemを読み込む
require "cgi" # gemを読み込む
uri = URI.parse("http://localhost:4567/drink")
p result = Net::HTTP.get(uri) # URIを引数にしてgetメソッドを呼び出す
p CGI.unescape(result) # CGI.unescapeメソッドを使ってデコードする
