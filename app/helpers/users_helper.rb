module UsersHelper

  def signed_in_admin?(current_user)
    unless current_user.nil?
      return true if current_user.admin?
    end
    false
  end

  def get_recent_activities(current_user)
    current_user.reviews.order('created_at DESC').limit(5)
  end

end