class Mouse
  attr_accessor :boots
  def run(adverb = '')
    if(boots == 'untied boots')
      'I tripped!'
    else
      if(adverb != '')
        "running #{adverb}"
      else
        'running'
      end
    end
  end
end
