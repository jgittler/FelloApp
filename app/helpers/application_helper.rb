module ApplicationHelper
  def konvoy_one
    image_helper 'blueprint_konvoy_2.jpg', alt: 'Konvoy Designs For Fello Sunglasses'
  end

  def konvoy_two
    image_helper 'jerome_konvoy.jpg', alt: 'Fello Eyewear At The Golden Gate Bridge'
  end

  def fantom_one
    image_helper 'blueprint_fantom_hd.jpg', alt: 'Fantom Designs For Fello Sunglasses'
  end

  def fantom_two
    image_helper 'coming_soon_2.jpg', alt: 'Fantom Line Coming Soon'
  end

  def heron_one
    image_helper 'blueprint_heron_hd.jpg', alt: 'Heron Line Coming Soon'
  end

  def heron_two
    image_helper 'coming_soon_2.jpg', alt: 'Heron (Aviator) Designs For Fello Sunglasses'
  end

  def image_helper(name, options = {})
    if Rails.env.produciton?
      cl_image_tag name, options
    else
      image_tag name, options
    end
  end

  def bb_holder
    image_tag 'bbfello.jpg'
  end

  def bb_top_left
    image_tag 'btleft.jpg'
  end

  def bb_left
    image_tag 'bleft.jpg'
  end

  def bb_bottom_left
    image_tag 'bbleft.jpg'
  end

  def bb_top
    image_tag 'btop.jpg'
  end

  def bb_bottom
    image_tag 'bbottom.jpg'
  end

  def bb_top_right
    image_tag 'btright.jpg'
  end

  def bb_right
    image_tag 'bright.jpg'
  end

  def bb_bottom_right
    image_tag 'bbright.jpg'
  end
end
