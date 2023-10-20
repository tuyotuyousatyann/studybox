menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each_value do |key, value|
  puts "#{key} - #{value}円"
end

# コーヒー - 300円
# カフェラテ - 400円