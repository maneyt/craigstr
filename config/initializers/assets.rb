Rails.application.config.assets.precompile += %w( fonts/flat-ui-icons-regular.ttf )
Rails.application.config.assets.precompile += %w( fonts/flat-ui-icons-regular.woff )
Rails.application.config.assets.precompile += %w( fonts/flat-ui-icons-regular.eot )
%w(light bold black bolditalic italic regular).each do |style|
  with_extensions = [
    "fonts/lato/lato-#{style}.eot",
    "fonts/lato/lato-#{style}.woff",
    "fonts/lato/lato-#{style}.ttf",
    "fonts/lato/lato-#{style}.svg",
  ]

  Rails.application.config.assets.precompile += with_extensions
end
