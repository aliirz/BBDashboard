class Project
  include Mongoid::Document
  field :name, type: String
  field :client, type: String
  field :amount, type: BigDecimal
  field :start, type: Date
  field :end, type: Date
  field :description, type: String

end
