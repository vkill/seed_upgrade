module SeedUpgrade
  class Railtie < ::Rails::Railtie
    generators do
      require File.expand_path("../../generators/seed_upgrade/model/model_generator", __FILE__)
      require 'rails/generators/rails/model/model_generator'
      Rails::Generators::ModelGenerator.send(:hook_for, :seed_upgrade)
      Rails::Generators::ModelGenerator.send(:class_option, :seed_upgrade, :default => 'seed_upgrade')
    end
  end
end

