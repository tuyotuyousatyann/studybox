require "sinatra" # gemを読み込む
get "/hi" do #/hiというURLにアクセスしたときに、"hi!"と表示する
  "hi!"
end