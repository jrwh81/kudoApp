namespace :kudosapp do

  task :fix_kudos_count => :environment do
   all_members = Member.all
      all_members.each do |m|
         m.kudos_count = 3
         m.save!
      end
   end
end