class Textanswer < ActiveRecord::Base
  attr_accessible :content, :question_id, :user_id
  belongs_to :users
  belongs_to :questions
end
