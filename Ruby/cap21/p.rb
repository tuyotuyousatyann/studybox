def greet(country)
  puts 'greet start.'
  return 'countryを入力してください' if country.nil?
  if country == 'japan'
    puts 'japan'
    'こんにちは'
  else
    puts 'other'
    'hello'
  end
end

# putsメソッドは戻り値がnilになる
# pメソッドは引数がそのまま返る
# pメソッドは便利

def calc_fare(ticket)
  from = STATIONS.index(ticket.stamped_at)
  to = STATIONS.index(@name)
  distance = p to - from
  FARES[distance - 1]
end

