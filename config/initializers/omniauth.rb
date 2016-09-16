OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '329075961734-n9bic69kq1u3lakoa49m6jh90eklelqm.apps.googleusercontent.com', 'kC55oX9jOQ1bbBdqL8PG155f', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
