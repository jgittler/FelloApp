class JumboImage
  def self.about
    if Rails.env.production?
      'http://res.cloudinary.com/hxeuqektg/image/upload/v1440575863/fello_pineapple.jpg'
    else
      'fello_pineapple.jpg'
    end
  end

  def self.vosh
    if Rails.env.production?
    else
      'fello_and_vosh.jpg'
    end
  end

  def self.cate_lg
    if Rails.env.production?
    else
      'cate_lg.jpg'
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

  def self.tl_1
    if Rails.env.production?
    else
      'matt.jpg'
    end
  end

  def self.tm_1
    if Rails.env.production?
    else
      'owen.jpg'
    end
  end

  def self.tr_1
    if Rails.env.production?
    else
      'kayrah.jpg'
    end
  end

  def self.ml_1
    if Rails.env.production?
    else
      'ridge_down.jpg'
    end
  end

  def self.mm_1
    if Rails.env.production?
    else
      'fello_center.png'
    end
  end

  def self.mr_1
    if Rails.env.production?
    else
      'dani.jpg'
    end
  end

  def self.bl_1
    if Rails.env.production?
    else
      'cate.jpg'
    end
  end

  def self.bm_1
    if Rails.env.production?
    else
      'kassan.jpg'
    end
  end

  def self.br_1
    if Rails.env.production?
    else
      'jerome_smile.jpg'
    end
  end

  def self.tl_xs_1
    if Rails.env.production?
    else
      'matt-xs.jpg'
    end
  end

  def self.tr_xs_1
    if Rails.env.production?
    else
      'kayrah-xs.jpg'
    end
  end

  def self.ml_xs_1
    if Rails.env.production?
    else
      'ridge_down-xs.jpg'
    end
  end

  def self.mm_xs_1
    if Rails.env.production?
    else
      'fello_center-xs.png'
    end
  end

  def self.mr_xs_1
    if Rails.env.production?
    else
      'dani-xs.jpg'
    end
  end

  def self.bl_xs_1
    if Rails.env.production?
    else
      'cate-xs.jpg'
    end
  end

  def self.bm_xs_1
    if Rails.env.production?
    else
      'kassan-xs.jpg'
    end
  end
end
