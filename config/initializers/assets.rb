# application_smart_phone.cssをprecompileに加える
Rails.application.config.assets.precompile += %w(application_smart_phone.css)
Rails.application.config.assets.precompile += %w(users.css)
Rails.application.config.assets.precompile += %w(horses.css)
