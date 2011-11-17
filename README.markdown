#SeedUpgrade

SeedUpgrade is a seed upgrade plugin for Rails3.

* https://github.com/vkill/seed_upgrade

##Supported versions

* Ruby 1.8.7, 1.9.2, 1.9.3

* Rails 3.0.x, 3.1


##Installation

In your app's `Gemfile`, add:

    gem "seed_upgrade", "~> 0.1.0"

Then run:

    bundle
    rails generate seed_upgrade:install


##Usage Example

When your generate post model, then hook invoke, create `db/seeds/post.rb` file

    rails g model post title:string
      invoke  active_record
      create    db/migrate/20111117151257_create_posts.rb
      create    app/models/post.rb
      invoke    test_unit
      create      test/unit/post_test.rb
      create      test/fixtures/posts.yml
      invoke  seed_upgrade
      create    db/seeds/post.rb

Then run the following command, the rake is in `lib/tasks/application.rake`, it auto load `db/seeds/post.rb`

    bundle exec rake app:dev:reload


##Copyright

Copyright (c) 2011 vkill.net .

