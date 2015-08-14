module ApplicationHelper

# Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "On Digital Healthcare"
    if page_title.empty?
      base_title
    else
      "#{base_title}: #{page_title}"
    end
  end

  def page_description(page_description)
    base_description = "Jonathan Libov of USV and Angela Tran Kingyens of Version One Ventures on digital healthcare"
    if page_description.empty?
      base_description
    else
      base_description + "In this section we look at #{page_description}"
    end
  end

  def canonical_url(url)
    base_url = "http://ondigitalhealthcare.com"
    if url.empty?
      base_url
    else
      "#{url}"
    end
  end

  def og_image(og_image)
    base_og_image = "assets/og_image.png"
    if og_image.empty?
      base_og_image
    else
      "#{og_image}"
    end
  end  

  def og_description(og_description)
    base_og_description = "Jonathan Libov of USV and Angela Tran Kingyens of Version One Ventures on digital healthcare"
    if og_description.empty?
      base_og_description
    else
      base_og_description + "In this section we look at #{og_description}"
    end
  end  

  def og_title(title)
    base_og_title = "On Digital Healthcare"
    if title.empty?
      base_og_title
    else
      "#{title}"
    end
  end  

  def og_type(og_type)
    base_og_type = "blog"
    if og_type.empty?
      base_og_type
    else
      "#{og_type}"
    end
  end  

end
