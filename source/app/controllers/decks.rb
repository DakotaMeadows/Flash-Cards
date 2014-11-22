get '/decks' do
  @decks = Deck.all
  erb :'decks/all'
end

get '/decks/new' do
  erb :'decks/new'
end

post '/decks' do
  deck = Deck.new(params[:deck])
  if deck.save
    redirect("/decks/#{deck.name}")
  else
    session[:error] = deck.errors.messages
    redirect('/decks/new')
  end
end

get '/decks/:name/edit' do |name|
  @deck = Deck.find_by(name: params[:name])
  erb :'decks/edit'
end

put '/decks/:name' do |name|
  deck = Deck.find_by(name: params[:name])
  if deck.update(params[:deck])
    redirect("/decks/#{deck.name}")
  else
    session[:error] = deck.errors.messages
    redirect("/decks/#{deck.name}/edit")
  end
end

get '/decks/:name' do
  @deck = Deck.find_by(name: params[:name])
  erb :'decks/show'
end

delete '/decks/:name' do |name|
  deck = Deck.find_by(name: params[:name])
  deck.destroy
  redirect('/decks')
end
