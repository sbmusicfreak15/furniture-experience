if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_live_sMkT7dfAd5pSdtfnmWKnXtHV',
    secret_key: 'sk_live_Z5kWsvJghH4tO4XA9yAWBfz5'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
