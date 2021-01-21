class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :last_name, :first_name, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i, message: '英数字を両方含み、半角で入力してください' }, allow_blank: true
  validates :last_name, :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: '全角の漢字・ひらがな・カタカナで入力してください' }, allow_blank: true
end
