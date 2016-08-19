require 'spec_helper'
require_relative '../../../../apps/admin/controllers/users/create'

describe Admin::Controllers::Users::Create do
  let(:action) { Admin::Controllers::Users::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
