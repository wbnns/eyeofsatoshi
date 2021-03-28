# Eye of Satoshi

A ruby gem that pulls the current bitcoin price from multiple cryptocurrency APIs. Ensure your app is getting the correct price by weighting against multiple sources of truth to ensure you and/or your users don't get rekt by incorrect information.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eyeofsatoshi'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install eyeofsatoshi

## Usage

An example wrapper (`wrapper.rb`) is included in the `examples` folder to demonstrate how Eye of Satoshi can be used.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wbnns/eyeofsatoshi. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/wbnns/eyeofsatoshi/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Eye of Satoshi's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/wbnns/eyeofsatoshi/blob/master/CODE_OF_CONDUCT.md).

## Acknowledgements

This gem would not be possible without the work of **Zayne**. It is entirely based on code from one of his tutorials about [using Ruby to interact with cryptocurrency APIs](https://www.youtube.com/watch?v=dP230gkXS0I).

Check him out on:

- [GitHub](https://github.com/zayneio)
- [Zayne.io](https://zayne.io/)
- [YouTube](https://www.youtube.com/channel/UCkoEStUK7wxmZef2DcPuCAQ/videos)

...and please consider supporting him on [Patreon](https://www.patreon.com/zayne_)!
