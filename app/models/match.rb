# == Schema Information
#
# Table name: matches
#
#  id         :integer          not null, primary key
#  user1_id   :integer          not null
#  user2_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Match < ApplicationRecord
  validates :user1_id, :user2_id, presence: true

  belongs_to :user1,
  foreign_key: :user1_id,
  primary_key: :id,
  class_name: 'User'

  belongs_to :user2,
  foreign_key: :user2_id,
  primary_key: :id,
  class_name: 'User'
end
