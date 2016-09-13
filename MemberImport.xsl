<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

	<xsl:param name="messageid"/>
	<xsl:param name="xrefMerchantId" />
	<xsl:param name="providerCode" />
	<xsl:param name="projectCode" />
	
<message>
	<head>
		<messageID><xsl:value-of select="$messageid"/></messageID>
		<date/>
		<messageType>MemberImport</messageType>
		<sender>
			<systemID><xsl:value-of select="$providerCode"/></systemID>
			<companyID/>
			<replyToQ/>
		</sender>
		<recipient>
			<systemid/>
			<companyID><xsl:value-of select="$xrefMerchantId"/></companyID>
			<ReplyToQ/>
		</recipient>
	</head>
	<body>
		<member>
			<dateOfBirth/>
			<username><xsl:value-of select="UserName"/></username>
			<email><xsl:value-of select="Email"/></email>
			<gender/>
			<locale/>
			<memberID/>
			<memberNumber><xsl:value-of select="MemberNumber"/></memberNumber>
			<nameFirst><xsl:value-of select="NameFirst"/></nameFirst>
			<nameLast><xsl:value-of select="NameLast"/></nameLast>
			<nameMiddle/>
			<organization></organization>
			<projectCode><xsl:value-of select="$projectCode"/></projectCode>
			<typeCode>Employee</typeCode>
			<password><xsl:value-of select="Password"/></password>
			<budgetBalance><xsl:value-of select="Balance"/></budgetBalance>
			<priceListCode><xsl:value-of select="CompanyID"/></priceListCode>
			<originCode>import</originCode>
			<status>
				<xsl:choose>
						<xsl:when test="Status = 'A'">
							<statusCode>Active</statusCode>
						</xsl:when>
						<xsl:otherwise>
							<statusCode>Inactive</statusCode>
						</xsl:otherwise>
				</xsl:choose>
			</status>
			<addresses>
				<address>
					<address1><xsl:value-of select="AddressLine1"/></address1>
					<address2><xsl:value-of select="AddressLine2"/></address2>
					<address3/>
					<addressID/>
					<addressName>Import</addressName>
					<addressObjTypeCode>both</addressObjTypeCode>
					<addressTypeCode>Import</addressTypeCode>
					<city><xsl:value-of select="City"/></city>
					<stateProvinceCode><xsl:value-of select="StateProvinceCode"/></stateProvinceCode>
					<countryCode><xsl:value-of select="CountryCode"/></countryCode>
					<dtResidential/>
					<email><xsl:value-of select="Email"/></email>
					<fax/>
					<isResidential>0</isResidential>
					<nameMiddle/>
					<nameFirst><xsl:value-of select="NameFirst"/></nameFirst>
					<nameLast><xsl:value-of select="NameLast"/></nameLast>
					<organization/>
					<phoneCell/>
					<phoneHome/>
					<phoneOther/>
					<phonePager/>
					<phoneWork></phoneWork>
					<phoneWorkExt/>
					<postalCode><xsl:value-of select="PostalCode"/></postalCode>
					<primaryForType>1</primaryForType>
					<salutation/>
					<stateProvinceCode><xsl:value-of select="StateProvinceCode"/></stateProvinceCode>
					<status>
						<xsl:choose>
								<xsl:when test="Status = 'A'">
									<statusCode>Active</statusCode>
								</xsl:when>
								<xsl:otherwise>
									<statusCode>Inactive</statusCode>
								</xsl:otherwise>
						</xsl:choose>
					</status>
				</address>
			</addresses>
			<groups>
				<group>
					<groupCode><xsl:value-of select="CompanyID"/></groupCode>
				</group>
			</groups>
			<dynamicfields>
				<DYNAMICFIELD>
					<DYNAMICFIELDCODE>BTADF</DYNAMICFIELDCODE>
					<DYNAMICFIELDVALUE>Value3</DYNAMICFIELDVALUE>
				</DYNAMICFIELD>
			</dynamicfields>
		</member>
	</body>
</message>



	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="message/head/sender/systemid">
		<SystemID>
			<xsl:value-of select="." />
		</SystemID>
		<CompanyID />
		<ReplyToQ />
	</xsl:template>
	<xsl:template match="message/head/recipient/companyid">
		<SystemID />
		<CompanyID>
			<xsl:value-of select="." />
		</CompanyID>
		<ReplyToQ/>
	</xsl:template>
	<xsl:template match="/message/body/Catalogimport/catalogitem">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
		<catalogTaxClassCode/>
		<catalogtypecode/>
		<Locales/>
	</xsl:template>
</xsl:stylesheet>