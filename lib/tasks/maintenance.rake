namespace :maintenance do

  desc "Remove multiples of same migrations with different timestamps"
  task :clean_multiples_of_migrations do
  
    Dir.chdir('./db/migrate')
    migrations = Dir.entries('.')
    unique_without_timestamps = migrations.map {|f| f.split('_')[1..-1].join('_')}.uniq
    
    puts "total files: " + migrations.size.to_s
    unique_without_timestamps.each do |fname|
      r = Regexp.new("\\d+_#{fname}$")
      filenames = migrations.grep(r)
      if filenames.size > 1
        filenames.sort[0..-2].each {|f| File.delete(f)}
      end
    end
        
    puts "total files after deleting: #{Dir.entries('.').size}"
    
  
  end
  
end