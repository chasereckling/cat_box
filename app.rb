require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

post('/') do
  @kitty1 = Cat.create({:name => "tbone", :wins => 0, :loss => 0, :image => "img/tbone.png"})
  @kitty2 = Cat.create({:name => "Freckles", :wins => 0, :loss => 0, :image => "img/freckles.png"})
  redirect('/game')
end

get('/game') do
  @kitty1 = Cat.find(1)
  @kitty2 = Cat.find(2)
erb(:game)
end

patch('/game') do
  @kitty1 = Cat.find(1)
  @kitty2 = Cat.find(2)
  @choice = params.fetch("choice")

  if @choice == "left_cat"

    win = @kitty1.wins
    loss = @kitty2.loss
    @kitty1.update(:wins => win + 1 )
    @kitty2.update(:loss => loss + 1 )

  else

    win = @kitty2.wins.to_i
    loss = @kitty1.loss.to_i
    @kitty2.update(:wins => win + 1 )
    @kitty1.update(:loss => loss + 1 )
  end
  redirect('/game')
end
