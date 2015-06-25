json.array!(@imagetaleps) do |imagetalep|
  json.extract! imagetalep, :id, :gonderen_tc, :gonderen_name, :gonderen_mail, :image_tur
  json.url imagetalep_url(imagetalep, format: :json)
end
