class Project < ApplicationRecord
    has_many :personals, dependent: :destroy, inverse_of: :project
    accepts_nested_attributes_for :personals, allow_destroy: true, reject_if: :all_blank
end
