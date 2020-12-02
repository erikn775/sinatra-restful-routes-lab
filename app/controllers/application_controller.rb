class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do 
    erb :index
  end

  get '/recipes/:id' do
    erb :show
  end

  get '/recipes/:id/edit' do
    erb :edit
  end

  get '/recipe/new' do
    recipe = Recipe.create(params)
  end

end
