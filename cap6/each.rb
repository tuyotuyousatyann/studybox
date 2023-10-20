menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key, value|
  puts "#{key} は #{value}円です"
end

# コーヒー は 300円です
# カフェラテ は 400円です

# eachメソッドは、ハッシュのキーと値を順番に取り出すことができるメソッド。