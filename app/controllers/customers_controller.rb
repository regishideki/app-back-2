class CustomersController < ApplicationController
  def create
    customer = Customer.create(JSON.parse(request.body.read))

    render status: 201, json: customer.as_json
  end
end
