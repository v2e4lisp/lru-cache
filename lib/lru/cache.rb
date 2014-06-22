require "lru/cache/version"

module LRU

  module_function

  def create(num)
    Cache.new num
  end

  class Cache
    attr_reader :content
    attr_accessor :max

    def initialize(max, hash={})
      @max = max
      @content = hash
    end

    def [](key)
      content[key] = content.delete(key) if content.has_key? key
    end
    alias_method :get, :[]

    def []=(key, value)
      content.delete key if content.has_key? key
      content.delete(content.first.first) if content.length == max
      content[key] = value
    end
    alias_method :set, :[]=

  end
end
