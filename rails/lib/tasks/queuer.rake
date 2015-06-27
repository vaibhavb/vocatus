namespace :queuer do
  desc "TODO"
  task :queue => :environment do
   puts FaxJob.all.inspect
  end

  desc "TODO"
  task :help => :environment do
  end
end
