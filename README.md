# Lograge::Datadog::Error::Tracking

Log exceptions in Datadog Error Tracking

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add lograge-datadog-error-tracking

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install lograge-datadog-error-tracking

## Usage

Set `custom_options` of [Lograge](https://github.com/roidrage/lograge#installation) as such:

```ruby
Rails.application.configure do |config|
  # Configure logging of exceptions to the correct fields
  config.lograge.custom_options = Lograge::Datadog::Error::Tracking
end
```

If you need to add more data, you can use the following configuration:

```ruby
Rails.application.configure do |config|
  # Configure logging of exceptions to the correct fields
  config.lograge.custom_options = lambda do |event|
    {
      usefull_data: 'Very important data'
    }.merge(Lograge::Datadog::Error::Tracking.call(event))
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/lograge-datadog-error-tracking. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/lograge-datadog-error-tracking/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Lograge::Datadog::Error::Tracking project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/lograge-datadog-error-tracking/blob/master/CODE_OF_CONDUCT.md).
