%w(light bold black bolditalic italic regular).each do |style|
  with_extensions = [
    "fonts/lato/lato-#{style}.eot",
    "fonts/lato/lato-#{style}.woff",
    "fonts/lato/lato-#{style}.ttf",
    "fonts/lato/lato-#{style}.svg",
  ]

  Rails.application.config.assets.precompile += with_extensions
end
