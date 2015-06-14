module UsersHelper

  def signed_in_admin?(current_user)
    unless current_user.nil?
      return true if current_user.admin?
    end
    false
  end

end