# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :string
#  created_by :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Todo < ApplicationRecord
  has_many :items, dependent: :destroy
  validates :title, :created_by, presence:true

end
