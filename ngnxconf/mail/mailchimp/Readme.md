Listeye yeni uye ekle,

> gb = Gibbon::API.new('api-here')
> gb.lists.list['data'].first['id']
> gb.lists.subscribe({:id => '106b996047', :email => {:email =>
'selcukhocaders@gmail.com'}, :merge_vars => {:FNAME => 'SHoca', :LNAME =>
'Ders'}, :double_optin => false})
> gb.lists.unsubscribe(:id => '106b996047', :email => {:email =>
"selcukhocaders@gmail.com"}, :delete_member => true, :send_notify => true)

> gb.campaigns.create({type: "regular", options: {list_id: '106b996047',
subject: "Gibbon is cool", from_email: "nemoxn@gmail.com", from_name: "Darth
Vader", generate_text: true}, content: {html:
"<html><head></head><body><h1>Foo</h1><p>Bar</p></body></html>"}})
