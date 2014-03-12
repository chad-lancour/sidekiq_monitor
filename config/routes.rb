Sidekiq::Monitor::Engine.routes.draw do
  get '/', to: 'jobs#index', :as => 'sidekiq_monitor'
  get '/graph', to: 'jobs#graph'
  get '/queues', to: 'queues#index'

  namespace 'api' do
    get '/jobs', to: 'jobs#index'
    get '/jobs/clean', to: 'jobs#clean'
    get '/jobs/custom_views/:id', to: 'jobs#custom_views'
    get '/jobs/graph', to: 'jobs#graph'
    get '/jobs/retry/:id', to: 'jobs#retry'
    get '/jobs/statuses', to: 'jobs#statuses'
    get '/queues/:queue', to: 'queues#show'
    get '/queues', to: 'queues#show'
  end
end
