def rps
  rps_hand = ["グー", "チョキ", "パー"]

  puts "さいしょはグー！じゃんけん…"
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

  select_rps = gets.to_i

  if select_rps == 3
    return puts "終了します"

  elsif (select_rps < 0) || (select_rps > 3) #1~3以外の入力が合った場合最初からやり直し
    puts "入力が不正です。0~3の数字を入力してください"
    puts "----------"
    rps

  else
    your_hand = rps_hand[select_rps]
    npc_hand = rps_hand.sample

    puts "ホイ！"
    puts "----------"
    puts "あなた：#{your_hand}を出しました"
    puts "相手：#{npc_hand}を出しました"

    if your_hand == npc_hand
      puts "あいこで"
      rps
    end
  end
end

rps