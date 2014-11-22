get '/cards' do
  @cards = Card.all
  erb :'cards/all'
end

get '/cards/new' do
  erb :'cards/new'
end

post '/cards' do
  card = Card.new(params[:card])
  if card.save
    redirect("/cards/#{card.name}")
  else
    session[:error] = card.errors.messages
    redirect('/cards/new')
  end
end

get '/cards/:name' do
  @card = Card.find_by(name: params[:name])
  erb :'cards/show'
end

get '/cards/:name/edit' do |name|
  @card = Card.find_by(name: params[:name])
  erb :'cards/edit'
end

put '/cards/:name' do |name|
  card = Card.find_by(name: params[:name])
  if card.update(params[:card])
    redirect("/cards/#{card.name}")
  else
    session[:error] = card.errors.messages
    redirect("/cards/#{card.name}/edit")
  end
end

delete '/cards/:name' do |name|
  card = Card.find_by(name: params[:name])
  card.destroy
  redirect('/cards')
end
