json.array!(@iletisims) do |iletisim|
  json.extract! iletisim, :id, :title, :content, :sender
  json.url iletisim_url(iletisim, format: :json)
end
