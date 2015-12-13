module Jekyll

  # The SpeakerIndex class creates a speaker page for the specified speaker.
  class HallOfFameIndex < Page

    # Initializes a new SpeakerIndex.
    #
    #  +base+         is the String path to the <source>.
    #  +speaker_dir+ is the String path between <source> and the speaker folder.
    #  +speaker+     is the speaker currently being processed.
    def initialize(site, base, speaker_dir, hallOfFame)
      @site = site
      @base = base
      @dir  = speaker_dir
      @name = 'index.html'
      self.process(@name)
      # Read the YAML data from the layout page.
      self.read_yaml(File.join(base, '_layouts'), 'hall_of_fame.html')
      self.data['title']       = "Hall of Fame"
      self.data['hallOfFame']    = hallOfFame
    end

  end


  # The Site class is a built-in Jekyll class with access to global site config information.
  class Site

    # Write the hall of fame site.
    #
    #  +speaker_dir+ is the String path to the speaker folder.
    #  +hallOfFame+ is a hash map with all speakers
    def write_hall_of_fame_index(speaker_dir, hallOfFame)  
      index = HallOfFameIndex.new(self, self.source, speaker_dir, hallOfFame)
      index.render(self.layouts, site_payload)
      index.write(self.dest)
      # Record the fact that this page has been added, otherwise Site::cleanup will remove it.
      self.pages << index

    end

    # Loops through the list of speaker pages and processes each one.
    def write_hall_of_fame

      hallOfFame = Hash.new(0)

      if self.layouts.key? 'hall_of_fame'
        dir = self.config['speaker_dir'] || 'speakers'        
        self.posts.docs.each do |post|
          post_speakers = post.data["speakers"]
          if String.try_convert(post_speakers)
               post_speakers = [ post_speakers ]
          end
          post_speakers.each do |speaker|
            hallOfFame[speaker] += 1            
          end unless post_speakers.nil?
        end

        hallOfFame = hallOfFame.sort_by { |key, value| value }.reverse
        self.write_hall_of_fame_index(File.join(dir), hallOfFame)
      # Throw an exception if the layout couldn't be found.
      else
        throw "No 'hall of fame' layout found."
      end
    end
  end

  class GenerateHallofFame < Generator
    safe true
    priority :high

    def generate(site)
      site.write_hall_of_fame
    end
  end

end