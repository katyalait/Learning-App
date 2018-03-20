# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( metisMenu.js )
Rails.application.config.assets.precompile += %w( bootstrap.js )
Rails.application.config.assets.precompile += %w( dataTables.bootstrap.js )
Rails.application.config.assets.precompile += %w( dataTables.responsive.js )
Rails.application.config.assets.precompile += %w( jquery.flot.tooltip.js )
Rails.application.config.assets.precompile += %w( excanvas.js )
Rails.application.config.assets.precompile += %w( flot-data.js )
Rails.application.config.assets.precompile += %w( jquery.flot.js )
Rails.application.config.assets.precompile += %w( jquery.flot.pie.js )
Rails.application.config.assets.precompile += %w( jquery.flot.resize.js )
Rails.application.config.assets.precompile += %w( jquery.flot.time.js )
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( morris.js )
Rails.application.config.assets.precompile += %w( myOwn.js )
Rails.application.config.assets.precompile += %w( sb-admin-2.js )
Rails.application.config.assets.precompile += %w( donut.js )
Rails.application.config.assets.precompile += %w( Donut.js )
Rails.application.config.assets.precompile += %w( raphael.js )
Rails.application.config.assets.precompile += %w( scripts.js )
# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
