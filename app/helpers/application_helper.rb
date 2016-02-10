module ApplicationHelper
  def dynamic_title
    unless current_page?('/')
      " | #{action_name.titleize}"
    end
  end

  def image_helper(name, options = {})
    # if Rails.env.development?
      image_tag name, options
    # else
    #   cl_image_tag name, options
    # end
  end

  def img_url_helper(name, options = {})
    # if Rails.env.development?
      image_url name, options
    # else
    #   Nokogiri::HTML(cl_image_tag name, options).css('img').map{ |i| i['src'] }.first
    # end
  end
end
