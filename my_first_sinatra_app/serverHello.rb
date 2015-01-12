require 'sinatra'

get "/favicon.ico" do
end

get "/tortilla/:id" do
  puts params
  path = (params[:id])

  if path == "rice"
    msg = "<h1>MMMMM</h1>"
  	erb :index, locals: {msg: msg}
  elsif path == "guac"
    msg = "<h2>AHHHHH<h2>"
    erb :index, locals: {msg: msg}
  else
   msg = path
  	erb :index, locals: {msg: "<p> Well, "+msg+" is good on a tortilla too </p>"}
    
  end
  
end