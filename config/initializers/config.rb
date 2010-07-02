unless defined?(CONFIG)  # Just incase this file gets required more than once.
  config = File.read(Rails.root.join('config', 'config.yml'))
  CONFIG = YAML.load(config)[Rails.env].symbolize_keys
end