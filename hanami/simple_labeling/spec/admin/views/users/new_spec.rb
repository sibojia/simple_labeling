require 'spec_helper'
require_relative '../../../../apps/admin/views/users/new'

describe Admin::Views::Users::New do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/admin/templates/users/new.html.erb') }
  let(:view)      { Admin::Views::Users::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
