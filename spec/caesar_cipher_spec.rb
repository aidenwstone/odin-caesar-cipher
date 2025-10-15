# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

describe 'caesar_cipher' do
  subject(:user_string) { 'Hello, world!' }

  context 'when using a small, positive shift_factor' do
    it 'returns the ciphered message' do
      small_shift = 7
      small_cipher = caesar_cipher(user_string, small_shift)
      expect(small_cipher).to eq('Olssv, dvysk!')
    end
  end

  context 'when using a small, negative shift_factor' do
    it 'returns the ciphered message' do
      small_negative_shift = -4
      small_negative_cipher = caesar_cipher(user_string, small_negative_shift)
      expect(small_negative_cipher).to eq('Dahhk, sknhz!')
    end
  end

  context 'when using a large, positive shift_factor' do
    it 'returns the ciphered message' do
      large_shift = 56
      large_cipher = caesar_cipher(user_string, large_shift)
      expect(large_cipher).to eq('Lipps, asvph!')
    end
  end

  context 'when using a large, negative shift_factor' do
    it 'return the ciphered message' do
      large_negative_shift = -79
      large_negative_cipher = caesar_cipher(user_string, large_negative_shift)
      expect(large_negative_cipher).to eq('Gdkkn, vnqkc!')
    end
  end
end
