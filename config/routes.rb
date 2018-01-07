Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'interact#text_import'
  get 'text_import' ,to: 'interact#text_import'
  post 'box_interact', to: 'interact#box_interact'
  post 'window2', to: 'interact#window2'
  post 'window3', to: 'interact#window3'
  post 'text_import_post', to: 'interact#text_import_post'
  post 'generate_text_file', to: 'interact#generate_text_file'
end
