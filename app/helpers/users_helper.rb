module UsersHelper

  def link_style(user_name)
    "#{alphabet_class(user_name)}" "#{long_class(user_name)}"
  end

  def alphabet_class(user_name)
    'alphabetical' if user_name[0]== 'A'
  end

  def long_class(user_name)
    'long' if user_name.length >= 6
  end

end
