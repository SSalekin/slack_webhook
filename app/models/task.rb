class Task < ApplicationRecord

  def get_url
    Rails.application.routes.url_helpers.polymorphic_url(self, {host:HOST})
  end
end
