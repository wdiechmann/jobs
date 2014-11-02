# Jobs

The jobs gem is focused with managing jobs in a Rails 4.x application and adds a persisted jobs table to your store.
It offers a 'public' searchable index of vacancies - and an admin interface to signed in users for adding, editing and deleting jobs.

The jobs gem does not require you to install other gems - but if you do install the 'jobber' gem, it will show a sidebar on the public
index if the jobber is signed in, with jobs currently assigned to the jobber. And likewise on the admin index; any selected job will show
the jobber(s) assigned to the job.

## Current state

[![Build Status](https://travis-ci.org/wdiechmann/jobs.svg?branch=master)](https://travis-ci.org/wdiechmann/jobs)

[![Gem Version](https://badge.fury.io/rb/jobs.png)](http://badge.fury.io/rb/jobs)

[![Coverage Status](https://coveralls.io/repos/wdiechmann/jobs/badge.png)](https://coveralls.io/r/wdiechmann/jobs)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jobs', path: "vendor/engines/jobs"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jobs

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/wdiechmann/jobs/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Building the gem

Documenting the build process is instructional only - it has no influence on how the gem works and you do not have to 
complete any of these tasks to use the gem!

1. 		install or update bundler, ruby and rubygems respectively
2. 		run `bundle gem jobs`
3. 		add dependencies to jobs/jobs.gemspec
4. 		add task to Rakefile
5. 		add 'spec' folder and first test file within, jobs\_spec.rb and it's helper: spec\_helper.rb
6. 		add 'Guardfile' and contents
7. 		add repository to github.com/wdiechmann
8. 		add travis-ci.org integration
9. 		add coveralls.io code coverage integration
10. 	add coveralls gem to jobs.gemspec
11.		add coveralls helper to our spec_helper
12.		add badges to the README for CI, RubyGem, and Coveralls 
13.		finish the job.gemspec
14.		do a first build of the gem with `gem build jobs.gemspec`
15.		do a first install of the gem with `gem install ./jobs-0.0.2.gem`
16.		do a first release with 
	- rake build
	- rake install
	- rake release
17.		make the gem a mountable Rails Engine - following the [Rails Engine Guide](http://edgeguides.rubyonrails.org/engines.html) transposing the blorgh to jobs
	- watch out for engine test\_helper.rb not set up correct - see https://github.com/rails/rails/issues/4971 and the b72ecc0 and 2317655 commits
	