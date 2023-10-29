# 「Alice Rubyさん、20歳」というユーザーのオブジェクトを作成する

alice = User.new('Alice', 'Ruby', 20)

# 「Bob Pythonさん、30歳」というユーザーのオブジェクトを作成する

bob = User.new('Bob', 'Python', 30)

alice.full_name #=> "Alice Ruby"

bob.full_name #=> "Bob Python"

# クラスをもとにして作られたデータの塊をオブジェクトと呼ぶ
# オブジェクトは、クラスのインスタンスとも呼ばれる

# オブジェクトのことは、レシーバという

