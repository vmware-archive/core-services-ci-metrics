class Failure < ApplicationRecord
  validates :pipeline, presence: true
  validates :job, presence: true
  validates :build_id, presence: true
  validates :build, presence: true
  validates :url, presence: true
end
