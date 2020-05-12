<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns="http://www.isotc211.org/2005/gmi"
				xmlns:gco="http://www.isotc211.org/2005/gco"
                xmlns:gmi="http://www.isotc211.org/2005/gmi"
                xmlns:gmd="http://www.isotc211.org/2005/gmd"
				xmlns:gml="http://www.opengis.net/gml"
				xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- ============================================================================= -->



	<!-- ============================================================================= -->

	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
	
	<!-- ============================================================================= -->

	<xsl:template match="/">
<!--		<DS_DataSet>
			<has> -->
				<xsl:apply-templates/>
<!--			</has>
		</DS_DataSet> -->
	</xsl:template>

	<!-- ============================================================================= -->

	<xsl:template match="Metadata">
		<MI_Metadata xsi:schemaLocation="http://www.isotc211.org/2005/gmi http://www.isotc211.org/2005/gmi/gmi.xsd">

			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

			<xsl:for-each select="mdFileID">
				<fileIdentifier>
					<gco:CharacterString><xsl:value-of select="."/></gco:CharacterString>
				</fileIdentifier>
			</xsl:for-each>

			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

			<xsl:for-each select="mdLang">
				<language>
					<LanguageCode codeList="" codeListValue="{languageCode/@value}"></LanguageCode>
				</language>
			</xsl:for-each>

			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

			<xsl:for-each select="mdChar">
				<characterSet>
					<MD_CharacterSetCode codeList="./resources/codeList.xml#MD_CharacterSetCode" codeListValue="{CharSetCd/@value}" />
				</characterSet>
			</xsl:for-each>

			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

			<xsl:for-each select="mdParentID">
				<parentIdentifier>
					<gco:CharacterString><xsl:value-of select="."/></gco:CharacterString>
				</parentIdentifier>
			</xsl:for-each>

			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

			<xsl:for-each select="mdHrLv">
				<hierarchyLevel>
					<MD_ScopeCode codeList="./resources/codeList.xml#MD_ScopeCode" codeListValue="{ScopeCd/@value}" />
				</hierarchyLevel>
			</xsl:for-each>

			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

			<xsl:for-each select="mdHrLvName">
				<hierarchyLevelName>
					<gco:CharacterString><xsl:value-of select="."/></gco:CharacterString>
				</hierarchyLevelName>
			</xsl:for-each>

			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

			<xsl:for-each select="mdContact">
				<contact>
					<CI_ResponsibleParty>
						<xsl:apply-templates select="." mode="RespParty"/>
					</CI_ResponsibleParty>
				</contact>
			</xsl:for-each>

			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
			<!-- Informacion del archivo de metadatos Original - -->
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
			

			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
			<!-- Datos del Metadato - -->
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->						


	<gmd:metadataStandardName>
		<gco:CharacterString>PIDERA - ISO 19115:2003/19139</gco:CharacterString>
	</gmd:metadataStandardName>

	<gmd:metadataStandardVersion>
		<gco:CharacterString>1.0</gco:CharacterString>
	</gmd:metadataStandardVersion>


			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
			<!-- Representancion Espacial - -->
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->			


	<gmd:spatialRepresentationInfo>
		<gmd:MD_GridSpatialRepresentation>
			<gmd:numberOfDimensions>
				<gco:Integer>2</gco:Integer>
			</gmd:numberOfDimensions>
			<gmd:axisDimensionProperties>
				<gmd:MD_Dimension>
					<gmd:dimensionName>
						<gmd:MD_DimensionNameTypeCode codeListValue="row" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_DimensionNameTypeCode"/>
					</gmd:dimensionName>

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
						
<xsl:for-each select="REFLECTIVE_LINES">
					<gmd:dimensionSize>
						<gco:Integer><xsl:value-of select="."/></gco:Integer>
					</gmd:dimensionSize>
	</xsl:for-each>

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
	
					<gmd:resolution>
            <gco:Measure uom="Meter">30.000000</gco:Measure>
					</gmd:resolution>
				</gmd:MD_Dimension>
			</gmd:axisDimensionProperties>
			<gmd:axisDimensionProperties>
				<gmd:MD_Dimension>
					<gmd:dimensionName>
						<gmd:MD_DimensionNameTypeCode codeListValue="column" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_DimensionNameTypeCode"/>
					</gmd:dimensionName>

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
				
<xsl:for-each select="REFLECTIVE_SAMPLES">
					<gmd:dimensionSize>
						<gco:Integer><xsl:value-of select="."/></gco:Integer>
					</gmd:dimensionSize>
	</xsl:for-each>

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
		
					<gmd:resolution>
            <gco:Measure uom="Meter">30.000000</gco:Measure>
					</gmd:resolution>
				</gmd:MD_Dimension>
			</gmd:axisDimensionProperties>
			<gmd:cellGeometry>
				<gmd:MD_CellGeometryCode codeListValue="area" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_CellGeometryCode"/>
			</gmd:cellGeometry>
			<gmd:transformationParameterAvailability>
				<gco:Boolean>false</gco:Boolean>
			</gmd:transformationParameterAvailability>
		</gmd:MD_GridSpatialRepresentation>
		<gmd:MD_Georeferenceable>
			<gmd:numberOfDimensions>
				<gco:Integer>2</gco:Integer>
			</gmd:numberOfDimensions>
			<gmd:axisDimensionProperties>
				<gmd:MD_Dimension>
					<gmd:dimensionName>
						<gmd:MD_DimensionNameTypeCode codeListValue="track" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_DimensionNameTypeCode"/>
					</gmd:dimensionName>

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
	
	<xsl:for-each select="WRS_PATH">
					<gmd:dimensionSize>
						<gco:Integer><xsl:value-of select="."/></gco:Integer>
					</gmd:dimensionSize>
	</xsl:for-each>

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
	
				</gmd:MD_Dimension>
			</gmd:axisDimensionProperties>
			<gmd:axisDimensionProperties>
				<gmd:MD_Dimension>
					<gmd:dimensionName>
						<gmd:MD_DimensionNameTypeCode codeListValue="crossTrack" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_DimensionNameTypeCode"/>
					</gmd:dimensionName>

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
	
	<xsl:for-each select="WRS_ROW">	
					<gmd:dimensionSize>
						<gco:Integer><xsl:value-of select="."/></gco:Integer>
					</gmd:dimensionSize>
</xsl:for-each>	

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
	

				</gmd:MD_Dimension>
			</gmd:axisDimensionProperties>
			<gmd:orientationParameterDescription >
				<gco:CharacterString>Descendente</gco:CharacterString>
			</gmd:orientationParameterDescription>
		</gmd:MD_Georeferenceable>
		<gmd:MD_Georectified>
			<cornerPoints>
				<gml:Point gml:id="ID0UL">		
		<xsl:for-each select="CORNER_UL">
					<gml:pos><xsl:value-of select="."/></gml:pos>									
		</xsl:for-each>						
				</gml:Point>
			</cornerPoints>
			<cornerPoints>
				<gml:Point gml:id="ID0UR">
		<xsl:for-each select="CORNER_UR">
					<gml:pos><xsl:value-of select="."/></gml:pos>									
		</xsl:for-each>			
				</gml:Point>
			</cornerPoints>
			<cornerPoints>
				<gml:Point gml:id="ID0LL">
		<xsl:for-each select="CORNER_LL">
					<gml:pos><xsl:value-of select="."/></gml:pos>									
		</xsl:for-each>						
				</gml:Point>
			</cornerPoints>
			<cornerPoints>
				<gml:Point gml:id="ID0LR">
		<xsl:for-each select="CORNER_LR">
					<gml:pos><xsl:value-of select="."/></gml:pos>									
		</xsl:for-each>						
				</gml:Point>
			</cornerPoints>			
		</gmd:MD_Georectified>
	</gmd:spatialRepresentationInfo>
	<gmd:referenceSystemInfo>
		<gmd:MD_ReferenceSystem>
			<gmd:referenceSystemIdentifier>

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
	
	<xsl:for-each select="UTM_ZONE">
				<gmd:RS_Identifier>
					<gmd:code>
						<gco:CharacterString><xsl:value-of select= "concat('WGS 84 / UTM zone ', translate(normalize-space(.),' ','') ,'S (EPSG:327', translate(normalize-space(.),' ','') , ')' )"/></gco:CharacterString>
					</gmd:code>
					<gmd:codeSpace>
						<gco:CharacterString>EPSG</gco:CharacterString>
					</gmd:codeSpace>
					<gmd:version>
						<gco:CharacterString>7.9</gco:CharacterString>
					</gmd:version>
				</gmd:RS_Identifier>
</xsl:for-each>	
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

			</gmd:referenceSystemIdentifier>
		</gmd:MD_ReferenceSystem>
	</gmd:referenceSystemInfo>
	
	
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
		<!-- Identificacion de la Informacion  - -->
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->			
	
	
	<gmd:identificationInfo>
		<gmd:MD_DataIdentification>

			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
			<!-- Miniatura de la imagen - -->
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->			
			
	
			<gmd:graphicOverview xmlns:srv="http://www.isotc211.org/2005/srv">

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
<xsl:for-each select="LANDSAT_SCENE_ID">	
				<gmd:MD_BrowseGraphic>
					<gmd:fileName>
						<gco:CharacterString><xsl:value-of select="concat('https://metadatos.conae.gov.ar/datastore/l8/',translate(normalize-space(.),' ',''),'.jpg')"/></gco:CharacterString>
					</gmd:fileName>
					<gmd:fileDescription>
						<gco:CharacterString>large_thumbnail</gco:CharacterString>
					</gmd:fileDescription>
					<gmd:fileType>
						<gco:CharacterString>jpg</gco:CharacterString>
					</gmd:fileType>
				</gmd:MD_BrowseGraphic>
</xsl:for-each>	
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
	
			</gmd:graphicOverview>
			
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
					
			<gmd:citation>
				<gmd:CI_Citation>

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->			
	
<xsl:for-each select="LANDSAT_SCENE_ID">
					<gmd:title>
						<gco:CharacterString><xsl:value-of select="."/></gco:CharacterString>
					</gmd:title>
</xsl:for-each>	

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->			


					<gmd:date>
						<gmd:CI_Date>

	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->			
<xsl:for-each select="FILE_DATE">
							<gmd:date>
								<gco:DateTime><xsl:value-of select="."/></gco:DateTime>
							</gmd:date>
</xsl:for-each>	


<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->			
							<gmd:dateType>
								<gmd:CI_DateTypeCode codeListValue="creation" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_DateTypeCode"/>
							</gmd:dateType>
						</gmd:CI_Date>
					</gmd:date>
					<gmd:edition >
						<gco:CharacterString>Efemerides Satelitales</gco:CharacterString>
					</gmd:edition>
				</gmd:CI_Citation>
			</gmd:citation>
			<gmd:abstract>
				<gco:CharacterString>Imagen Satelital Multiesprectral de la serie Landsat (OLI)</gco:CharacterString>
			</gmd:abstract>
			<gmd:status>
				<gmd:MD_ProgressCode codeListValue="completed" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_ProgressCode"/>
			</gmd:status>
			<gmd:pointOfContact>
				<gmd:CI_ResponsibleParty>
					<gmd:individualName >
						<gco:CharacterString>CUSS-Planificación</gco:CharacterString>
					</gmd:individualName>
					<gmd:organisationName>
						<gco:CharacterString>CONAE</gco:CharacterString>
					</gmd:organisationName>
					<gmd:positionName >
						<gco:CharacterString>Tecnico</gco:CharacterString>
					</gmd:positionName>
					<gmd:contactInfo>
						<gmd:CI_Contact>
							<gmd:phone>
								<gmd:CI_Telephone>
									<gmd:voice >
										<gco:CharacterString>+543547400000 ext 1555</gco:CharacterString>
									</gmd:voice>
									<gmd:facsimile>
										<gco:CharacterString/>
									</gmd:facsimile>
								</gmd:CI_Telephone>
							</gmd:phone>
							<gmd:address>
								<gmd:CI_Address>
									<gmd:deliveryPoint>
										<gco:CharacterString>CETT</gco:CharacterString>
									</gmd:deliveryPoint>
									<gmd:city>
										<gco:CharacterString>Alta Gracia</gco:CharacterString>
									</gmd:city>
									<gmd:administrativeArea>
										<gco:CharacterString/>
									</gmd:administrativeArea>
									<gmd:postalCode  >
										<gco:CharacterString>5186</gco:CharacterString>
									</gmd:postalCode>
									<gmd:country  >
										<gco:CharacterString>Argentina</gco:CharacterString>
									</gmd:country>
									<gmd:electronicMailAddress  >
										<gco:CharacterString>cuss@conae.gov.ar</gco:CharacterString>
									</gmd:electronicMailAddress>
								</gmd:CI_Address>
							</gmd:address>
						</gmd:CI_Contact>
					</gmd:contactInfo>
					<gmd:role>
						<gmd:CI_RoleCode codeListValue="originator" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode"/>
					</gmd:role>
				</gmd:CI_ResponsibleParty>
			</gmd:pointOfContact>
			<gmd:pointOfContact>
				<gmd:CI_ResponsibleParty>
					<gmd:individualName  >
						<gco:CharacterString>DAyE</gco:CharacterString>
					</gmd:individualName>
					<gmd:organisationName  >
						<gco:CharacterString>CONAE</gco:CharacterString>
					</gmd:organisationName>
					<gmd:positionName  >
						<gco:CharacterString>Tecnico</gco:CharacterString>
					</gmd:positionName>
					<gmd:contactInfo>
						<gmd:CI_Contact>
							<gmd:phone>
								<gmd:CI_Telephone>
									<gmd:voice  >
										<gco:CharacterString>+541143310074 ext 5770</gco:CharacterString>
									</gmd:voice>
									<gmd:facsimile  >
										<gco:CharacterString/>
									</gmd:facsimile>
								</gmd:CI_Telephone>
							</gmd:phone>
							<gmd:address>
								<gmd:CI_Address>
									<gmd:deliveryPoint  >
										<gco:CharacterString>Av Paseo Colon 751</gco:CharacterString>
									</gmd:deliveryPoint>
									<gmd:city  >
										<gco:CharacterString>CABA</gco:CharacterString>
									</gmd:city>
									<gmd:administrativeArea  >
										<gco:CharacterString>DAyE</gco:CharacterString>
									</gmd:administrativeArea>
									<gmd:postalCode  >
										<gco:CharacterString>1046</gco:CharacterString>
									</gmd:postalCode>
									<gmd:country  >
										<gco:CharacterString>Argentina</gco:CharacterString>
									</gmd:country>
									<gmd:electronicMailAddress  >
										<gco:CharacterString>metadatos@conae.gov.ar</gco:CharacterString>
									</gmd:electronicMailAddress>
								</gmd:CI_Address>
							</gmd:address>
						</gmd:CI_Contact>
					</gmd:contactInfo>
					<gmd:role>
						<gmd:CI_RoleCode codeListValue="publisher" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode"/>
					</gmd:role>
				</gmd:CI_ResponsibleParty>
			</gmd:pointOfContact>
			<gmd:resourceMaintenance>
				<gmd:MD_MaintenanceInformation>
					<gmd:maintenanceAndUpdateFrequency>
						<gmd:MD_MaintenanceFrequencyCode codeListValue="asNeeded" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_MaintenanceFrequencyCode"/>
					</gmd:maintenanceAndUpdateFrequency>
				</gmd:MD_MaintenanceInformation>
			</gmd:resourceMaintenance>
			<gmd:topicCategory>
				<gmd:MD_TopicCategoryCode>environment</gmd:MD_TopicCategoryCode>
			</gmd:topicCategory>
			<gmd:descriptiveKeywords>
				<gmd:MD_Keywords>
					<gmd:keyword  >
						<gco:CharacterString>Landsat, OLI, Satelite, Sensores Remotos</gco:CharacterString>
					</gmd:keyword>
					<gmd:type>
						<gmd:MD_KeywordTypeCode codeListValue="theme" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_KeywordTypeCode"/>
					</gmd:type>
				</gmd:MD_Keywords>
			</gmd:descriptiveKeywords>
			<gmd:resourceConstraints>
				<gmd:MD_LegalConstraints>
					<gmd:accessConstraints>
						<gmd:MD_RestrictionCode codeListValue="copyright" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_RestrictionCode"/>
					</gmd:accessConstraints>
					<gmd:useConstraints>
						<gmd:MD_RestrictionCode codeListValue="copyright" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_RestrictionCode"/>
					</gmd:useConstraints>
					<gmd:otherConstraints  >
						<gco:CharacterString>Libre Publicación</gco:CharacterString>
					</gmd:otherConstraints>
				</gmd:MD_LegalConstraints>
			</gmd:resourceConstraints>
			<gmd:spatialRepresentationType>
				<gmd:MD_SpatialRepresentationTypeCode codeListValue="grid" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_SpatialRepresentationTypeCode"/>
			</gmd:spatialRepresentationType>
			<gmd:spatialResolution>
				<gmd:MD_Resolution>
					<gmd:equivalentScale>
						<gmd:MD_RepresentativeFraction>
							<gmd:denominator>
								<gco:Integer>50000</gco:Integer>
							</gmd:denominator>
						</gmd:MD_RepresentativeFraction>
					</gmd:equivalentScale>
				</gmd:MD_Resolution>
			</gmd:spatialResolution>
			<gmd:language>
				<gmd:LanguageCode codeList="http://www.loc.gov/standards/iso639-2/" codeListValue="spa"/>
			</gmd:language>
			<gmd:characterSet>
				<gmd:MD_CharacterSetCode codeListValue="utf8" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_CharacterSetCode"/>
			</gmd:characterSet>
			<gmd:extent>
				<gmd:EX_Extent>
					<gmd:temporalElement>
						<gmd:EX_TemporalExtent>
							<gmd:extent>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
<xsl:for-each select="DATE_INSTANT">
                <gml:TimeInstant gml:id="ID0EAG">
                  <gml:timePosition><xsl:value-of select="."/></gml:timePosition>
                </gml:TimeInstant>
</xsl:for-each>	


<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

							</gmd:extent>
						</gmd:EX_TemporalExtent>
					</gmd:temporalElement>
				</gmd:EX_Extent>
			</gmd:extent>
			<gmd:extent>
				<gmd:EX_Extent>
					<gmd:geographicElement>
						<gmd:EX_GeographicBoundingBox>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

<xsl:for-each select="CORNER_UR_LON_PRODUCT">
							<gmd:westBoundLongitude>
								<gco:Decimal><xsl:value-of select="."/></gco:Decimal>
							</gmd:westBoundLongitude>
</xsl:for-each>								
							
							
<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->									
<xsl:for-each select="CORNER_UL_LON_PRODUCT">							
							<gmd:eastBoundLongitude>
								<gco:Decimal><xsl:value-of select="."/></gco:Decimal>
							</gmd:eastBoundLongitude>
</xsl:for-each>								


<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->									

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->									
<xsl:for-each select="CORNER_LR_LAT_PRODUCT">							
							<gmd:southBoundLatitude>
								<gco:Decimal><xsl:value-of select="."/></gco:Decimal>
							</gmd:southBoundLatitude>
</xsl:for-each>															

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
<xsl:for-each select="CORNER_UL_LAT_PRODUCT">							
							<gmd:northBoundLatitude>
								<gco:Decimal><xsl:value-of select="."/></gco:Decimal>
							</gmd:northBoundLatitude>
</xsl:for-each>								

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

						</gmd:EX_GeographicBoundingBox>
					</gmd:geographicElement>
				</gmd:EX_Extent>
			</gmd:extent>
			<gmd:supplementalInformation>
				<gco:CharacterString>Imagen Satelital Multiexprectral de la serie Landsat (OLI)</gco:CharacterString>
			</gmd:supplementalInformation>
		</gmd:MD_DataIdentification>
	</gmd:identificationInfo>
	
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
		<!-- Información del Contenido  - -->
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->				
	
	<gmd:contentInfo>
		<gmd:MD_ImageDescription>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

<xsl:for-each select="SUN_ELEVATION">							
			<gmd:illuminationElevationAngle>
				<gco:Real><xsl:value-of select="."/></gco:Real>
			</gmd:illuminationElevationAngle>
</xsl:for-each>											
	
			
<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->					
			
<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

<xsl:for-each select="SUN_AZIMUTH">							
			<gmd:illuminationAzimuthAngle>
				<gco:Real><xsl:value-of select="."/></gco:Real>
			</gmd:illuminationAzimuthAngle>
</xsl:for-each>											

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

			<gmd:imagingCondition>
				<gmd:MD_ImagingConditionCode codeListValue="normal" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_ImagingConditionCode"/>
			</gmd:imagingCondition>
			<gmd:imageQualityCode  >
				<gco:CharacterString>buena</gco:CharacterString>
			</gmd:imageQualityCode>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
<xsl:for-each select="CLOUD_COVER">							
			<gmd:cloudCoverPercentage>
				<gco:Real><xsl:value-of select="."/></gco:Real>
			</gmd:cloudCoverPercentage>
</xsl:for-each>											

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

			<gmd:processingLevelCode  >
				<gco:CharacterString>L2</gco:CharacterString>
			</gmd:processingLevelCode>
			<gmd:radiometricCalibrationDataAvailability>
				<gco:Boolean>true</gco:Boolean>
			</gmd:radiometricCalibrationDataAvailability>
			<gmd:cameraCalibrationInformationAvailability>
				<gco:Boolean>true</gco:Boolean>
			</gmd:cameraCalibrationInformationAvailability>
			<gmd:dimension>
				<gmd:MD_Band>
					<gmd:bitsPerValue>
						<gco:Integer>16</gco:Integer>
					</gmd:bitsPerValue>
				</gmd:MD_Band>
			</gmd:dimension>

		</gmd:MD_ImageDescription>
	</gmd:contentInfo>
	
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
		<!-- Informacion de Distribucion   - -->
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->				
	
	<gmd:distributionInfo>
		<gmd:MD_Distribution>
			<gmd:transferOptions>
				<gmd:MD_DigitalTransferOptions>
					<gmd:onLine>
						<gmd:CI_OnlineResource>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
<xsl:for-each select="LANDSAT_SCENE_ID">							
							<gmd:linkage>
								<gmd:URL><xsl:value-of select="concat('http://catalogos.conae.gov.ar/landsat8/find.aspx?idnasa=',translate(normalize-space(.),' ',''))"/></gmd:URL>
							</gmd:linkage>
</xsl:for-each>
	
<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

							<gmd:protocol>
								<gco:CharacterString>WWW:LINK-1.0-http--link</gco:CharacterString>
							</gmd:protocol>
							<gmd:name  >
								<gco:CharacterString>Recurso para Descargar</gco:CharacterString>
							</gmd:name>
							<gmd:description  >
								<gco:CharacterString/>
							</gmd:description>
						</gmd:CI_OnlineResource>
					</gmd:onLine>
					<gmd:onLine>
						<gmd:CI_OnlineResource>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
<xsl:for-each select="LANDSAT_SCENE_ID">							
							<gmd:linkage>
								<gmd:URL><xsl:value-of select="concat('https://metadatos.conae.gov.ar/datastore/l8/metadatasrc/',translate(normalize-space(.),' ',''),'_MTL.txt')"/></gmd:URL>
							</gmd:linkage>
</xsl:for-each>
	
<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

							<gmd:protocol>
								<gco:CharacterString>WWW:LINK-1.0-http--link</gco:CharacterString>
							</gmd:protocol>
							<gmd:name  >
								<gco:CharacterString>Metadato Original</gco:CharacterString>
							</gmd:name>
							<gmd:description  >
								<gco:CharacterString/>
							</gmd:description>
						</gmd:CI_OnlineResource>
					</gmd:onLine>
				</gmd:MD_DigitalTransferOptions>
			</gmd:transferOptions>
		</gmd:MD_Distribution>
	</gmd:distributionInfo>
	
		<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
		<!-- Informacion de Calidad - -->
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->			
	
	
	<gmd:dataQualityInfo>
		<gmd:DQ_DataQuality>
			<gmd:lineage>
				<gmd:LI_Lineage>
					<gmd:statement  >
						<gco:CharacterString/>
					</gmd:statement>
					<gmd:processStep>
						<gmi:LE_ProcessStep>
							<gmi:processingInformation>
								<gmi:LE_Processing>
									<gmi:softwareReference>
										<gmd:CI_Citation>
											<gmd:title  >
												<gco:CharacterString>2.4.0</gco:CharacterString>
											</gmd:title>
											<gmd:date>
												<gmd:CI_Date>
													<gmd:date>
														<gco:DateTime>2014-01-01</gco:DateTime>
													</gmd:date>
													<gmd:dateType>
														<gmd:CI_DateTypeCode codeListValue="creation" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_DateTypeCode"/>
													</gmd:dateType>
												</gmd:CI_Date>
											</gmd:date>
											<gmd:edition  >
												<gco:CharacterString>2.4.0</gco:CharacterString>
											</gmd:edition>
										</gmd:CI_Citation>
									</gmi:softwareReference>
									<gmi:procedureDescription  >
										<gco:CharacterString/>
									</gmi:procedureDescription>
									<gmi:algorithm>
										<gmi:LE_Algorithm>
											<gmd:Citation>
												<gmd:CI_Citation>
													<gmd:title  >
														<gco:CharacterString>Convolución Cúbica</gco:CharacterString>
													</gmd:title>
													<gmd:citedResponsibleParty>
														<gmd:CI_ResponsibleParty>
															<gmd:individualName  >
																<gco:CharacterString/>
															</gmd:individualName>
															<gmd:organisationName  >
																<gco:CharacterString/>
															</gmd:organisationName>
															<gmd:role>
																<gmd:CI_RoleCode codeListValue="originator" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode"/>
															</gmd:role>
														</gmd:CI_ResponsibleParty>
													</gmd:citedResponsibleParty>
												</gmd:CI_Citation>
											</gmd:Citation>
											<gmi:description>
												<gco:CharacterString>Algoritmo de Procesamiento</gco:CharacterString>
											</gmi:description>
										</gmi:LE_Algorithm>
									</gmi:algorithm>
								</gmi:LE_Processing>
							</gmi:processingInformation>
						</gmi:LE_ProcessStep>
					</gmd:processStep>
				</gmd:LI_Lineage>
			</gmd:lineage>
		</gmd:DQ_DataQuality>
	</gmd:dataQualityInfo>
	
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
		<!-- Informacion de Identificacion del Metadato - -->
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		

	<gmd:language>
		<gmd:LanguageCode codeList="http://www.loc.gov/standards/iso639-2/" codeListValue="spa"/>
	</gmd:language>
	<gmd:characterSet>
		<gmd:MD_CharacterSetCode codeListValue="utf8" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_CharacterSetCode"/>
	</gmd:characterSet>
	
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
		<!-- Informacion de Adquisicion de la Imagen - -->
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
	
	<gmi:acquisitionInformation>
		<gmi:MI_AcquisitionInformation>
			<gmi:operation>
				<gmi:MI_Operation>
					<gmd:citation>
						<gmd:CI_Citation>
							<gmd:title  >
								<gco:CharacterString>Landsat 8</gco:CharacterString>
							</gmd:title>
							<gmd:date>
								<gmd:CI_Date>
									<gmd:date>
										<gco:DateTime>2013-02-11</gco:DateTime>
									</gmd:date>
									<gmd:dateType>
										<gmd:CI_DateTypeCode codeListValue="creation" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_DateTypeCode"/>
									</gmd:dateType>
								</gmd:CI_Date>
							</gmd:date>
						</gmd:CI_Citation>
					</gmd:citation>
					<gmd:status>
						<gmd:MD_ProgressCode codeListValue="onGoing" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_ProgressCode"/>
					</gmd:status>
				</gmi:MI_Operation>
			</gmi:operation>
			<gmi:platform>
				<gmi:MI_Platform>
					<gmi:description  >
						<gco:CharacterString>COA</gco:CharacterString>
					</gmi:description>
					<gmi:sponsor>
						<gmd:CI_ResponsibleParty>
							<gmd:organisationName  >
								<gco:CharacterString>Nasa</gco:CharacterString>
							</gmd:organisationName>
							<gmd:role>
								<gmd:CI_RoleCode codeListValue="resourceProvider" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode"/>
							</gmd:role>
						</gmd:CI_ResponsibleParty>
					</gmi:sponsor>
					<gmi:instrument>
						<gmi:MI_Instrument>
							<gmd:identifier>
								<gmd:MD_Identifier>
									<gmd:code  >
										<gco:CharacterString>OLI</gco:CharacterString>
									</gmd:code>
								</gmd:MD_Identifier>
							</gmd:identifier>
							<gmd:type  >
								<gco:CharacterString>Optico</gco:CharacterString>
							</gmd:type>
						</gmi:MI_Instrument>
					</gmi:instrument>
				</gmi:MI_Platform>
			</gmi:platform>
		</gmi:MI_AcquisitionInformation>
	</gmi:acquisitionInformation>




			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
			<!-- - Acceso a los XSLT externos -->
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->



		</MI_Metadata>
	</xsl:template>
	
	<!-- ============================================================================= -->

</xsl:stylesheet>
