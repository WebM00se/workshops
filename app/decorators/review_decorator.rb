class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    user = User.find_by_id(model.user_id)
    "#{user.firstname} #{user.lastname}"
  end
end
