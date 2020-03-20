class ShortenedUrl < ApplicationRecord


  def self.random_code
    str = SecureRandom.urlsafe_base64
    while ShortenedUrl.exists?(str)
      str = SecureRandom.urlsafe_base64
    end
    str 
  end

  def self.create!(user, long_url)
    shortened = ShortenedUrl.new
    shortened.long_url = long_url
    shortened.short_url = 'short.com/' +  ShortenedUrl.random_code
    shortened.user_id = user.id
    shortened.save
  end
  #associations

  belongs_to :submitter,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

end