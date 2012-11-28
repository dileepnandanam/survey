class Question < ActiveRecord::Base
  attr_accessible :answer_type, :content, :questionare_id
  has_many:wordanswers
  has_many:booleananswers
  has_many:textanswers
  belongs_to:questionares
end
