class PhotoUploader < CarrierWave::Uploader::Base
  storage :file
  permissions 0777

  def store_dir
    '../uploads/photos'
  end
end
