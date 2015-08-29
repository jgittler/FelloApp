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
end
