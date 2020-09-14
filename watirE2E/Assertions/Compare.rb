require 'watir'

class Compare

  def validatepageurl(browser, expURL)
    result = false
    if(browser.url.eql?(expURL))
      result=true
    end

    return result
  end

end
