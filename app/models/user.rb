class User < ApplicationRecord
    validates :title, presence: true, length: { maximum:20 }
    validates :memo, length: { maximum: 500 }
    validate :start_end_check

  def start_end_check
    if self.end < self.start
    errors.add(:start, "開始日は終了日より前の日付を選択してください")
    end
  end
end
