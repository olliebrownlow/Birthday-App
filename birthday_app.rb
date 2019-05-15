require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  erb(:first_view)
end

post '/birthday_greeting' do
  p current = Date.today
  p current_year = current.year
  p birthday = Date.parse("#{params[:day]}/#{params[:value]}/#{current_year}")
  p params[:days] = (birthday - current).to_i

  p params
  @days = params[:days]
  @name = params[:name]
  @day = params[:day]
  @month = params[:value]
  erb(:birthday_greeting_view)
end
