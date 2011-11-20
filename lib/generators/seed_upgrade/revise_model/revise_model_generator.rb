class SeedUpgrade::ReviseModelGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  include ::VkillGemsMethods::Rails::Generators::Base
  ::ActiveRecord::Base.send :include, ::VkillGemsMethods::ActiveRecord::Base

  include SeedUpgrade::GeneratorHelpers

  def create_models_seed_file

    ::ActiveRecord::Base.models do |model, columns|
      create_file "db/seeds/#{ model.name.underscore }.rb", generate_seed_file_data(model.name.underscore)
    end

  end

end

