Rails.application.routes.draw do
  resources :iletisims


  devise_for :users, :path_names => { :sign_up => "register" },:controllers => {:registrations => "registrations",:sessions=>"sessions"}

  resources :admins do
    post :block, on: :member
    post :unblock, on: :member
    get :usershow, on: :member
  end

  namespace :radiologists do
    get 'reports/reports_pdf'
    resources :reports, except: [:destroy]
    resources :imagetaleps, except: [:create, :new] do
        get :updateDurum,  on: :member
    end
    resources :dashboard, only: :index
  end
  namespace :instutions do
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
