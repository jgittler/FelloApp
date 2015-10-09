module ApplicationHelper
  def dynamic_title
    unless current_page?('/')
      " | #{action_name.titleize}"
    end
  end

  def charity_text
    "Approximately 670 million people worldwide are functionally blind or visually impaired
    because they do not have a pair of eyeglasses."
  end

  def vosh_video
    link_to "VOSH Vision", "http://vosh.org/why-vision/", target: "_blank"
  end

  def vosh_donate
    link_to "Donate Now", "http://vosh.org/donate", target: "_blank"
  end

  def image_helper(name, options = {})
    if Rails.env.development?
      image_tag name, options
    else
      cl_image_tag name, options
    end
  end

  def img_url_helper(name, options = {})
    if Rails.env.development?
      image_url name, options
    else
      Nokogiri::HTML(cl_image_tag name, options).css('img').map{ |i| i['src'] }.first
    end
  end
end
