menu = ["カフェラテ", "モカ", "コーヒー", "エスプレッソ"]
ordered = ["エスプレッソ", "カフェラテ"]
p not_ordered = menu - ordered # => ["モカ", "コーヒー"]

# 全メニューから注文済みメニューを引くことで、まだ注文していないメニューを取得できる