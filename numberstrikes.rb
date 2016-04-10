#coding: utf-8

puts ""
puts "---NumberStrike---"
puts ""

# プレイヤー数を配列で作ってる。
puts "Playerの人数を入力してください。"
print "数値入力:"


# 此処で入力した数だけ配列を作ってる
player_num = gets.to_i
player = Array.new(player_num)
puts ""

puts "#{player_num}人ですね。了解。"
yobun1 = gets.to_i

#　本当に作られているか確認
# puts player.length

#プレイヤーの数だけ繰り返して名前を入れ込んでる。1から繰り返しをしてるから0は含まれないわけ。
1.upto(player_num) do |i|
  # プレイヤー１の名前をを登録してる。
  puts "Player#{i}の名前を入れてね"
  print "入力:"
  player[i] = gets.chomp
  puts ""
  puts "Player#{i}は#{player[i]}ですね。了解。"

  #一旦次の処理に移るクッション。ボタン押して進ませる。
  yobun1 = gets.to_i

end
puts ""

#ここでそれぞれの名前を挿入、表示。
puts "ではナンバーを当ててください。"
yobun8 = gets.chomp

#数字の上限をここでプレイヤーから取得
puts "数字の上限を設定してください。"
puts ""
print "入力:"

suji_jogen = gets.to_i

puts "#{suji_jogen}ですね。了解。"

#ここで貰った数字をランダムの中に突っ込む。
answer_num = rand suji_jogen

puts ""

num_yobun1 = gets.to_i

puts "ちょっとまってね。"
puts ""

num_yobun2 = gets.to_i

puts "はい。ナンバーが決定しました。"
num_yobun3 = gets.to_i


puts "一人三回まで質問できます。"
num_yobun3 = gets.to_i

print "じゃあ皆さん。適当に頑張ってください。"
puts ""
num_yobun4 = gets.to_i

#処理２　プレイヤーが一回ずつ質問したらまたそれを三回繰り返す。
1.upto(3) do |k|
  puts ""
  puts "#{k}巡目"
  #処理１　プライヤーの数だけ一回ずつ質問する。最初に聞いたプレイヤーの人数の変数を入れて廻してる。
  1.upto(player_num) do |i|
  
    num_yobun16 = gets.to_i
    puts "では#{player[i]}の番です。適当に数字を入れてください。"
    puts ""
    print "数字入力:"
    player_qnum = Array.new(player_num)

    player_qnum[i] = gets.to_i
  
    case
    when player_qnum[i] > answer_num
      puts ""
      puts "DOWN"
    when player_qnum[i] <= answer_num
      puts ""
      puts "UP"
    else player_qnum[i] == t
      puts "文字を入れてっていったよね？"

    end
  end
end

num_yobun5 = gets.to_i

puts ""
puts "三回の質問タイムが終わったです。"
puts ""

num_yobun6 = gets.to_i

puts ""
puts "じゃあ最終的に何番か当ててください。"
puts ""


num_yobun6 = gets.to_i

#プレイヤーの最終的にだす答えの数字を入れる配列作成。
player_answer = Array.new(player_num)
#プレイヤーの数だけまた質問
1.upto(player_num) do |s|
  puts ""
  puts "#{player[s]}さんは何番だと思うん？"
  puts ""
  puts "答えの数字を入力してください...."

  print "数字入力:"
  #作った配列にどんどんいれちゃおうねー
  player_answer[s] = gets.to_i

  puts ""

  puts "#{player_answer[s]}ですね。了解。"

  num_yobun6 = gets.to_i
end
num_yobun6 = gets.to_i

puts ""

puts "両プレイヤーの答えが出ました。"

puts ""
num_yobun6 = gets.to_i

puts "両者の番号"

#数字を連続で表示するだけの繰り返し
1.upto(player_num) do |f|

  puts "#{player[f]}:#{player_answer[f]}"

end  

puts ""

num_yobun6 = gets.to_i

puts "結果発表に移ります。ぴったりだったらレジェンド。"

puts ""

num_yobun11 = gets.to_i

puts "正解は.."

num_yobun12 = gets.to_i

puts "..."

num_yobun12 = gets.to_i

puts "......"

num_yobun13 = gets.to_i

puts ""

puts "#{answer_num}!!!!!!"

puts ""
num_yobun14 = gets.to_s


#人数を変更する。数字の幅を広げられる。

#ここで答えを比べてる。もっと煽り文を分岐させたい。
1.upto(player_num) do |l|

  case answer_num
  when player_answer[l]
    puts "ぴったりとは・・・#{player[l]}・・・恐ろしい子・・・。"
    puts ""
    puts "他の奴らｗｗｗだっさーーーｗｗｗｗぷぅーーーｗｗ"
  else
    #ここのelseで４回呼ばれてしまう。沢山出るので大変うざい。
    puts "全員違うとかｗｗｗｗ出直してきなさいｗｗｗ"
  end
end
=begin

case answer_num
when player_answer[1] == answer_num
  puts "ぴったりとは・・・#{player[1]}・・・恐ろしい子・・・。"
  puts ""
  puts "他の奴らｗｗｗだっさーーーｗｗｗｗぷぅーーーｗｗ"
when player_answer[2] == answer_num
  puts "ぴったりとは・・・#{player[2]}・・・恐ろしい子・・・。"
  puts ""
  puts "他の奴らｗｗｗだっさーーーｗｗｗｗぷぅーーーｗｗ"
when player_answer[3] == answer_num
  puts "ぴったりとは・・・#{player[3]}・・・恐ろしい子・・・。"
  puts ""
  puts "他の奴らｗｗｗだっさーーーｗｗｗｗぷぅーーーｗｗ"
when player2_answer == answer_num
  puts "やるじゃない#{player2}。そして伝説へ...."
  puts ""
  puts "#{player1}ｗｗｗｗ出直してきなさいｗｗｗがははｗｗ"
when player1_answer && player2_answer == 0
  puts "0はいれないでくれ0は"
when player1_answer == 0
  puts "0・・・空気読め#{player1}"
when player2_answer == 0
  puts "0・・・空気読め#{player2}"
when player1_answer && player2_answer == answer_num
  puts "おいおいどっちも正解とは・・・興ざめだぜ・・・"
when answer_num == 0
  puts "答えが0とかついてないな君たちｗｗ"
else
  puts "どっちも全然違うじゃない！出直してきなさいｗｗｗ"
end

=end
puts ""


