namespace :ftcodeeditor_bespin do
  desc "Move Bespin to public directory"
  task :install do

    app_public_plugin_dir = File.join(Rails.public_path, 'plugins')
    plugin_assets_dir = File.join(File.dirname(__FILE__), '..', '..', 'public', 'plugins', 'ftcodeeditor_bespin')
    
    FileUtils.mkpath(app_public_plugin_dir) unless File.directory?(app_public_plugin_dir)
    FileUtils.cp_r plugin_assets_dir, app_public_plugin_dir
  end
end
