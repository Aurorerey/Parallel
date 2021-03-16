class Cabinet < ApplicationRecord
  belongs_to :user
  # Doit posseder un compte
  #has_one :account
  #validates :account, presence: true

 # validates :cp_cabinet, :adresse_cabinet, :telephone, :certificate, :name, :email, :description, presence: true
  # Options supplementaire pour les champs
 # validates :email, email: true
  #validates :name, length: { minimum: 1 }
  #validates :telephone, length: { is: 10 }
  #validates :telephone, numericality: { only_integer: true }
  #validates :cp_cabinet, numericality: { only_integer: true }
end
