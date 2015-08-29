class JumboImage
  def self.dani
    if Rails.env.production?
      'http://res.cloudinary.com/hxeuqektg/image/upload/v1440575963/fello_wine_country.jpg'
    else
      'fello_wine_country.jpg'
    end
  end

  def self.about
    if Rails.env.production?
      'http://res.cloudinary.com/hxeuqektg/image/upload/v1440575863/fello_pineapple.jpg'
    else
      'fello_pineapple.jpg'
    end
  end

  def self.atlas
    if Rails.env.production?
      'http://res.cloudinary.com/hxeuqektg/image/upload/v1440743996/konvoy_atlas_2.jpg'
    else
      'konvoy_atlas.jpg'
    end
  end
end
