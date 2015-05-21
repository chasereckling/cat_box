require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
require('pry')

get('/') do
  erb(:index)
end

get('/upload') do
  erb(:upload)
end

post('/upload') do
  name = params.fetch("name")
  bio = params.fetch("bio")
  photo = params.fetch("photo")
  new_cat = Cat.create({:name => name, :wins => 0, :loss => 0, :image => photo, :bio => bio})
  @cats = Cat.all().order(wins: :desc)
  @kitty1 = Cat.find(rand(1..@cats.length))
  @kitty2 = Cat.find(rand(1..@cats.length))
  if @kitty1 == @kitty2
    redirect('/game')
  end
  erb(:game)
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

get('/profile/:id') do
  @cat = Cat.find(params.fetch("id"))
  @comments = @cat.comments()
  @friends = @cat.friends()
  erb(:profile)
end

post('/profile/:id') do
  @cat = Cat.find(params.fetch("id").to_i())
  comment = params.fetch("comment")
  id = params.fetch("id").to_i()
  @new_comment = Comment.create({:description => comment, :cat_id => id})
  @comments = @cat.comments()
  redirect("/profile/#{@cat.id}")
end

get('/cats/:id') do
  @cats = Cat.all()
  @cat = Cat.find(params.fetch("id").to_i())
  erb(:cats)
end

patch('/profile/:id') do
  @cat = Cat.find(params.fetch("id").to_i())
  new_friend = Friend.create({:ref_id => params.fetch("friend_ids").to_i})
  # if(params.has_key?('friend_ids'))
    # params.fetch('friend_ids').each() do |friend_id|
  @cat.friends.push(new_friend)
    # end
  # end
  # @friends = Friend.where.not(id: @cat.friend_ids)
  redirect("/profile/#{@cat.id}")
end
