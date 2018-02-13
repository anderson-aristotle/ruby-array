# frozen_string_literal: true

#

require 'spec_helper'
require 'code_along'
include CodeAlong

require 'lab'
require 'story'
include Lab::StoringAccessing
include Lab::Story

describe 'Code Along' do
  describe 'creating empty array literal' do
    let(:lit_array) { [] }
    it 'is an empty array' do
      expect(CodeAlong.lit_array).to eq lit_array
    end
  end

  describe 'creating array initialized with 5 elements using constructor function' do
    let(:constr_array) { Array.new(5, {}) }

    it 'is an array with 5 elements' do
      expect(CodeAlong.constr_array).to eq constr_array
    end
  end

  describe 'creating an array with ten false elements' do
    let(:ten_false_array) { Array.new(10, false) }

    it 'is an array with 10 false elements' do
      expect(CodeAlong.ten_false_array).to eq ten_false_array
    end
  end

  describe 'Lab' do
    describe 'StoringAccessing' do
      # deep dup
      let(:working_array) { Lab::StoringAccessing::WORKING_ARRAY.inject([]) { |a, element| a << element.dup } }
      let(:working_array_length) { working_array.length }

      describe 'append_twenty' do
        let(:append_twenty) { working_array[working_array_length] = 20 }
        it('appends twenty to end of WORKING_ARRAY using length') do
          expect(append_twenty).to eq Lab::StoringAccessing.append_twenty
        end
      end

      describe 'access_third_from_end' do
        let(:third_from_end) { Lab::StoringAccessing::WORKING_ARRAY[-3] }
        it('access the third from the end') do
          expect(third_from_end).to eq Lab::StoringAccessing.access_third_from_end
        end
      end

      describe 'access_ninth_element' do
        let(:ninth_element) { working_array[9] }
        it('accesses the ninth element') do
          expect(ninth_element).to eq Lab::StoringAccessing.access_ninth_element
        end
      end

      describe 'assign_to_fifth_from_end' do
        before do
          working_array[-5] = [-12, -49]
          Lab::StoringAccessing.assign_to_fifth_from_end
        end
        it('assigns an array to fifth from end of working array') do
          puts working_array[-5]
          puts Lab::StoringAccessing::WORKING_ARRAY[-5]
          expect(working_array[-5]).to eq Lab::StoringAccessing::WORKING_ARRAY[-5]
        end
      end

      describe 'access_all_elements' do
        let(:all_elements) { working_array[1..working_array.length].map { |el| el } }
        it('accesses all elements starting at one') do
          expect(all_elements).to eq Lab::StoringAccessing.access_all_elements
        end
      end

      describe 'bonus block initializer' do
        let(:bonus_array) { Array.new(10) { |index| index * 2 } }
        it('initializes a new array with ten elements whose value is equal to index * 2') do
          expect(bonus_array).to eq Lab::StoringAccessing.bonus_block_initializer
        end
      end
    end

    describe 'story lab' do
      it('prints a story') do
        expect { Lab::Story.tell_story }.to output.to_stdout
      end
    end
  end
end
