
# thor install lib/tasks/setup.thor
class Setup < Thor
  
 desc "config [NAME]", "copy configuration files"
  
 # thor setup:config --force
  method_options :force => :boolean  
  
 # thor setup:config 
 # thor setup:config private.yml
 def config(name = "*")
    Dir["config/examples/#{name}"].each do |source|
      destination = "config/#{File.basename(source)}"
      FileUtils.rm(destination) if options[:force] && File.exist?(destination)
      if File.exist?(destination)
        puts "Skipping #{destination} because it already exists"
      else
        puts "Generating #{destination}"
        FileUtils.cp(source, destination)
      end
    end
  end
  
  desc "populate", "generate records"
  # default value for :count
  method_options :count => 10
  
  # thor setup:populate 
  def populate
    require File.expand_path('config/environment.rb')
    options[:count].times do |num|
      puts "Generating article #{num}"
      Article.create!(:name => "Article #{num}")
    end
  end
end