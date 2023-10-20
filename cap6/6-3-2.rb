menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key, value|
  puts "#{key} - #{value}円" if value >= 350
end

# カフェラテ - 400円

# if value >= 350で値が350以上のキーと値を取得することができる。