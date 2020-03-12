class Task2 < ApplicationRecord
validates :title,  presence: true
validates :body,  presence: true

  private

  def name_presence
    return if name.present?

    errors.add(:base, "この名前は１文字以上入力してください.")
  end



end
