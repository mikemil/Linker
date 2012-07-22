package org.mm.linker

class Link {

	String urlLink
	String user
	String summary
	int rating
	Date dateCreated
	Date lastUpdated
	
	Set<String> tags
	
    static constraints = {
		urlLink( url:true)
		rating(range:1..5)
		summary(blank:false)
		user(blank:false)
    }
	
	String tagsToString() {
		if (tags)
		   (tags as Object[]).join(' ').toString()
		else  ' '
	}
}
