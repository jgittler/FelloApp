class JumboImage
  def self.about
    if Rails.env.production?
      'http://res.cloudinary.com/hxeuqektg/image/upload/v1440575863/fello_pineapple.jpg'
    else
      'fello_pineapple.jpg'
    end
  end

  def self.pier
    if Rails.env.production?
    else
      'top_level.jpg'
    end
  end

  def self.vosh
    if Rails.env.production?
    else
      'fello_and_vosh.jpg'
    end
  end

  def self.share
    if Rails.env.production?
    else
      'konvoy_on_rock.jpg'
    end
  end
end
