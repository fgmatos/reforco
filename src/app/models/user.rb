class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :teachers, dependent: :destroy
  has_many :students, dependent: :destroy
  has_attached_file :avatar, styles: { medium: "300x300>"}#, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
         
   
    
end
   