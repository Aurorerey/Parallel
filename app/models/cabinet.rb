class Cabinet < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :practices
  has_many :activities, through: :practices

  geocoded_by :adresse_cabinet
  after_validation :geocode, if: :will_save_change_to_adresse_cabinet?

  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_adresse_cabinet?

  include PgSearch::Model
  pg_search_scope :search_by_adresse_cabinet,
    against: [:adresse_cabinet],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  # Doit posseder un compte
  #has_one :account
  #validates :account, presence: true

  # validates :cp_cabinet, :adresse_cabinet, :name, :email, :description, presence: true
  # # Options supplementaire pour les champs
  # validates :email, email: true
  # validates :name, length: { minimum: 1 }
  # #validates :telephone, length: { is: 10 }
  # #validates :telephone, numericality: { only_integer: true }
  # validates :cp_cabinet, numericality: { only_integer: true }
end
