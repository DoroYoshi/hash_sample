class User
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
    @height = params[:height]
  end

  def display
    puts "-" * 22
    puts "#{@name}さん"
    if (@age > 64) || (@height < 130)
      verification
      puts "\nご利用いただけません"
    else
      verification
      puts "\nご利用いただけます"
    end
  end

  def verification
    age_veri = (@age <= 64) ? "OK" : "NG"
    height_veri = (@height >= 130) ? "OK" : "NG"
    puts "年齢　#{@age}歳:年齢確認#{age_veri}"
    puts "身長　#{@height}cm:身長確認#{height_veri}"
  end
end

user = User.new(name: "田中", age: 30, height: 160)
puts user.display
user = User.new(name: "佐藤", age: 70, height: 150)
puts user.display
user = User.new(name: "鈴木", age: 10, height: 120)
puts user.display