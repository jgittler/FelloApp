module ApplicationHelper
  def charity_text
    "For every pair of sunglasses sold we donate $5 to help
    the nearly 1 billion people around the world that don't have access to glasses."
  end

  def image_helper(name, options = {})
    if Rails.env.produciton?
      cl_image_tag name, options
    else
      image_tag name, options
    end
  end
end
