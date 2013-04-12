class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file
  permissions 0777

  process :resize_to_fit => [1000, 1000]

  version :thumb do
    process resize_to_fit: [400, 400]
  end

end
