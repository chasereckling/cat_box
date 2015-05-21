require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
require('pry')

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="BATTLE CATS!!!!!!!!!"'
    halt 401, "YOU AM NO CAT LEGEND\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['mryamyam', 'mryamyam']
  end
end


get('/') do
  erb(:index)
end

get('/login') do
  protected!
  @cats = Cat.all().order(wins: :desc)
  @kitty1 = Cat.find(rand(1..@cats.length))
  @kitty2 = Cat.find(rand(1..@cats.length))
  if @kitty1 == @kitty2
    redirect('/game')
  end
  erb(:game)
end



get('/upload') do
  erb(:upload)
end

post('/upload') do
  name = params.fetch("name")
  bio = params.fetch("bio")
  photo = params.fetch("photo")
  location = params.fetch("location")
  birthday = params.fetch("birthday")
  naparea = params.fetch("naparea")
  relationship = params.fetch("relationship")
  new_cat = Cat.create({:name => name,:wins => 0, :loss => 0, :image => photo, :bio => bio, :naparea => naparea, :location => location, :birthday => birthday, :relationship => relationship})
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
  erb(:profile)
end

post('/profile/:id') do
  @cat = Cat.find(params.fetch("id").to_i())
  comment = params.fetch("comment")
  id = params.fetch("id").to_i()
  image = params.fetch("comment_img")
  @new_comment = Comment.create({:description => comment, :cat_id => id, :comment_photo => image })
  @comments = @cat.comments()
  redirect("/profile/#{@cat.id}")
end

get('/profile/:id/likes') do
  @cat = Cat.find(params.fetch("id").to_i)
  @all_likes = Like.all().order(name: :asc)
  @cats_likes = @cat.likes
  erb(:likes)
end

post('/profile/:id/likes') do
  @cat = Cat.find(params.fetch("id").to_i)
  @all_likes = Like.all().order(name: :asc)
  like = Like.find(params.fetch("like").to_i)
  @cat.likes.push(like)
  @cats_likes = @cat.likes
  redirect("/profile/#{@cat.id}/likes")
end


get('/photos/:id') do
  @cat = Cat.find(params.fetch("id").to_i())
  id = params.fetch("id").to_i()
  @photos = @cat.photos()
  erb(:photos)
end

post('/photos/:id') do
  @cat = Cat.find(params.fetch("id").to_i())
  id = params.fetch("id").to_i()
  image = params.fetch("profile_image")
  new_photo = Photo.create({:profile_image => image, :cat_id => id})
  @photos = @cat.photos()
  erb(:photos)
end
