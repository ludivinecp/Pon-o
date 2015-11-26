class Search < ActiveRecord::Base

  def search_services

    services = Service.all

    services = services.where (["title LIKE ?", "%#{keywords}"]) if keywords.present?
    services = services.where (["category LIKE ?", category]) if category.present?
    services = services.where (["price >= ?", min_price]) if min_price.present?
    services = services.where (["price <= ?", max_price]) if max_price.present?


    return services
  end



end
