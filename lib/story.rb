# frozen_string_literal: true

module Lab
  # ruby module, we will cover modules in a later lesson
  module Story
    def tell_story
      # TODO: create characters array
      story = +'' # create empty string that is modifiable
      story << 'There once were three friends...' # append text to story
      story << "\nThen stuff happened"
      puts story # print output of story to stdout
    end
  end
end
