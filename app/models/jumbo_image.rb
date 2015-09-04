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

  def self.smile_girl
    if Rails.env.production?
    else
      'smile_girl.jpg'
    end
  end

  def self.thumbs_up
    if Rails.env.production?
    else
      'thumbs_up.jpg'
    end
  end

  def self.smile_gown
    if Rails.env.production?
    else
      'smile_gown.jpg'
    end
  end

  def self.eye_exam
    if Rails.env.production?
    else
      'eye_exam.jpg'
    end
  end

  def self.eye_cover
    if Rails.env.production?
    else
      'eye_cover.jpg'
    end
  end
end
