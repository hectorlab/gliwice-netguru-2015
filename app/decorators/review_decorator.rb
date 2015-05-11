class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    review.user_id = user.id
    "#{review.user.firstname}" + " #{review.user.lastname}"  
  end

end
