class User < ActiveRecord::Base
  has_many :albums

  after_create :create_an_album

  private

  def create_an_album
    self.albums.create(name: "#{self.username}'s adventure")
  end
end
