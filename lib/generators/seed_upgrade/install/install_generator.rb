class SeedUpgrade::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def mkdir_seeds_dir
    create_file 'db/seeds/USAGE' do
      %Q`
Generate seed with model, if you use machinist,
e.g.

  # user.rb
  10.times { User.make! }
`
    end
  end

  def create_seeds_for_dev_file
    template 'seeds_for_dev.rb', 'db/seeds_for_dev.rb'
  end

  def create_seeds_for_dev_rake
    template 'application.rake', 'lib/tasks/application.rake'
  end
end

