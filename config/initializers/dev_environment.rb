unless Rails.env.production?
  ENV['HTTP_PASS'] = 'pass'
end
