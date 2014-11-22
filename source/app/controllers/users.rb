get '/users' do

  erb :'users/all'
end

get '/users/:name' do

  erb :'users/show'
end
