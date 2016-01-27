# Rails.configuration.stripe = {
#   :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
#   :secret_key      => ENV['STRIPE_SECRET_KEY']
# }

Rails.configuration.stripe = {
  :publishable_key => "pk_test_YsTyE4WcgRlU1G8HIBEcVqV6",
  :secret_key      => "sk_test_6sfvcWIUkeqdlcQVBt8bcpKl"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
