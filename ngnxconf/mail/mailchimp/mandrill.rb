require 'mail'

Mail.defaults do
  delivery_method :smtp, {
    :port      => 587,
    :address   => "smtp.mandrillapp.com",
    :user_name => 'seyyah@bil.omu.edu.tr',
    :password  => 'mdPvRkZwBHTbGLc2EMKsYg'
  }
end

mail = Mail.deliver do
  to      'nemoxn@gmail.com'
  from    'John Doe <seyyah@bil.omu.edu.tr>' # Your from name and email address
  subject 'A transactional email from Mandrill!'

  text_part do
    body 'Mandrill speaks plaintext'
  end

  html_part do
    content_type 'text/html; charset=UTF-8'
    body '<em>Mandrill speaks <strong>HTML</strong></em>'
  end
end
