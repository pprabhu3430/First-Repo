<cfcomponent hint="Handles Exchanges with Databases" extends="CountryController" output="false">

	<cffunction name="fselCountriesPackage" access="package" returntype="query" hint="return a list of countries">
		<cfargument name="CountryName" type="string" required="false" hint="start filter for country name">
		<cfset var selCountries="">

		<cfquery name="selCountries" datasource="#Application.DB.DataSource()#">
			SELECT Country_ID,JavaLocale,Coun
				WHERE
					C
		</cfquery>

		<cfreturn selCountries>
	</cffunction>

</cfcomponent>