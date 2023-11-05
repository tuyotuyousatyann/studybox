# 発生させた例外について紐解く

irb(main):098:0> 1 + '10'
(irb):98:in `+': String can't be coerced into Integer (TypeError)
	from (irb):98:in `<main>'
	from /Users/K/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.6.2/exe/irb:11:in `<top (required)>'
	from /Users/K/.rbenv/versions/3.2.2/bin/irb:25:in `load'
	from /Users/K/.rbenv/versions/3.2.2/bin/irb:25:in `<main>'

４行目 (TypeError)は、発生した例外のクラス名
 データ型のエラーが発生したことを意味する
５行目 from (irb):98:in `<main>'は、例外が発生した場所を指す
それ以降は、例外が発生するまでの呼び出し履歴を示す
バックレースやスタックレースと呼ばれる
デバックする際の重要な情報が含まれている


