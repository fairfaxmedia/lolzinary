# Lolzinary

Lolzinary is an extension for the [lolcommits](https://github.com/mroth/lolcommits) gem originally created by Matthew Rothenberg and Matt Hutchinson.

Lolzinary gives allows you to upload your lolz straight to Cloudinary after they're captured!

Particularly handy if you can't be bothered building somewhere to host your images from scratch, and collating multiple developers' lolcommits in one place.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lolzinary'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lolzinary

## Usage

Once you've installed Lolzinary, remember to enable lolcommits first in your command line:
`lolcommits --enable`

Then, set up your config for the Lolzinary plugin (it will be disabled by default):
`lolcommits --config -p lolzinary`

(You'll need three things for Lolzinary to upload successfully, your `cloud_name`, `api_key` and `secret`. They can be found in your cloudinary dashboard.)
More detail can be found in [Cloudinary's Docs](http://cloudinary.com/documentation/api_and_access_identifiers#access_identifiers).

Once that's done, develop as usual and let Lolzinary do the work for you!

If you'd like to test it straight away, capture a lolcommit with your last commit using `lolcommits --capture` in your command line.

### A note on Cloudinary and folders with Lolzinary

Lolzinary is setup by default to upload images to a specific path, which looks like:
`lolcommits/<your_repository_name/<git_sha_id>`

To have the image save into a *proper* folder structure, you need to have "auto-create folders" enabled.
This setting can be found under "Settings > Upload".

If you do not have this setting enabled on Cloudinary - the images will be uploaded to your base directory, with the path as the filename instead.

*N.B - there is currently no support for custom directory config. If you'd like to have this functionality, feel free to raise a pull request!*



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests (We use RSpec). You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fairfaxmedia/lolzinary.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


![A lolcommit](http://res.cloudinary.com/dohqwwlqb/image/upload/b_rgb:000,c_scale,e_blackwhite,o_50,w_282/v1446005392/lolcommits/fairfaxmedia/lolzinary/d80134c9b47.jpg)
