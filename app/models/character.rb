class Character < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sex

  belongs_to :user
  has_many :comments

  validates :height, presence: true
  validates :weight, presence: true

  validates :sex_id, numericality: { other_than: 1 , message: "can't be blank"}
end
