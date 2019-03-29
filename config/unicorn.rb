worker_processes 2
timeout 40

preload_app true

after_fork do |server, worker|
  if defined?(ZookeeperForkExample)
    ZookeeperForkExample.current.wait_until_connected
    ZookeeperForkExample.current.reopen
  end
end
