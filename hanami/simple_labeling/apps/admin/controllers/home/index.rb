module Admin::Controllers::Home
  class Index
    include Admin::Action

    expose :users

    def call(params)
      @users = UserRepository.all
    end
  end
end
