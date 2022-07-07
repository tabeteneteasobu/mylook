class Color < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'WHITE' },
    { id: 3, name: 'BRACK' },
    { id: 4, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :items
  end