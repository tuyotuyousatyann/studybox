menu = {"コーヒー" => 300, "カフェラテ" => 400}
keys = []
menu.each do |key, value|
  keys.push(key)
end
p keys

# キーのみを取り出すことができる。