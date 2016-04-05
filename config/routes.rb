Rails.application.routes.draw do
  root "application#index"
 
  get "/photos" => 'photos#index'




  get '*path' => 'application#index'

end
