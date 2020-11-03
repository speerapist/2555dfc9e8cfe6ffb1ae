Rails.application.routes.draw do
  namespace 'api' do
    resources :robots
  end
end
