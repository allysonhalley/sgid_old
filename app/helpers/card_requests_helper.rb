# Class metodos que auxiliam CardRequest
module CardRequestsHelper
  # return Registration and Name
  def self.register_and_name(request_id)
    abort request_id.inspect
    card_request = CardRequest.find_by_id(request_id)
    card = Card.find_by_registration(card_request.registration)
    card.register_and_name
  end

  # Validar se solicitacao ja existe
  def self.request_exist(document, registration)
    CardRequest.where(document_reference: document).where(military_registration: registration).where(canceled: false).present?
  end
end
