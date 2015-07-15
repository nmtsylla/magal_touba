# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( css/font-awesome.css )
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( pace-theme-flash.css )
Rails.application.config.assets.precompile += %w( pages-icons.min.css )
Rails.application.config.assets.precompile += %w( jquery.scrollbar.css )
Rails.application.config.assets.precompile += %w( pages.css )
Rails.application.config.assets.precompile += %w( ie9.css )


Rails.application.config.assets.precompile += %w( jquery-1.11.1.js )
Rails.application.config.assets.precompile += %w( pace/pace.min.js )
Rails.application.config.assets.precompile += %w( modernizr.custom.js )
Rails.application.config.assets.precompile += %w( jquery-validation/js/jquery.validate.min.js )
Rails.application.config.assets.precompile += %w( pages.js )
Rails.application.config.assets.precompile += %w( jquery.scrollbar.js )
Rails.application.config.assets.precompile += %w( scripts.js )
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
