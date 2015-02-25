Rails.application.routes.draw do
  resources :iletisims
  resources :imagetaleps
  devise_for :users, :path_names => { :sign_up => "register" },:controllers => {:registrations => "registrations"}

  root 'welcome#index'

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

  get 'instutions/index'
  get 'instutions/maliyet'
  get 'instutions/raporlar'


  get 'radiologists/index'
  get 'radiologists/konsultasyon'
  get 'radiologists/maliyet'
  get 'radiologists/talep'



end
