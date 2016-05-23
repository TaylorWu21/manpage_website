require 'pry'
require 'sinatra'

#root directory
get '/' do
	erb :index
end

get '/index' do
	erb :index
end

get '/cp' do
	@cp = `man cp`
	erb :cp
end

get '/ls' do
	@ls = `man ls`
	erb :ls
end

get '/mkdir' do
	@mkdir = `man mkdir`
	erb :mkdir
end

get '/touch' do
	@touch = `man touch`
	erb :touch
end

get '/mv' do
	@mv = `man mv`
	erb :mv
end

not_found do
  status 404
  'Sorry the page cannot be found.'
end
