class Questionare < ActiveRecord::Base
  attr_accessible :questionare_name, :user_id
  has_many :questions
  belongs_to :users
end
