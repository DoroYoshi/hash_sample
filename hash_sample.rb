class User
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
    @height = params[:height]
  end

  def judge
    puts "----------------------"
    puts "#{@name}さん"
    if (@age <= 64) && (@height >= 130)
      puts "年齢　#{@age}歳:年齢確認OK"
      puts "身長　#{@height}cm:身長確認OK"
      puts "\nご利用いただけます"
    elsif (@age <= 64) && (@height < 130)
      puts "年齢　#{@age}歳:年齢確認OK"
      puts "身長　#{@height}cm:身長確認NG"
      puts "\nご利用いただけません"
    elsif (@age > 64) && (@height >= 130)
      puts "年齢　#{@age}歳:年齢確認NG"
      puts "身長　#{@height}cm:身長確認OK"
      puts "\nご利用いただけません"
    else
      puts "年齢　#{@age}歳:年齢確認NG"
      puts "身長　#{@height}cm:身長確認NG"
      puts "ご利用いただけません"
    end
  end
end

user = User.new(name: "田中", age: 30, height: 160)
puts user.judge
user = User.new(name: "佐藤", age: 70, height: 150)
puts user.judge
user = User.new(name: "鈴木", age: 10, height: 120)
puts user.judge