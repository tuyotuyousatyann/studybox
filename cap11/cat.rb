def cat(filename)
  File.open(filename) do |file| # ファイルを開く
    file.each_line {|line| puts line } # ファイルの内容を表示する
  end # ファイルを閉じる
rescue SystemCallError => e # 例外処理：例外オブジェクトを変数eに格納する
  puts "--- 例外が発生しました ---"
  puts "例外クラス: #{e.class}"# 例外クラスを表示する
  puts "例外メッセージ": #{e.message}" # 例外メッセージを表示する
end
filename = ARGV.first # コマンドプロンプトで指定したファイル名を取得する
cat(filename)