# Classe responsavel por representar Militar
class Military < ApplicationRecord
  
  # Validações
  validates :name, presence: true, length: {minimum:3}
  validates :cpf, presence: true, uniqueness: true, length: {is: 11}
  validates :identification, presence: true
  validates :father_name, length: {minimum:3}
  validates :mother_name, length: {minimum:3}
  validates :born_date, presence: true
  validates :registration, presence: true
  validates :naturalness, presence: true, length: {minimum:3}
  validates :vote_number, presence: true
  validates :vote_zone, presence: true
  validates :vote_section, presence: true
  validates :digital_factor, presence: true
  validates :blood_type, presence: true
  validates :blood_factor, presence: true
  validates :firearm, presence: true

  before_save :uppercase_strings
  before_update :uppercase_strings

  belongs_to :hierarchy

  enum blood_type: { undefine_type: 0, a: 1, b: 2, ab: 3, o: 4 }
  enum blood_factor: { undefine_factor: 0, positive: 1, negative: 2 }
  enum situation: { active: 1, inactive: 2 }
  enum firearm: { fit: 1, unfit: 2 }

  # Tornar todas strings upercase
  def uppercase_strings
    name.upcase!
    father_name.upcase!
    mother_name.upcase!
    naturalness.upcase!
  end

  #  def born_date
  #    self[:born_date].strftime("%d/%m/%Y")
  #  end

  def date_formatted
    born_date.strftime('%d/%m/%Y') if born_date?
  end

  # Internationalization (I18n)
  # blood_type: Internationalization (I18n)
  def i18n_blood_type
    I18n.t("activerecord.attributes.military.blood_types.#{blood_type}").upcase!
  end

  # Hash blood_types: Internationalization (I18n)
  def self.i18n_blood_types(hash = {})
    blood_types.each_key do |key|
      hash[I18n.t("activerecord.attributes.military.blood_types.#{key}").upcase!] = key
    end
    hash
  end

  # blood_type: Internationalization (I18n)
  def i18n_blood_factor
    I18n.t("activerecord.attributes.military.blood_factors.#{blood_factor}").upcase!
  end

  # Hash blood_factors: Internationalization (I18n)
  def self.i18n_blood_factors(hash = {})
    blood_factors.each_key do |key|
      hash[I18n.t("activerecord.attributes.military.blood_factors.#{key}").upcase!] = key
    end
    hash
  end

  # firearm: Internationalization (I18n)
  def i18n_firearm
    I18n.t("activerecord.attributes.military.firearms.#{firearm}").upcase!
  end

  # Hash firearms: Internationalization (I18n)
  def self.i18n_firearms(hash = {})
    firearms.each_key do |key|
      hash[I18n.t("activerecord.attributes.military.firearms.#{key}").upcase!] = key
    end
    hash
  end
end
