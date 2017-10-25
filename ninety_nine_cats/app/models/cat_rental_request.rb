class CatRentalRequest < ApplicationRecord
  STATUS = %w(pending denied approved)
  validates :cat_id, :start_date, :end_date, presence: true
  validates :status, inclusion: { in: STATUS,
    message: "%{value} is not a valid status" }
  validate :does_not_overlap_approved_requests

  belongs_to :cat

  def overlapping_requests
    CatRentalRequest
      .where.not('start_date >= ? OR end_date <= ?', end_date, start_date)
      .where(cat_id: cat_id)
  end

  def overlapping_approved_requests
    overlapping_requests.where(status: 'approved')
  end

  def does_not_overlap_approved_requests
    if overlapping_approved_requests.exists?
      errors.add(:start_date, "can't overlap")
    end
  end

end
