module Admin::Controllers::Users
  class Create
    include Admin::Action

    expose :user

    def call(params)
      @user = UserRepository.create(User.new(params[:user]))

      redirect_to '/home'
    end
  end
end
