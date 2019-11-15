+++
# A Demo section created with the Blank widget.
# Any elements can be added in the body: https://sourcethemes.com/academic/docs/writing-markdown-latex/
# Add more sections by duplicating this file and customizing to your requirements.

widget = "blank"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 85  # Order that this section will appear.

title = "Hands-On Activity"
subtitle = ""

[design]
  # Choose how many columns the section has. Valid values: 1 or 2.
  columns = "1"

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.

  # Background color.
  # color = "navy"
  
  # Background gradient.
  # gradient_start = "DeepSkyBlue"
  # gradient_end = "SkyBlue"
  
  # Background image.
  # image = "headers/bubbles-wide.jpg"  # Name of image in `static/img/`.
  #image_darken = 0.6  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.
  #image_size = "cover"  #  Options are `cover` (default), `contain`, or `actual` size.
  #image_position = "center"  # Options include `left`, `center` (default), or `right`.
  #image_parallax = true  # Use a fun parallax-like fixed background effect? true/false

  # Text color (true=light or false=dark).
  text_color_light = true

[design.spacing]
  # Customize the section spacing. Order is top, right, bottom, left.
  padding = ["20px", "0", "20px", "0"]

[advanced]
 # Custom CSS. 
 css_style = ""
 
 # CSS class.
 css_class = ""
+++
{{% alert note %}}{{% staticref "files/reproduce_session5.zip" %}}**Download the file for the hands-on exercise**{{% /staticref %}} {{% /alert %}}

In this hands-on activity we will go through setting up an [OSF](https://osf.io) account (if you do not already have one), upload materials to OSF, documenting them with metadata and create a very brief research compendium that describes the data set to upload to OSF to create a complete research compendium and repository for sharing.

The downloadable file, {{% staticref "files/reproduce_session5.zip" %}}**reproduce_session5.zip**{{% /staticref %}}, contains five files.
These files will be used in a hands-on exercise where you create your own research compendium using these files, or your own files if you wish.
The downloadable zip file includes the following files that can be used if you do not have your own:

* example-manuscript.docx - An example MS Word document manuscript

* example-manuscript.Rmd - An example RMarkdown file to generate an MS Word document

* example-script.R - An example R script that imports data, munges it and creates a graph

* pop_density_change.png - An example figure used in the example manuscript

* population_density_per_square_km.csv - Population density data, Source: UN World Population Prospects through [www.gapminder.org](https://www.gapminder.org)
