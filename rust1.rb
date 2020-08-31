# if文オリジナルプログラム
# DAPUMPの名曲「if」1番のサビをif文にしてみた

# DAPUMPの名曲「if」1番のサビ
# もしも君がひとりなら 迷わず飛んでいくさ
# (俺の行く末密かに暗示する人Honey!)
# もしも誰かといた時は 解けるのかな魔法は
# 張り裂けそうな胸の痛みは…

# 状況をsituationへ代入
situations = ["1人", "誰かと一緒"]

# 状況を表示する
puts "相手の状況を選択して下さい"

situations.each.with_index(1) do |situation, i|
  puts "#{i}. #{situation}"
end

# 状況を入力する表示
while true
  print "状況を選択 >"
  your_situation = gets.chomp.to_i
  break if(1..2).include?(your_situation)
    puts "不正な値です。「1」または「2」を入力お願いします。"
end

selected_situation = situations[your_situation -1]

puts "#{selected_situation}ですが、どうしますか？"

copings = ["迷わず飛んでいく", "何もできない（張り裂けそうな胸の痛み）"]

copings.each.with_index(1) do |coping, i|
  puts "#{i}. #{coping}"
end

# 対応を入力する表示
while true 
  print "対応を入力 > "
  my_coping = gets.chomp.to_i
  break if(1..2).include?(my_coping)
    puts "不正な値です。「1」または「2」を入力お願いします。"
end

# 結果の表示
comment1 = "励ましのエール： "
comment2 = "ファイトーー！いっぱーつ！"

if your_situation == 1 && my_coping == 1
  puts "#{comment1}応援してるぞ！ #{comment2}"
elsif  your_situation == 1 && my_coping == 2
  puts "#{comment1}ビビってる場合か！#{comment2}"
elsif  your_situation == 2 && my_coping == 1
  puts "#{comment1}相手が既婚者か確認しろよ！#{comment2}"
else 
  puts "#{comment1}オロナミンif 飲んで元気出せ！#{comment2}"
end
