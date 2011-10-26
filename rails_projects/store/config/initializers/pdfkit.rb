PDFKit.configure do |config| 
  config.wkhtmltopdf = '/usr/local/bin/wkhtmltopdf-0.9.9-OS-X.i368' 
  config.default_options = { 
    :page_size => 'Legal', 
    :print_media_type => true 
  } 
end