require 'sinatra'

get "/favicon.ico" do
end

magic = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes definitely",
  "You may rely on it",
  "As I see it yes",
  "Most likely",
  "Outlook good",
  "Yes", "Signs point to yes",
  "Reply hazy try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
]

coin = %w[ heads tails]

rps = %w[ rock paper scissors ]




get "/coin_toss" do
  # returns "Heads" or "Tails"
  side = coin[rand(0..1)]
  msg = "<h3>Coin comes up " + side + "<h3>"
  erb :index, locals: {msg: msg}
end



get "/dice_roll" do
  num = rand(1..6)
  msg = "<h3>You roll a " + num.to_s + "<h3>"
  erb :index, locals: {msg: msg}
end

get "/magic8ball/:id" do
  puts params
  path = (params[:id]).capitalize
  question = "<h2>" + path + "</h2>"
  answer = "<p>"+ magic.sample + "</p>"
  msg = question + answer
  # returns the question asked (in this case, "Will it snow tomorrow?"), followed by a random magic 8 ball response (see below)

  erb :index, locals: {msg: msg}
end


get "/rps/:id" do
	puts params
  path = (params[:id])
  you = rps.sample.to_s
  cpu = rps.sample.to_s
  choice = "<h2>You chose " + path + "</h2>"
  computer = "<h3>The computer chose "+ rps.sample.to_s + "</h3>"

  if you == rps[0] && cpu == rps[1]
  	result = "<p> You lose </p>"
  elsif 
  	you == rps[0] && cpu == rps[2]
  	result = "<p> You win </p>"
  elsif 
	you == rps[1] && cpu == rps[2]
  	result = "<p> You lose </p>"
  elsif
  	you == rps[1] && cpu == rps[0]
  	result = "<p> You win </p>"
  elsif
  	you == rps[2] && cpu == rps[0]
  	result = "<p> You lose </p>"
  elsif
 	you == rps[2] && cpu == rps[1]
  	result = "<p> You win </p>"
  else
  	result = "<p> You tie </p>"
  end

  msg = choice.to_s + computer.to_s + result.to_s

  erb :index, locals: {msg: msg}

end
