class SeedUpgrade::ModelGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def create_seed
    create_file "db/seeds/#{ singular_name }.rb" do
      %Q`
10.times do
  #{ human_name }.make!
end
`
    end
  end
end

