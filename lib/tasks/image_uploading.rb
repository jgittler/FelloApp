class ImageUploading
  attr_reader :img_array

  def initialize(img_array)
    # SHould be array of img files as strings
    @img_array = img_array
  end

  def upload
    img_array.each do |img|
      Cloudinary::Uploader.upload("app/assets/images/#{img}", public_id: img.match(/(^[^.]+)/)[0])
    end
  end
end
