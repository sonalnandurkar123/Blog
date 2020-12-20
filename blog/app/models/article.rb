class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
                    length: { minimum: 5 }
                     
  validates :title, presence: true,
                    length: { minimum: 5 }   


   def self.search(search)
   	articles = Article.where("text LIKE ? or title LIKE ?", "%#{search}%", "%#{search}%") if search.present?
   	articles #return the articles containing the search words
   end	

end