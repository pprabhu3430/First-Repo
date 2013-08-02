<cfcomponent hint="controls access and manipulation of country data" output="false">

	<!--- get a query of valid countries in system (bsoylu 2/12/2008) --->
	<cffunction name="fselCountries" access="public" returntype="query" hint="return a list of countries">
		<cfargument name="CountryName" type="string" required="false" hint="start filter for country name">

		<cfset var selReturn="">
		<cfinvoke component="CountryData" argumentcollection="#Arguments#" method="fselCountriesPackage" returnvariable="selReturn">
		<cfreturn selReturn>
	</cffunction>

</cfcomponent>