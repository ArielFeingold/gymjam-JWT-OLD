class Exercise < ApplicationRecord
  before_action :authenticate_user
  belongs_to :user
  belongs_to :workout, dependent: :destroy
end
