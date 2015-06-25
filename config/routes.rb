Rails.application.routes.draw do
  resources :iletisims


  devise_for :users, :path_names => { :sign_up => "register" },:controllers => {:registrations => "registrations",:sessions=>"sessions"}

  resources :admins , only: [:unblock,:block,:usershow] do
    get :block, on: :member
    get :unblock, on: :member
    get :usershow, on: :member
  end


  namespace :admins do
    resources :reports, only: [ :show,:arsivshow] do
      get :arsivshow, on: :member
    end
    resources :ucrets,only: [:create,:new,:edit,:update,:index,:destroy]
    resources :imagetaleps, only: [:show,:edit,:update, :index,:onayla,:reddet,:gecmis] do
      get :onayla, on: :member
      get :reddet, on: :member
      get :gecmis, on: :member
    end
    resources :dashboard, only: :index
  end


  namespace :radiologists do
    resources :reports, except: [:destroy]

    resources :imagetaleps, except: [:create, :new] do
      get :kabul
      get :reddet
      get :TaslakOnayla
    end
    get :havuz
    resources :dashboard, only: :index

  end

  namespace :sekreters do
    resources :reports, except: [:destroy]
    resources :imagetaleps, only: [:index]
    resources :dashboard, only: :index

  end

  namespace :instutions do
    resources :reports, only: :show
    resources :imagetaleps do
      get :update_radyologlist , :as => 'update_radyologlist'
    end

    resources :dashboard, only: :index
  end

  root 'welcome#index'
  get 'welcome/bloke'

  get 'admins/index'
  get 'admins/show'
  get 'admins/kurum'
  get 'admins/raduzm'
  get 'admins/egitmen'


  get 'teachers/index'
  get 'teachers/sinav'
  get 'teachers/sinif'
  get 'teachers/soru'
  get 'teachers/talebe'

  get 'students/index'
  get 'students/egitmeniletisim'
  get 'students/sinavarsiv'
  get 'students/sinavdegerlendir'
  get 'students/sinavlar'

  get 'instutions/main'
  get 'instutions/maliyet'
  get 'instutions/raporlar'


  get 'radiologists/main'
  get 'radiologists/konsultasyon'
  get 'radiologists/maliyet'
  get 'radiologists/talep'
  get 'radiologists/reports/show'




end
