namespace :my do
  desc "My task"
  task :puts do
    puts "hello world"
  end

  desc "show articles"
  task show_articles: :environment do
    pp Article.all
  end
end
