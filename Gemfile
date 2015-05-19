source("https://rubygems.org")

gem("sinatra-contrib", :require => "sinatra/reloader")
gem("sinatra-activerecord")
gem("rake")
gem("pg")

group(:production) do
  gem("sinatra")
end

group(:test) do
  gem("rspec")
  gem("pry")
  gem("capybara")
  gem('shoulda-matchers')
end
