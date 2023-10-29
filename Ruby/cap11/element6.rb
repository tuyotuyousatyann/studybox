# lengthとwidthに値が渡されるが、fooとbarはnilになる
dimension = [
# [length, width]
[ 10, 20 ],
[ 30, 40 ],
[ 50, 60 ],
]

dimension.each do |length, width, foo, bar|
p [length, width, foo, bar]
end

# => [10, 20, nil, nil]
# => [30, 40, nil, nil]
# => [50, 60, nil, nil]
