# frozen_string_literal: true

class ZookeeperForkExample
  class << self
    attr_reader :current

    def init
      ZK.install_fork_hook
      connect
    end

    private

    def connect
      @current = ZK.new(host)
    end

    def host
      "localhost:2181"
    end
  end
end

ZookeeperForkExample.init
