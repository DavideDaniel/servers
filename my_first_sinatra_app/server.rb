require "sinatra"

get "/favicon.ico" do
	# erb :index, locals: {name: "David"}
end

get "/" do
	my_name = "David"
	erb :index, locals: {name: my_name}
end

get "/goodbye" do
	not_a_name = "goodbye"
	erb :index, locals: {name: not_a_name}
end

get "/:id" do
	puts params
	path = (params[:id]).upcase
	num = (params[:id]).length
	counter = 0
	repeated = ""
	while counter < num
		repeated += path
		counter += 1
	end

	erb :index, locals: {name: repeated}
end
# get "/:id" do
# 	puts params
# 	path = params[:id]
# 	erb :index, locals: {name: path}
# end


