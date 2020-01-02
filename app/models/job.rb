require 'csv'

class Job < ApplicationRecord
  belongs_to :city
  belongs_to :company

  has_many :industry_jobs
  has_many :saved_jobs

  def self.import(file)

    CSV.foreach(file.path, headers: true) do |row|

    end
  end
end
