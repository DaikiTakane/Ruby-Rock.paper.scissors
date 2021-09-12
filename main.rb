def game
    puts "じゃんけん..."
    
def janken
    puts "0(グー)1(チョキ)2(パー)3(何も出さない)"
    
    player_hand = gets.to_i
    program_hand = rand(3)
    janken2 = ["グー","チョキ","パー","何も出さない"]   

    puts "あなたの手：#{janken2[player_hand]}、相手の手：#{janken2[program_hand]}"

    if player_hand == 3
        puts "平和が一番ですね"
        return false
    elsif player_hand == program_hand then
        puts "あいこで"
        return true
    elsif player_hand == 0 && program_hand == 1 || player_hand == 1 && program_hand == 2 || player_hand == 2 && program_hand == 0 then
        puts "あなたの勝ち"
        @result = "win"
        return false

    else
        puts "あなたの負け"
        @result = "lose"
        return false
    end
end

next_game = true

while next_game do
    next_game = janken
end

if @result == "win"
    puts "あっち向いて..."
    puts "0(上)1(右)2(下)3(左)"
    
    player_direction = gets.to_i
    program_direction = rand(4)
    
    direction = ["上","右","下","左"]
    
    puts "ほい！"
    puts "あなたの手は#{direction[player_direction]} 相手向きは#{direction[program_direction]}"
    
    if player_direction == program_direction
        puts "あなたの勝ち！"
        return false
    else
        puts "残念"
        return true
    end
end

if @result == "lose"
    puts "あっち向いて..."
    puts "0(上)1(右)2(下)3(左)"
    
    player_direction = gets.to_i
    program_direction = rand(4)
    
    direction = ["上","右","下","左"]
    
    puts "ほい！"
    puts "あなたの向き#{direction[player_direction]} 相手の手は#{direction[program_direction]}"
    
    if player_direction == program_direction
        puts "あなたの負け！"
        return false
    else
        puts "セーフ"
        return true
    end
end
end

next_game = true

while next_game
  next_game = game
end