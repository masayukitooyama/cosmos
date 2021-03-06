class Require < ActiveRecord::Base

  acts_as_paranoid
  belongs_to :user

  scope :join_user, -> { joins(:user) }
  scope :where_user_id, -> (user_id) { where(user_id: user_id) }
  scope :where_asin, -> (asin) { where(asin: asin) }

  def self.add_total_requires(books)
    books.each do |book|
      total_requires = self.where_asin(book[:asin]).count()
      book[:total_requires] = total_requires
    end
    books
  end

  def self.get_count_by_asin(asin)
    self.where_asin(asin).count()
  end

end
