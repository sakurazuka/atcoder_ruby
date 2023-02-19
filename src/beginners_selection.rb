require 'debug'

class BeginnersSelection
  def practice_a
    # 整数の入力
    a = gets.to_i
    b,c=gets.chomp.split(" ").map(&:to_i)
    # スペース区切りの整数の入力
    # 文字列の入力
    s = gets.chomp
    # 出力
    print "#{a+b+c} #{s}\n"
  end

  def abc086a_product
    # スペース区切りの整数の入力
    a,b=gets.chomp.split(" ").map(&:to_i)
    # 出力
    print "#{a*b%2 === 0 ? 'Even' : 'Odd'}\n"
  end

  def abc081a_placing_marbles
    # スペース区切りの整数の入力
    # 出力
    print "#{gets.chomp.split('').map(&:to_i).inject(:+)}\n"
  end

  def abc081b_shift_only
    # 操作通りに処理をするパターン
    # n = gets.to_i
    # m = gets.chomp.split(" ").map(&:to_i)
    # c = 0

    # while(true) do
    #   flag = false
    #   m.each do |a|
    #     flag = (a % 2 === 1)
    #     break if flag
    #   end
    #   break if flag

    #   m.each.with_index do |a, i|
    #     m[i] = (a / 2)
    #   end

    #   c += 1
    # end

    # print "#{c}\n"


    # 線形探索で解くパターン
    n = gets.to_i
    m = gets.chomp.split(" ").map(&:to_i)
    c = 10000

    m.each do |a|
      b = 0

      while(a % 2 === 0) do
        a /= 2
        b += 1
      end

      c = b if c > b
    end

    print "#{c}\n"


    # ２進数を使って解くパターン
    # n = gets.to_i
    # a = gets.chomp.split(" ").map(&:to_i)

    # print "#{a.map{|b| b.to_s(2).reverse.index('1')}.min()}\n"
  end

  def abc087b_coins
    a, b, c, x = (0..3).to_a.map{gets.to_i}
    print "#{(0..a).to_a.product((0..b).to_a, (0..c).to_a).count{|i, j, k| (i*500 + j*100 + k*50) === x}}\n"
  end

  def abc087b_coins_speed
    a = gets.to_i
    b = gets.to_i
    c = gets.to_i
    x = gets.to_i
    y = 0
    (0..a).each{|i|
      (0..b).each{|j|
        (0..c).each{|k|
          if((i*500 + j*100 + k*50) === x)
            y += 1
          end
        }
      }
    }
    puts y
  end
end
