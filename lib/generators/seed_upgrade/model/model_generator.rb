class SeedUpgrade::ModelGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  include ::VkillGemsMethods::Rails::Generators::Base

  include SeedUpgrade::GeneratorHelpers

  def create_seed_file
    create_file "db/seeds/#{ singular_name }.rb", generate_seed_file_data(singular_name)
  end
end

