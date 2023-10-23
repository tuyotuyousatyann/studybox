require "net/http" # gemを読み込む
require "uri" # gemを読み込む
require "json" # gemを読み込む
uri = URI.parse("https://example.com/")
result = Net::HTTP.post(uri, {mocha: 400}.to_json, "Content-Type" => "application/json")
p result

# content-type: application/jsonは送るデータの形式をjsonに指定している。