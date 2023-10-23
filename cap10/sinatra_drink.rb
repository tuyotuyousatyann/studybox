require "sinatra" # gemを読み込む
get "/drink" do # /drinkというURLにアクセスすると
  ["カフェラテ", "モカ", "コーヒー"].sample # 1
end
  
  # 1.3つの中からランダムに1つ表示する