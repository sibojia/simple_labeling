require 'bundler/setup'
require 'hanami/setup'
require_relative '../lib/simple_labeling'
require_relative '../apps/admin/application'
require_relative '../apps/web/application'

Hanami::Container.configure do
  mount Admin::Application, at: '/'
  # mount Web::Application, at: '/'
end
