p :apple.object_id # => 1194268
p :apple.object_id # => 1194268
p :apple.object_id # => 1194268

p 'apple'.object_id # => 60
p 'apple'.object_id # => 80
p 'apple'.object_id # => 100

# 文字列は破壊的な変更が可能
string = 'apple'
string.upcase!
p string #=> "APPLE"

# シンボルは破壊的な変更は不可能
symbol = :apple
p symbol.upcase! #=> NoMethodError: undefined method `upcase!' for :apple:Symbol
# イミュータブル（Immutable）とは、変更不可または変更できないという意味。イミュータブルなオブジェクトは、一度作成されたらその値を変更できない。新しい値を設定するためには新しいオブジェクトを作成する必要がある。