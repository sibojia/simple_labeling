require 'spec_helper'
require_relative '../../../../apps/admin/views/users/create'

describe Admin::Views::Users::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/admin/templates/users/create.html.erb') }
  let(:view)      { Admin::Views::Users::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
