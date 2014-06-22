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

## Contributing

1. Fork it ( https://github.com/[my-github-username]/lru-cache/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
