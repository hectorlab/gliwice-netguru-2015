class UsersController < ApplicationController
  expose(:user)
  expose_decorated(:products, ancestor: :user)

  def show
    @recent_reviews = user.reviews.order('id desc').limit(5).decorate
  end
end
