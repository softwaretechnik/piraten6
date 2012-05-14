app_path = '/home/webapp1/apps/piraten6'
listen "#{app_path}/shared/pids/unicorn.sock"
pid    "#{app_path}/shared/pids/unicorn.pid"

# Fill path to your app
working_directory app_path + "/current"
preload_app true
timeout 180

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!

  old_pid = "#{server.config[:pid]}.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
      # someone else did our job for us
    end
  end
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and
  ActiveRecord::Base.establish_connection
end
