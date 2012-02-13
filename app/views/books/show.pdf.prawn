prawn_document() do |pdf|
  	
	pdf.bounding_box [20, 730], :width => 500 do 
			
		pdf.stroke_bounds 
		pdf.font_size 14
		pdf.move_down(10) 
		pdf.text "#{@book.title}"
		pdf.text "#{@book.author}"
		
		pdf.font "#{Prawn::BASEDIR}/data/fonts/TibMachUni-1.901b.ttf"
		pdf.text raw @glyphs
	end
	

		
	# Registering a single TTF font 
		#	pdf.font_families.update("TibMachUni" => {:normal => "#{Prawn::BASEDIR}/data/fonts/TibMachUni-1.901b.ttf" })
		#	pdf.font("TibMachUni") do 
	 		# write some tibetan
		#	end
	
	

end
