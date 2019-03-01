<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns="http://www.isotc211.org/2005/gmi"
				xmlns:gco="http://www.isotc211.org/2005/gco"
                xmlns:gmi="http://www.isotc211.org/2005/gmi"
                xmlns:gmd="http://www.isotc211.org/2005/gmd"
				xmlns:gml="http://www.opengis.net/gml"
				xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:gmx="http://www.isotc211.org/2005/gmx"
				xmlns:gfc="http://www.isotc211.org/2005/gfc">
	
	<!-- ============================================================================= -->
	
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

	 <!-- ============================================================================= -->

	<xsl:template match="Metadata">
		<gfc:FC_FeatureCatalogue xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:gmx="http://www.isotc211.org/2005/gmx" xmlns:gfc="http://www.isotc211.org/2005/gfc" uuid="2f293470-ffd2-455e-9b4d-aa7e3c2d7c26" xsi:schemaLocation="http://www.isotc211.org/2005/gfc https://www.isotc211.org/2005/gfc/gfc.xsd"></gfc:FC_FeatureCatalogue>
		
		<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
			<gmx:name>
				<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Proceso"/></gco:CharacterString>
			</gmx:name>
		<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
			<gmx:scope>
				<gco:CharacterString/>
			</gmx:scope>
		<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
			<gmx:fieldOfApplication>
		<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
			<gco:CharacterString/>
		<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
			</gmx:fieldOfApplication>
		<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
			<gmx:versionNumber>
				<gco:CharacterString>1.0</gco:CharacterString>
			</gmx:versionNumber>
		<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
			<gmx:versionDate>
				<gco:DateTime xmlns:gml="http://www.opengis.net/gml">2019-02-25T09:33:00Z</gco:DateTime>
			</gmx:versionDate>
		<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
			<gfc:producer>
		<gmd:CI_ResponsibleParty>
			<gmd:individualName>
				<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Nombre_del_Entrevistado"/></gco:CharacterString>
			</gmd:individualName>
			<gmd:organisationName>
				<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Área"/></gco:CharacterString>
			</gmd:organisationName>
			<gmd:positionName>
				<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Posición"/></gco:CharacterString>
			</gmd:positionName>
			<gmd:contactInfo>
				<gmd:CI_Contact>
					<gmd:phone>
						<gmd:CI_Telephone>
							<gmd:voice>
								<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Telefono_contacto_primario"/></gco:CharacterString>
							</gmd:voice>
						</gmd:CI_Telephone>
					</gmd:phone>
					<gmd:address>
						<gmd:CI_Address>
							<gmd:city>
								<gco:CharacterString>CABA</gco:CharacterString>
							</gmd:city>
							<gmd:administrativeArea>
								<gco:CharacterString>CABA</gco:CharacterString>
							</gmd:administrativeArea>
							<gmd:postalCode>
								<gco:CharacterString>1107</gco:CharacterString>
							</gmd:postalCode>
							<gmd:country>
								<gco:CharacterString>Argentina</gco:CharacterString>
							</gmd:country>
							<gmd:electronicMailAddress>
								<gco:CharacterString><xsl:value-of select="ENTREVISTADO-E-mail_contacto_primario"/></gco:CharacterString>
							</gmd:electronicMailAddress>
						</gmd:CI_Address>
					</gmd:address>
				</gmd:CI_Contact>
			</gmd:contactInfo>
			<gmd:role>
				<gmd:CI_RoleCode codeListValue="pointOfContact" codeList="CI_RoleCode"/>
			</gmd:role>
		</gmd:CI_ResponsibleParty>
	</gfc:producer>
		<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
		
		<gfc:featureType>
			<gfc:FC_FeatureType>
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->					
				<gfc:typeName>
					<gco:LocalName><xsl:value-of select="Entidad"/></gco:LocalName>
				</gfc:typeName>			
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
				<gfc:definition>
					<gco:CharacterString/>
				</gfc:definition>
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
				<gfc:isAbstract>
					<gco:Boolean>false</gco:Boolean>
				</gfc:isAbstract>
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
				<gfc:aliases>
					<gco:LocalName>Local name</gco:LocalName>
				</gfc:aliases>	
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->	
			<gfc:featureCatalogue/>
			
				<gfc:constrainedBy>
					<gfc:FC_Constraint>
						<gfc:description>
							<gco:CharacterString><xsl:value-of select="APLICACIONES_QUE_LO_CONSUMEN-Nombre_de_la_aplicación"/></gco:CharacterString>
						</gfc:description>
					</gfc:FC_Constraint>
				</gfc:constrainedBy>
				
				<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->	
				<xsl:for-each select="Item">
							<gfc:carrierOfCharacteristics>
							<gfc:FC_FeatureAttribute>
								<gfc:constrainedBy>
									<gfc:FC_Constraint>
										<gfc:description>
											<gco:CharacterString>Permite Null:<xsl:value-of select="ATRIBUTOS-Acepta_Nulos"/></gco:CharacterString>
										</gfc:description>
									</gfc:FC_Constraint>
								</gfc:constrainedBy>
								<gfc:constrainedBy>
									<gfc:FC_Constraint>
										<gfc:description>
											<gmd:MD_RestrictionCode codeListValue="private" codeList="./resources/codeList.xml#MD_RestrictionCode"/>
										</gfc:description>
									</gfc:FC_Constraint>
								</gfc:constrainedBy>
								<gfc:memberName>
									<gco:LocalName><xsl:value-of select="ATRIBUTOS-Nombre"/></gco:LocalName>
								</gfc:memberName>
								<gfc:definition>
									<gco:CharacterString/>
								</gfc:definition>
								<gfc:cardinality/>
								<gfc:valueType>
									<gco:TypeName>
										<gco:aName>
											<gco:CharacterString><xsl:value-of select="ATRIBUTOS-Tipo_de_dato"/></gco:CharacterString>
										</gco:aName>
									</gco:TypeName>
								</gfc:valueType>
							</gfc:FC_FeatureAttribute>
						</gfc:carrierOfCharacteristics>
					</xsl:for-each>
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->	
			
			</gfc:FC_FeatureType>
		</gfc:featureType>
		
		<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->	
		
	</xsl:template>

</xsl:stylesheet>
