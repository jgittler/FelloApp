require "browser"

module ApplicationHelper
  def dynamic_title
    unless current_page?('/')
      " | #{action_name.titleize}"
    end
  end

  def image_helper(name, options = {})
    if browser.device.mobile?
      img_parts = name.split(".")
      img_name = img_parts.first
      img_ext = img_parts.last

      asset = "#{img_name}_for_mobile.#{img_ext}"

      if Rails.application.assets.find_asset(asset)
        image_tag asset, options
      else
        image_tag name, options
      end
    else
      image_tag name, options
    end
  end

  def img_url_helper(name, options = {})
    if browser.device.mobile?
      img_parts = name.split(".")
      img_name = img_parts.first
      img_ext = img_parts.last

      asset = "#{img_name}_for_mobile.#{img_ext}"

      if Rails.application.assets.find_asset(asset)
        image_url asset, options
      else
        image_url name, options
      end
    else
      image_url name, options
    end
  end
end
