# YARD::Rake::YardoptsTask

A Rake task for updating the `.yardopts` file automatically for new files.

## Introduction

On projects that have complicated documentation that doesn't just fit alongside the code, you may find yourself updating the `.yardopts` file to change the list of files to include in the generated YARD documentation quite a bit. This Rake task is intended to remove the need to manually perform that process.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yardopts_task'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install yardopts_task
```

## Usage

Just add these lines to your `Rakefile` for the default behavior:

```ruby
require 'yardopts_task'

YARD::Rake::YardoptsTask.new
```

By default, the `YardoptsTask` will check to see if the `.yardopts` file is out-of-date in comparison with its list of dependencies. If it is, then the `.yardopts` file will be regenerated automatically. It defaults to include `*.md` except `README.md` which is included automatically by YARD. Other globs can be added to the list of docs or dependencies. Options to be passed to YARD can be added. And everything can be written to a file named something other than `.yardopts` if one wants different options for different sets of documentation.

```ruby
require 'yardopts_task'

YARD::Rake::YardoptsTask.new '.yardopts-local' => ['Rakefile', 'documentation/**/*.md'] do |task|
  task.opts << '--markup markdown'
  task.opts << '--title YardoptsTask Documentation'

  task.docs << 'documentation/**/*.md'
end
```

## Development

To see what has changed in recent versions of the YardoptsTask gem, see the [CHANGELOG](CHANGELOG.md).

## Core Team Members

* [Lee Dohm](http://www.lee-dohm.com)

## Copyright

Copyright &copy; 2013 by [Lee Dohm](http://www.lee-dohm.com).  See [LICENSE](LICENSE.md) for details.
