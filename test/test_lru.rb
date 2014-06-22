require 'minitest/autorun'
require 'lru/cache.rb'

class TestLRU < MiniTest::Unit::TestCase

  def test_max_accessor
    lru = LRU.create 10
    assert_equal lru.max, 10

    lru.max = 5
    assert_equal lru.max, 5
  end
  
  def test_content_reader
    lru = LRU.create 10    
    lru[:k1] = :v1
    lru[:k2] = :v2
    assert_equal lru.content, {:k1 => :v1, :k2 => :v2}
  end

  def test_set_and_get
    lru = LRU.create 10
    lru[:a] = 1
    lru[:b] = 2
    assert_equal lru[:a], 1
    assert_equal lru[:b], 2
  end

  def test_delete_least_recently_used
    lru = LRU.create 3

    lru[:k1] = :v1
    lru[:k2] = :v2
    lru[:k3] = :v3
    lru[:k4] = :v4
    assert_equal lru.content, {:k2 => :v2, :k3 => :v3, :k4 => :v4}

    lru[:k2]
    lru[:k5] = :v5
    assert_equal lru.content, {:k2 => :v2, :k5 => :v5, :k4 => :v4}
  end
end
