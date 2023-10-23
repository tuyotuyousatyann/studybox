require "sinatra" # gemを読み込む
get "/omikuji" do # /omikujiというURLにアクセスすると
  ["大吉", "中吉", "末吉", "凶"].sample 
end