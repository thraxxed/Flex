# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  username             :string           not null
#  password_digest      :string           not null
#  session_token        :string           not null
#  picture_file_name    :string           not null
#  picture_content_type :string           not null
#  picture_file_size    :integer          not null
#  picture_updated_at   :datetime         not null
#  bio                  :string           not null
#  latitude             :float            not null
#  longitude            :float            not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class User < ApplicationRecord
  validates :username, :password_digest, :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true}
  validates :username, uniqueness: true

  has_many :likes
  has_many :messages

  has_many :matches1,
  foreign_key: :user1_id,
  primary_key: :id,
  class_name: 'Match'

  has_many :matches2,
  foreign_key: :user2_id,
  primary_key: :id,
  class_name: 'Match'

  has_many :liked_memes,
  through: :likes,
  source: :meme

  has_attached_file :picture, default_url: "https://res.cloudinary.com/dbk2furpp/image/upload/v1517363601/default_profile_pic_heczvd.jpg"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  before_validation :ensure_session_token

  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return user if user && user.is_password?(password)
    nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token
    self.session_token = SecureRandom.urlsafe_base64
    self.save
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

  def generate_matches
    likes = {}
    self.liked_memes.each do |meme|
      meme.users_liked.each do |other_user|
        likes_in_common = 0
        other_user.liked_memes.each do |other_user_memes|
          if other_user_memes.users_liked.include?(self)
            likes_in_common += 1
            if (likes_in_common == 3)
              not_same_user = self.id != other_user.id
              gender_match = self.gender != other_user.gender
              latitude_match = (self.latitude > other_user.latitude - 10 && self.latitude < other_user.latitude + 10)
              longitude_match = (self.longitude > other_user.longitude - 10 && self.longitude < other_user.longitude + 10)
              match = not_same_user && gender_match && latitude_match && longitude_match
              if (match)
                unless (match && (Match.find_by(user1_id: self.id, user2_id: other_user.id) || Match.find_by(user2_id: self.id, user1_id: other_user.id)))
                  Match.create(user1_id: self.id, user2_id: other_user.id)
                end
              end
            end
          end
        end
      end
    end
  end
end
