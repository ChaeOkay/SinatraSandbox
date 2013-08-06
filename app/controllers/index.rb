get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
 # erb :index
 erb :get_cool_url
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @first_name = params[:first_name]
  @favorite_meal = params[:favorite_meal]
  @cheese = params[:cheese]
  @color = params[:color]
  @day = params[:day]
  #erb :get_cool_url
  erb :post_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
 erb :index
end

get '/forms' do
  puts "[LOG] Getting /forms"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_form_names
end

get '/form_names' do
  puts "[LOG] Getting /form_names"
  puts "[LOG] Params: #{params.inspect}"
  @post = params[:post]
  erb :post_form_names
end

post '/form_names' do
  puts "[LOG] Posting/form_names"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_form_names
end
