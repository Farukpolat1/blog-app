class User < ApplicationRecord
  # Devise modüllerini buraya eklemek zorundayız, yoksa 'authenticate_user!' metodu çalışmaz:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles, dependent: :destroy
end
