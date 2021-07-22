class Comment < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :content
    validates :start_time
    validates :step
  end

end
