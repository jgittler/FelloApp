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

  def bb_center
    image_tag 'bbfello.jpg'
  end

  def bb_top_left
    image_tag 'ridge_down.jpg'
  end

  def bb_left
    image_tag 'cody.jpg'
  end

  def bb_bottom_left
    image_tag 'matt.jpg'
  end

  def bb_top
    image_tag 'kayrah.jpg'
  end

  def bb_bottom
    image_tag 'cate.jpg'
  end

  def bb_top_right
    image_tag 'jerome.jpg'
  end

  def bb_right
    image_tag 'michelle.jpg'
  end

  def bb_bottom_right
    image_tag 'kassan.jpg'
  end
end
