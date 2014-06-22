# LRU::Cache

simple LRU cache

## Installation

Add this line to your application's Gemfile:

    gem 'lru-cache'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lru-cache

## Usage

```ruby
require 'lru/cache'

# create a lru cache(size = 10)
lru = LRU.create 10

# set a item
lru[:k1] = :v1
lru.set :k2, :v2

# get a item
lru[:k1]
lru.get :k1

# get upper limit
lru.max

# reset upper limit
lru.max = 5

# get lru content
lru.content
```
