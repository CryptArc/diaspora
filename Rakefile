#   Copyright (c) 2010-2011, Diaspora Inc.  This file is
#   licensed under the Affero General Public License version 3 or later.  See
#   the COPYRIGHT file.

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'
require 'resque/tasks'

class Object
  def optional_require(feature)
    begin
      require feature
    rescue LoadError
    end
  end
end

# ci_reporter
require 'rubygems'
optional_require 'ci/reporter/rake/rspec'

# for rake 0.9.0
module Diaspora
  class Application
    include Rake::DSL
  end
end

Diaspora::Application.load_tasks
