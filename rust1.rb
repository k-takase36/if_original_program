# if文オリジナルプログラム作成
# DA PUMPさんの名曲「if...」1番のサビをif文にしてみた

# 「if...」（歌：DA PUMP 1番のサビ）
# もしも君がひとりなら 迷わず飛んでいくさ
# (俺の行く末密かに暗示する人Honey!)
# もしも誰かといた時は 解けるのかな魔法は
# 張り裂けそうな胸の痛みは…
# 出典：（作詞：m.c.A・T 作曲：富樫明生）

# 状況を代入
situations = ["1人", "誰かと一緒"]

# 状況を表示する
puts "相手の状況を選択して下さい"

situations.each.with_index(1) do |situation, i|
  puts "#{i}. #{situation}"
end

puts "-" * 30

# 状況を入力する表示
while true
  print "状況を選択 > "
  your_situation = gets.chomp.to_i
  break if(1..2).include?(your_situation)
    puts "不正な値です。「1」または「2」を入力お願いします。"
end

puts "-" * 30

selected_situation = situations[your_situation -1]

puts "#{selected_situation}ですが、どうしますか？"

copings = ["迷わず飛んでいく", "何もできない（張り裂けそうな胸の痛み）"]

copings.each.with_index(1) do |coping, i|
  puts "#{i}. #{coping}"
end

puts "-" * 30

# 対応を入力する表示
while true 
  print "対応を入力 > "
  my_coping = gets.chomp.to_i
  break if(1..3).include?(my_coping)
    puts "不正な値です。「1〜3」を入力お願いします。"
end
puts "-" * 30

# コメントを代入
comment1 = "励ましのエール： "
comment2 = "ファイトー！ いっぱーつ！"
comment3 = "※ ~PS~ 結論この曲大好きです。"

# 結果の表示
if your_situation == 1 && my_coping == 1
  puts "#{comment1}応援してます！ #{comment2}"
  puts "#{comment3}"
elsif  your_situation == 1 && my_coping == 2
  puts "#{comment1}ビビってる場合ですか！#{comment2 }"
  puts "#{comment3}"
elsif  your_situation == 2 && my_coping == 1
  puts "#{comment1}既婚者ならSTOP！他の恋を探して下さい！#{comment2}"
  puts "#{comment3}"
else 
  puts "#{comment1}オロナミンif 飲んで元気出して！#{comment2}"
  puts "#{comment3}"
end
