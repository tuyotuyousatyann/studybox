class Cafe
  def staff
    makanai #1
  end
  def makanai
    "店員用スペシャルメニュー"
  end
end

cafe = Cafe.new
puts cafe.staff # => 店員用スペシャルメニュー
puts cafe.makanai # => 店員用スペシャルメニュー #2

# cafe.staffの呼び出しで、makanaiメソッドが呼び出される
# cafe.makanaiの呼び出しで、makanaiメソッドが呼び出される
# 2での呼び出しを禁止するには、privateを使う