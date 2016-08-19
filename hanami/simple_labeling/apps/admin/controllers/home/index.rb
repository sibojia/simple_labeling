module Admin::Controllers::Home
  class Index
    include Admin::Action

    def call(params)
      redirect_to routes.users_path
    end
  end
end
