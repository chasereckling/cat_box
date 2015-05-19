require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/game') do
  @cats = Cat.all().order(wins: :desc)
  @kitty1 = Cat.find(rand(1..@cats.length))
  @kitty2 = Cat.find(rand(1..@cats.length))
  if @kitty1 == @kitty2
    redirect('/game')
  end
  erb(:game)
end

patch('/game') do
  @cats = Cat.all().order(wins: :desc)
  @winning_kitty = Cat.find(params.fetch("winning_id").to_i)
  @losing_kitty = Cat.find(params.fetch("losing_id").to_i)
  win = @winning_kitty.wins
  loss = @losing_kitty.loss

  @winning_kitty.update(:wins => win + 1)
  @losing_kitty.update(:loss => loss + 1)
  redirect('/game')
end
