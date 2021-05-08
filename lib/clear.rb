def clear
    if Gem.win_platform?
      system 'cls'
    else
      system 'clear'
    end
  end