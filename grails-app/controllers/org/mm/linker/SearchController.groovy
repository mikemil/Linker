package org.mm.linker

class SearchCommand implements Serializable {

	String user
	String tags
	Integer rating
	
}


// problems searching when multiple criteria passed - check how I am creating the criteria - 
// do I need to add an AND clause or something?

class SearchController {

	def search() {
		if ((!params.user) && (!params.tag) && (!params.rating)) {
			//flash.message = 'No search parameters provided!'
			return[:]
		}
		println "search params: $params"
		def criteria = Link.createCriteria()
		def resultList = criteria.list (sort:params.sort, order: params.order ) {
			params.max = Math.min(params.max ? params.int('max') : 10, 100)
			maxResults(params?.max.toInteger())
			params.offset = params.offset ? params.int('offset') : 0
			firstResult(params?.offset.toInteger())
			if (params.user)
				eq('user', params.user)
			if (params.rating)
				eq('rating', Integer.valueOf(params.rating))
			if (params.tag) {
				eq('tags', params.tag)
			}
		}
		println 'resultList='+resultList.size()
		def countCriteria = Link.createCriteria() 
		def total = countCriteria.count{
			if (params.user)
				eq('user', params.user)
			if (params.rating)
				eq('rating', Integer.valueOf(params.rating))
			if (params.tag) {
				eq('tags', params.tag)
			}
		}
		println 'total='+total
		if (resultList.size() == 0) {
			flash.message = 'No results found!'
		} else {
			println resultList
		}
		[linkInstanceList: resultList, linkInstanceTotal: total, user:params.user, tag:params.tag, rating:params.rating]
	}
	
//	def searchOld() {
//		if ((!params.user) && (!params.tags) && (!params.rating))
//			return[:]
//		println "search params: $params"
//		def countQuery = Link.where {
//			if (params.user)
//				eq('user', params.user)
//			if (params.rating)
//				eq('rating', Integer.valueOf(params.rating))
//			if (params.tags) {
//				eq('tags', params.tags)
//			}
//		}
//		def resultList = countQuery.findAll(max:params?.max.toInteger(), offset:params?.offset.toInteger(), order: params?.order, sort:params?.sort )
//		def total = countQuery.count()
//		[linkInstanceList: resultList, linkInstanceTotal: total]
//	}
//	
//	
//	def searchOlder() {
//		if ((!params.user) && (!params.tags) && (!params.rating))
//			return[:]
//		
//		println "search params: $params"
//		def criteria = Link.createCriteria()
//		def resultList = criteria.list {
//			maxResults(params?.max.toInteger())
//			firstResult(params?.offset.toInteger())
//			//order('lastUpdated', "desc")
//			if (params.user)
//				eq('user', params.user)
//			if (params.rating)
//				eq('rating', Integer.valueOf(params.rating))
//			if (params.tags) {
//				eq('tags', params.tags)
//			}
//		}
//		//TODO need to run basically the same search - but get total count for pagination!
//		println 'count: '+resultList.size()
//		[linkInstanceList: resultList, linkInstanceTotal: resultList.size()]
//	
//	}
}

