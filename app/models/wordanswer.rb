class Wordanswer < ActiveRecord::Base
  attr_accessible :content, :question_id, :user_id
  
  belongs_to:questions
  belongs_to:users
end
