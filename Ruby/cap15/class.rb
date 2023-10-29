# ユーザーのデータを作成する
# ユーザーのデータを表示する
users = []
users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
users << { first_name: 'Bob', last_name: 'Python', age: 30 }

users.each do |user|
  puts "氏名": "#{user[:first_name]} #{user[:last_name]}、年齢: #{user[:age]}"
end
#=> 氏名: Alice Ruby、年齢: 20
#   氏名: Bob Python、年齢: 30

# 氏名についてはメソッドを作成すると、他に氏名を使う場面が出てきたときにメソッドを再利用できる

# ユーザーのデータを作成する
users = []
users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
users << { first_name: 'Bob', last_name: 'Python', age: 30 }

# 氏名を作成するメソッド
def full_name(user)
  "#{user[:first_name]} #{user[:last_name]}"
end

# ユーザーのデータを表示する
user.each do |user|
  puts "氏名: #{full_name(user)}、年齢: #{user[:age]}"
end

#=> 氏名: Alice Ruby、年齢: 20
#   氏名: Bob Python、年齢: 30

# ハッシュを使うとキータイプミスをしたときにnilが返ってしまう

users[0][:first_name] #=> "Alice"

# 間違ったキーを指定してもエラーにならないので、不具合が起きても気づきにくいというデメリットがある

users[0][:first_mame] #=> nil

# ハッシュは、新しくキーを追加したり、内容を変更できたりと自由自在だが
# その分、キーのタイプミスや、キーの存在を忘れてしまうというミスも起きやすい
# 脆くて壊れやすいプログラムになりがち

# 勝手に新しいキーを追加
users[0][:country] = 'japan' #=> "japan"
# 勝手にfirst_nameを変更
users[0][:first_name] = 'Carol' #=> "Carol"
# ハッシュの中身が変更される
users[0] #=> {:first_name=>"Carol", :last_name=>"Ruby", :age=>20, :country=>"japan"}

# 大きなプログラムになると、ハッシュでは管理しきれなくなる
# そこで、クラスを使う
# ガチガチに固めるためにuserクラスを作成する

# Userクラスを定義する
class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name  = last_name
    @age        = age
  end
end

# ユーザーのデータを作成する
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

# 氏名を作成するメソッド

def full_name(user)
  "#{user.first_mame} #{user.last_name}"
end

# ユーザーのデータを表示する
users.each do |user|
  puts "氏名: #{full_name(user)}、年齢: #{user.age}"
end

#=> 氏名: Alice Ruby、年齢: 20
#   氏名: Bob Python、年齢: 30

# Userクラスを導入することで、タイプミスをしたときにエラーが発生
# 新しく属性を追加したり、内容を変更したりすることができない

