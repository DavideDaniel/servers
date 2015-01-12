require 'sinatra'

# get '/' do
# 	erb :index, locals:{name: "Sam"}
# end

# /tortilla/rice should send a headline (meaning a h1 tag, naturally) that has the text "MMMMM".
# /tortilla/guac should respond with the headline "AHHHH!".
# /tortilla/[ANYTHING] should respond with "Well, [ANYTHING] is good on a tortilla, too." between paragraph tags.
# Any other path should return an h3 tag that has the text "Sorry, we only serve burritos here!"

get '/tortilla/rice' do
	erb :index, locals:{name: "Sam"} 
end

get '/tortilla/guac' do
	erb :index, locals:{name: "Craw"}
end
get '/tortilla/guac' do
	erb :index, locals:{name: "Craw"}
end
get '/tortilla/guac' do
	erb :index, locals:{name: "Craw"}
end



get '/tortilla/' do
	erb :index, locals:{name: "Dave"}
end
