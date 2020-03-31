require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/rock_paper_scissors')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/how to play' do
  erb(:rules)
end

get '/game/:hand1/:hand2' do
  hand1 = params['hand1']
  hand2 = params['hand2']
  @result = Game.win_conditions(hand1, hand2)
  erb(:result)
end
