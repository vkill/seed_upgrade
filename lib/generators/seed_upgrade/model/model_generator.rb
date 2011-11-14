class SeedUpgrade::ModelGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def create_seed
    create_file "db/seeds/#{ singular_name }.rb" do
      case Rails.application.config.generators.options[:rails][:fixture_replacement].to_s
      when "machinist"
        "#{ human_name }.make!" if defined?(::Machinist)
      when "factory_girl"
        "Factory #{ singular_name }" if defined?(::Factory)
      else
        ""
      end
    end
  end
end

