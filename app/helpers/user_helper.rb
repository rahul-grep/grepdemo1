module UserHelper
  def any_error(user_profile)
    if user_profile.errors.any?
    errors = []
      user_profile.errors.full_messages.each do |msg|
        errors << "<li>#{msg}</li>"
      end
    end
  end
end
