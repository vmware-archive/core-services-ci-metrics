class Failure < ApplicationRecord
  validates :pipeline, presence: true
  validates :job, presence: true
end
