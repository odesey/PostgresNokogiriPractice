# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  body       :text
#

class Article < ActiveRecord::Base
  attr_accessible :title, :body
end
