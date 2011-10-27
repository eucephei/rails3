PDFKit.configure do |config| 
  # config.wkhtmltopdf = '/usr/local/bin/wkhtmltopdf-0.9.9-OS-X.i368' 
  config.wkhtmltopdf = Rails.root.join('app','bin','wkhtmltopdf-0.9.9-OS-X.i368').to_s
  config.default_options = { 
    :page_size => 'Legal', 
    :print_media_type => true 
  } 
end