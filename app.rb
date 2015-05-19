require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

post('/') do
  Cat.create({:name => "Tbone", :wins => 0, :loss => 0, :image => "http://s18.postimg.org/x9s3ehc09/tbone.jpg"})
  Cat.create({:name => "Freckles", :wins => 0, :loss => 0, :image => "http://s8.postimg.org/rhzsiqluc/freckles.jpg"})
  Cat.create({:name => "Truman", :wins => 0, :loss => 0, :image => "http://s11.postimg.org/k9osn032b/truman.jpg"})
  redirect('/game')
end

get('/game') do
  @kitty1 = Cat.find(rand(1..3))
  @kitty2 = Cat.find(rand(1..3))

erb(:game)
end

patch('/game') do
  @winning_kitty = Cat.find(params.fetch("winning_id").to_i)
  @losing_kitty = Cat.find(params.fetch("losing_id").to_i)
  win = @winning_kitty.wins
  loss = @losing_kitty.loss

  @winning_kitty.update(:wins => win + 1)
  @losing_kitty.update(:loss => loss + 1)
  redirect('/game')
end
