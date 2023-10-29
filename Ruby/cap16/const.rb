class TrafficLight
  COLORS = [
    GREEN = 0,
    YELLOW = 1,
    RED = 2
  ]
end

TrafficLight::GREEN
TrafficLight::YELLOW
TrafficLight::RED
TrafficLight::COLORS

# mapメソッドの戻り値を定数に代入する

NUMBERS = [1, 2, 3].map { |n| n * 10 }
NUMBERS

# 定数と再代入

class Product
  DEFAULT_PRICE = 0
  DEFAULT_PRICE = 1000
end

Product::DEFAULT_PRICE

Product::DEFAULT_PRICE = 3000

Product::DEFAULT_PRICE

# クラス外部からの再代入を防ぎたいとき、クラスを凍結（freez）するが、クラスを凍結すると、クラスの変更だけでなく、インスタンス変数の変更もできなくなるので使わない
