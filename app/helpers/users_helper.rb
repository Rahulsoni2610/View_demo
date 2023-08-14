# app/helpers/user_helper.rb

module UsersHelper
  def format_name(user)
    if user
      "Mr. #{user.name}"
    else
      "Ms. #{user.name}"
    end
  end
end
