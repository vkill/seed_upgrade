module SeedUpgrade
  module GeneratorHelpers

    def generate_seed_file_data(singular_name)
      %Q`
10.times do
  #{ singular_name.camelize }.make!
end
`
    end
  end
end

