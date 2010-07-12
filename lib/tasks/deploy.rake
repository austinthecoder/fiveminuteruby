namespace :deploy do
  task :staging do
    puts "Deployment to staging started"
    system "git push staging master"
    puts "Deployment complete"
  end
  
  task :production do
    puts "Deployment to production started"
    system "git push production master"
    puts "Deployment complete"
  end
end