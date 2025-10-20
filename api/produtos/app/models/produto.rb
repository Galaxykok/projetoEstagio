class Produto < ApplicationRecord
    self.primary_key = "id"

    before_create :set_uuid

    validates :nome, :preco, :descricao, presence: true

    private
    def set_uuid
    self.id ||= SecureRandom.uuid
end
