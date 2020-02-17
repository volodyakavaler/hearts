class Sick < ApplicationRecord
  # validates :first_name, :last_name, :date_of_birth, :address,
  # :phone, :policy, :passport, presence: true
  # validates :policy, length: { is: 16 }
  # validates :phone, length: { is: 11 }
  # validates :sex, presence: true
  # validate :date_of_birth_cannot_be_in_the_future

  has_one :lifeanamnese, dependent: :delete
  has_many :heart_programs, dependent: :delete_all
  has_many :desease_records, dependent: :delete_all
  # accepts_nested_attributes_for :lifeanamnese

  def date_of_birth_cannot_be_in_the_future
    if !date_of_birth.nil?
      if date_of_birth > Date.today
        errors.add(:date_of_birth, "не может быть больше текущей даты")
      end
    end
  end

  # поиск
  def self.search(params)
    result = Sick.all

    if params['last_name'].present?
      result = result.where(last_name: params['last_name'])
    end
    if params['first_name'].present?
      result = result.where(first_name: params['first_name'])
    end
    if params['patronymic'].present?
      result = result.where(patronymic: params['patronymic'])
    end
    if params['policy'].present?
      result = result.where(policy: params['policy'])
    end
    if params['passport'].present?
      result = result.where(passport: params['passport'])
    end
    if params['phone'].present?
      result = result.where(phone: params['phone'])
    end
    if params['date_of_birth'].present?
      result = result.where(date_of_birth: params['date_of_birth'])
    end

    result.all
  end
end
