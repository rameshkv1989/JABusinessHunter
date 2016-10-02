<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="search_wrapper">
	<form class="form-search" action="search.do" method="get">
		<button type="submit">
			<img src="images/scrollsearch_icon.png" align="absmiddle">
		</button>
		<input name="searchValue" id="searchValue" class="input-medium search-query" 
			 type="text" placeholder="search" required>
	</form>
</div>