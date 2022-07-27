class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'トップス' },
    { id: 3, name: 'ボトムス' },
    { id: 4, name: 'ワンピース' },
    { id: 5, name: '上着類' },
    { id: 6, name: '小物類' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
end
