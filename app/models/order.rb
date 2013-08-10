# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  user_id    :integer
#  expires    :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
    attr_accessible :stripe_card_token, :course_id, :user_id
    attr_accessor :stripe_card_token
  # attr_accessible :title, :body
    belongs_to :course
    belongs_to :user
    
    def save_with_payment
        #@amount = self.course.cost
        @amount = 500
        if valid?
            charge = Stripe::Charge.create(amount: @amount, currency: 'usd', card: stripe_card_token)
            #self.stripe_customer_token = customer.id
            save!
        end
        rescue Stripe::InvalidRequestError => e
        logger.error "Stripe error while creating customer: #{e.message}"
        errors.add :base, "There was a problem with your credit card."
        false
    end
end