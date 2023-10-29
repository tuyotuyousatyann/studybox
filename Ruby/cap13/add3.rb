currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

p currencies['india'] #=> "rupee"

# 存在しないキーを指定するとnilが返る

p currencies['brazil'] #=> nil
