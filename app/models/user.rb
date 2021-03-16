class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Presence obligatoire pour le renseignement de ces champs
  validates :nom, :prenom, :telephone, :city, :adresse, :code_postal, :email, :password, presence: true
  # Options supplementaire pour les champs
  validates :email, uniqueness: true
  validates :email, confirmation: true
  validates :email_confirmation, presence: true
  validates :nom, length: { minimum: 2 }
  validates :prenom, length: { minimum: 2 }
  validates :password, length: { in: 6..20 }
  validates :telephone, length: { is: 10 }
end
