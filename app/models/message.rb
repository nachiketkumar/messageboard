class Message < ActiveRecord::Base
  validates :owner, :content, presence: true
end
