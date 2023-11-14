#じゃんけん（Rock-Paper-Scissors）
def rps
  rps_hand = ["グー", "チョキ", "パー"]

  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  select_rps = gets.to_i

  if select_rps == 3
    return puts "終了します"

  elsif (select_rps < 0) || (select_rps > 3) #1~3以外の入力が合った場合最初からやり直し
    puts "入力が不正です。0~3の数字を入力してください"
    puts "--------------------"
    rps

  else
    player_hand = rps_hand[select_rps]
    npc_hand = rps_hand.sample

    puts "「ホイ！」"
    puts "--------------------"
    puts "あなた：#{player_hand}を出しました"
    puts "相手：#{npc_hand}を出しました"

    if player_hand == npc_hand
      puts "「あーいこで」"
      rps

    elsif (player_hand == "グー" && npc_hand == "チョキ") || (player_hand == "チョキ" && npc_hand == "パー") || (player_hand == "パー" && npc_hand == "グー")
      puts "「じゃんけん勝ち！」"
      puts "--------------------"
      ltw("win")

    else
      puts "「じゃんけん負け・・・」"
      puts "--------------------"
      ltw("lose")
    end

  end
end

#あっちむいてほい（Look This Way）
def ltw(result)
  direction = ["上", "下", "左", "右"]

  puts "「あっちむいて〜・・・」"
  puts "0(上) 1(下) 2(左) 3(右)"
  select_direction = gets.to_i

  if (select_direction < 0) || (select_direction > 3) #1~3以外の入力が合った場合最初からやり直し
    puts "入力が不正です。0~3の数字を入力してください"
    puts "--------------------"
    ltw

  else
    player_direction = direction[select_direction]
    npc_direction = direction.sample

    puts "「ホイ！」"
    puts "--------------------"
    puts "あなた：#{player_direction}"
    puts "相手：#{npc_direction}"

    if player_direction == npc_direction
      if result == "win"
        puts "「あなたの勝ち！」"
      elsif result == "lose"
        puts "「あなたの負け・・・」"
      end

    else
      puts "「もう一回！」"
      puts "--------------------"
      rps
    end

  end

end

puts "「さいしょはグー！じゃーんけん・・・」"
rps