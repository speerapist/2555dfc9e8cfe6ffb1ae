class Robot
  include Mongoid::Document
  include Mongoid::Timestamps

   field :status, type: String, default: "no_table"
   field :position, type: Array, default: []
   field :facing, type: String, default: ""
end
