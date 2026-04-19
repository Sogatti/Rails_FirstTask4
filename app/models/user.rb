class User < ApplicationRecord
    validates :title, presence: true, length: { maximum:20 }
    validates :memo, length: { maximum: 500 }
    validates :start, presence: true
    validates :end, presence: true

    validate :start_end_check,

  def start_end_check
    if start.present? && self.end.present?
      if self.end < self.start
        errors.add(:start, "は終了日より前の日付を選択してください")
      end
    end
  end
end
