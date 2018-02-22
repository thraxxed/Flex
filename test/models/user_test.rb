# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  username             :string           not null
#  password_digest      :string           not null
#  session_token        :string           not null
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#  bio                  :string           not null
#  latitude             :float            not null
#  longitude            :float            not null
#  age                  :integer          not null
#  gender               :string           not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
