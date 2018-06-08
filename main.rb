require 'optparse'
require 'json'

options = {}
result = {}

OptionParser.new do |opt|
  opt.on('--user_id USER_ID') { |o| options[:user_id] = o }
  opt.on('--loyalty_card_id LOYALTY_CARD_ID') { |o| options[:loyalty_card_id] = o }
end.parse!

if options[:user_id]
  result[:user] = {
    id: 5,
    total_points: 67,
    loyalty_cards: [
      { id: 1, points: 12, name: 'Carrefour' },
      { id: 3, points: 66, name: 'Subway' }
    ]
  }
end

if options[:loyalty_card_id]
  result[:loyalty_card] = {
    id: 5,
    total_points: 134
  }
end

puts JSON.pretty_generate(result)
