# frozen_string_literal: true

require 'rspec'
require_relative './bowling'

describe Game do
  describe '.first_roll' do
    it 'Print a random number' do
      expect(Game.new.first_roll).to be_a_kind_of(Numeric)
    end
    it 'Random number 0..10' do
      expect(Game.new.first_roll).to be_between(0, 10).inclusive
    end
  end
  describe '.second_roll' do
    it 'The second roll of a game' do
      expect(Game.new.second_roll(10)).to be_a_kind_of(Numeric)
    end
  end
  describe '.play_game' do
    it 'Create an Array with the number of shots' do
      expect(Game.new.play_game).to be_a_kind_of(Array)
    end
  end
  describe '.bonus_roll' do
    it 'Add a bonus roll in the last roll' do
      expect(Game.new.bonus_roll).to be_a_kind_of(Numeric)
    end
  end
  describe '.last_game' do
    it 'Method for the last roll' do
      expect(Game.new.last_game).to be_a_kind_of(Array)
    end
  end
  describe '.rules' do
    it 'Rules of the game' do
      expect(Game.new.rules).to be_a_kind_of(Numeric)
    end
  end
end
