require 'spec_helper'
require_relative '../../../../apps/admin/controllers/users/new'

describe Admin::Controllers::Users::New do
  let(:action) { Admin::Controllers::Users::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
