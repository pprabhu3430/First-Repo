<cfcomponent hint="Handles Exchanges with Databases" extends="CountryController" output="false">

	<cffunction name="fselCountriesPackage" access="package" returntype="query" hint="return a list of countries">
		<cfargument name="CountryName" type="string" required="false" hint="start filter for country name">
		<cfset var selCountries="">

		<cfquery name="selCountries" datasource="#Application.DB.DataSource()#">
			SELECT Country_ID,JavaLocale,CountryNameENG,
				   CountryName,CurrencyCode,isoCountryCode
			FROM Countries
			<cfif IsDefined("Arguments.CountryName")>
				WHERE
					CountryName LIKE <cfqueryparam cfsqltype="cf_sql_varchar" value="#Arguments.CountryName#%">
			</cfif>
			ORDER BY isoCountryCode
		</cfquery>

		<cfreturn selCountries>
	</cffunction>

</cfcomponent>