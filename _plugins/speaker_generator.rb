module Jekyll

  # The SpeakerIndex class creates a speaker page for the specified speaker.
  class SpeakerIndex < Page

    # Initializes a new SpeakerIndex.
    #
    #  +base+         is the String path to the <source>.
    #  +speaker_dir+ is the String path between <source> and the speaker folder.
    #  +speaker+     is the speaker currently being processed.
    def initialize(site, base, speaker_dir, speaker)
      @site = site
      @base = base
      @dir  = speaker_dir
      @name = 'index.html'
      self.process(@name)
      # Read the YAML data from the layout page.
      self.read_yaml(File.join(base, '_layouts'), 'speaker_index.html')
      self.data['speaker']    = speaker
      # Set the title for this page.
      title_prefix             = site.config['speaker_title_prefix'] || 'speaker: '
      self.data['title']       = "#{speaker}"
      # Set the meta-description for this page.
      meta_description_prefix  = site.config['speaker_meta_description_prefix'] || 'speaker: '
      self.data['description'] = "#{meta_description_prefix}#{speaker}"      
    end

  end


  # The Site class is a built-in Jekyll class with access to global site config information.
  class Site

    # Creates an instance of speakerIndex for each speaker page, renders it, and
    # writes the output to a file.
    #
    #  +speaker_dir+ is the String path to the speaker folder.
    #  +speaker+     is the speaker currently being processed.
    def write_speaker_index(speaker_dir, speaker)      
      index = SpeakerIndex.new(self, self.source, speaker_dir, speaker)
      index.render(self.layouts, site_payload)
      index.write(self.dest)
      # Record the fact that this page has been added, otherwise Site::cleanup will remove it.
      self.pages << index

    end

    # Loops through the list of speaker pages and processes each one.
    def write_speaker_indexes

      if self.layouts.key? 'speaker_index'
        dir = self.config['speaker_dir'] || 'speakers'        
        self.posts.docs.each do |post|
          post_speakers = post.data["speakers"]
          if String.try_convert(post_speakers)
               post_speakers = [ post_speakers ]
          end
          post_speakers.each do |speaker|
            self.write_speaker_index(File.join(dir, speaker.downcase.gsub(' ', '-')), speaker)
          end unless post_speakers.nil?
        end
      # Throw an exception if the layout couldn't be found.
      else
        throw "No 'speaker_index' layout found."
      end
    end
  end

  class GenerateSpeaker < Generator
    safe true
    priority :high

    def generate(site)
      site.write_speaker_indexes
      #puts "site.speakers #{site.speakers}"
    end

  end

end
