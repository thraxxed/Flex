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
end
