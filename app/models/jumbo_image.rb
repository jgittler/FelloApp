class JumboImage
  def self.survey
    if Rails.env.production?
      'http://a1.res.cloudinary.com/hxeuqektg/image/upload/v1448385711/survey_bg.jpg'
    else
      'survey_bg.jpg'
    end
  end

  def self.cate_lg
    if Rails.env.production?
      "http://a1.res.cloudinary.com/hxeuqektg/image/upload/v1441852503/cate_lg.jpg"
    else
      'cate_lg.jpg'
    end
  end

  def self.lifeguard
    if Rails.env.production?
      "http://res.cloudinary.com/hxeuqektg/image/upload/v1454834221/fello_lifeguard.jpg"
    else
      'fello_lifeguard.jpg'
    end
  end

  def self.about
    if Rails.env.production?
      'http://a1.res.cloudinary.com/hxeuqektg/image/upload/v1440575863/fello_pineapple.jpg'
    else
      'fello_pineapple.jpg'
    end
  end

  def self.vosh
    if Rails.env.production?
      "http://a1.res.cloudinary.com/hxeuqektg/image/upload/v1441407751/fello_and_vosh.jpg"
    else
      'fello_and_vosh.jpg'
    end
  end

  def self.share
    if Rails.env.production?
      "http://a1.res.cloudinary.com/hxeuqektg/image/upload/v1441407827/konvoy_on_rock.jpg"
    else
      'konvoy_on_rock.jpg'
    end
  end

  def self.tl_1############
    if Rails.env.production?
      "http://a2.res.cloudinary.com/hxeuqektg/image/upload/v1441852821/matt.jpg"
    else
      'matt.jpg'
    end
  end

  def self.tm_1##########
    if Rails.env.production?
      "http://a3.res.cloudinary.com/hxeuqektg/image/upload/v1441852961/dani.jpg"
    else
      'dani.jpg'
    end
  end

  def self.tr_1#############
    if Rails.env.production?
      "http://a4.res.cloudinary.com/hxeuqektg/image/upload/v1441852914/kayrah.jpg"
    else
      'kayrah.jpg'
    end
  end

  def self.ml_1###########
    if Rails.env.production?
      "http://a5.res.cloudinary.com/hxeuqektg/image/upload/v1441852846/ridge_down.jpg"
    else
      'ridge_down.jpg'
    end
  end

  def self.mm_1
    if Rails.env.production?
      "http://a1.res.cloudinary.com/hxeuqektg/image/upload/v1441407854/fello_center.png"
    else
      'fello_center.png'
    end
  end

  def self.mr_1###########
    if Rails.env.production?
      "http://a2.res.cloudinary.com/hxeuqektg/image/upload/v1442513923/cate.jpg"
    else
      'cate.jpg'
    end
  end

  def self.bl_1###########
    if Rails.env.production?
      "http://a3.res.cloudinary.com/hxeuqektg/image/upload/v1442532095/michelle.jpg"
    else
      'michelle.jpg'
    end
  end

  def self.bm_1#########
    if Rails.env.production?
      "http://a4.res.cloudinary.com/hxeuqektg/image/upload/v1441852797/kassan.jpg"
    else
      'kassan.jpg'
    end
  end

  def self.br_1#########
    if Rails.env.production?
      "http://a4.res.cloudinary.com/hxeuqektg/image/upload/v1442532099/jerome.jpg"
    else
      'jerome.jpg'
    end
  end

  def self.tl_xs_1#########
    if Rails.env.production?
      "http://a5.res.cloudinary.com/hxeuqektg/image/upload/v1442514239/michelle-xs.jpg"
    else
      'michelle-xs.jpg'
    end
  end

  def self.tr_xs_1###########
    if Rails.env.production?
      "http://a1.res.cloudinary.com/hxeuqektg/image/upload/v1441852939/kayrah-xs.jpg"
    else
      'kayrah-xs.jpg'
    end
  end

  def self.ml_xs_1###########
    if Rails.env.production?
      "http://a2.res.cloudinary.com/hxeuqektg/image/upload/v1441852894/ridge_down-xs.jpg"
    else
      'ridge_down-xs.jpg'
    end
  end

  def self.mm_xs_1
    if Rails.env.production?
      "http://a3.res.cloudinary.com/hxeuqektg/image/upload/v1441407854/fello_center-xs.png"
    else
      'fello_center-xs.png'
    end
  end

  def self.mr_xs_1###########
    if Rails.env.production?
      "http://a4.res.cloudinary.com/hxeuqektg/image/upload/v1441853033/dani-xs.jpg"
    else
      'dani-xs.jpg'
    end
  end

  def self.bl_xs_1###########
    if Rails.env.production?
      "http://a5.res.cloudinary.com/hxeuqektg/image/upload/v1442513913/cate-xs.jpg"
    else
      'cate-xs.jpg'
    end
  end

  def self.bm_xs_1###########
    if Rails.env.production?
      "http://a1.res.cloudinary.com/hxeuqektg/image/upload/v1441852745/kassan-xs.jpg"
    else
      'kassan-xs.jpg'
    end
  end
end
