package linker

class RatingTagLib {

    def showRating = { attrs ->
		def cnt = attrs.rating
		out << '<span>'
		while (cnt--) {
			out << '<i class="icon-star"></i>'
		}
		out << '</span>'
	}

}
