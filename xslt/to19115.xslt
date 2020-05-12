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
	
	<xsl:template match="Metadata">
		<mdb:MD_Metadata xmlns:mdb="http://standards.iso.org/iso/19115/-3/mdb/1.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cit="http://standards.iso.org/iso/19115/-3/cit/1.0" xmlns:gex="http://standards.iso.org/iso/19115/-3/gex/1.0" xmlns:lan="http://standards.iso.org/iso/19115/-3/lan/1.0" xmlns:mcc="http://standards.iso.org/iso/19115/-3/mcc/1.0" xmlns:mco="http://standards.iso.org/iso/19115/-3/mco/1.0" xmlns:mmi="http://standards.iso.org/iso/19115/-3/mmi/1.0" xmlns:mrd="http://standards.iso.org/iso/19115/-3/mrd/1.0" xmlns:mri="http://standards.iso.org/iso/19115/-3/mri/1.0" xmlns:mrl="http://standards.iso.org/iso/19115/-3/mrl/1.0" xmlns:mrs="http://standards.iso.org/iso/19115/-3/mrs/1.0" xmlns:mrc="http://standards.iso.org/iso/19115/-3/mrc/1.0" xmlns:gco="http://standards.iso.org/iso/19115/-3/gco/1.0" xmlns:gfc="http://standards.iso.org/iso/19110/gfc/1.1" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:cat="http://standards.iso.org/iso/19115/-3/cat/1.0" xmlns:geonet="http://www.fao.org/geonetwork" xsi:schemaLocation="http://standards.iso.org/iso/19115/-3/mdb/1.0 http://standards.iso.org/iso/19115/-3/mdb/1.0/mdb.xsd http://standards.iso.org/iso/19115/-3/mrs/1.0 http://standards.iso.org/iso/19115/-3/mrs/1.0/mrs.xsd http://standards.iso.org/iso/19115/-3/mmi/1.0 http://standards.iso.org/iso/19115/-3/mmi/1.0/mmi.xsd http://standards.iso.org/iso/19115/-3/mco/1.0 http://standards.iso.org/iso/19115/-3/mco/1.0/mco.xsd http://standards.iso.org/iso/19115/-3/mrc/1.0 http://standards.iso.org/iso/19115/-3/mrc/1.0/mrc.xsd http://standards.iso.org/iso/19110/gfc/1.1 http://standards.iso.org/iso/19110/gfc/1.1/gfc.xsd http://standards.iso.org/iso/19115/-3/mrd/1.0 http://standards.iso.org/iso/19115/-3/mrd/1.0/mrd.xsd http://standards.iso.org/iso/19115/-3/mrl/1.0 http://standards.iso.org/iso/19115/-3/mrl/1.0/mrl.xsd">
			
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->		
				
			<mdb:metadataIdentifier>
				<mcc:MD_Identifier>
					<mcc:code>
						<gco:CharacterString>93b2fcfa-c5d4-4541-8a3d-3da45359e007</gco:CharacterString>
					</mcc:code>
				</mcc:MD_Identifier>
			</mdb:metadataIdentifier>
			
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
			
			<mdb:defaultLocale>
				<lan:PT_Locale>
					<lan:language>
						<lan:LanguageCode codeList="codeListLocation#LanguageCode" codeListValue="spa">spa</lan:LanguageCode>
					</lan:language>
					<lan:characterEncoding>
						<lan:MD_CharacterSetCode codeList="codeListLocation#MD_CharacterSetCode" codeListValue="utf8">utf8</lan:MD_CharacterSetCode>
					</lan:characterEncoding>
				</lan:PT_Locale>
			</mdb:defaultLocale>
		
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
			
				<mdb:contact>
		<cit:CI_Responsibility>
			<cit:role>
				<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode" codeListValue="pointOfContact">pointOfContact</cit:CI_RoleCode>
			</cit:role>
			<cit:party>
				<cit:CI_Organisation>
					<cit:name>
						<gco:CharacterString>Ministerio de Educación e Innovación | Subsecretaría de Ciudad Inteligente | Dirección General de Ciencias de la Información</gco:CharacterString>
					</cit:name>
					<cit:contactInfo>
						<cit:CI_Contact>
							<cit:phone>
								<cit:CI_Telephone>
									<cit:number>
										<gco:CharacterString>5030-9200</gco:CharacterString>
									</cit:number>
									<cit:numberType>
										<cit:CI_TelephoneTypeCode codeList="codeListLocation#CI_TelephoneTypeCode" codeListValue="voice">voice</cit:CI_TelephoneTypeCode>
									</cit:numberType>
								</cit:CI_Telephone>
							</cit:phone>
							<cit:address>
								<cit:CI_Address>
									<cit:deliveryPoint>
										<gco:CharacterString>Av. Martìn Garcia 346, 2º piso</gco:CharacterString>
									</cit:deliveryPoint>
									<cit:city>
										<gco:CharacterString>CABA</gco:CharacterString>
									</cit:city>
									<cit:administrativeArea>
										<gco:CharacterString>CABA</gco:CharacterString>
									</cit:administrativeArea>
									<cit:postalCode>
										<gco:CharacterString>1107</gco:CharacterString>
									</cit:postalCode>
									<cit:country>
										<gco:CharacterString>Argentina</gco:CharacterString>
									</cit:country>
								</cit:CI_Address>
							</cit:address>
						</cit:CI_Contact>
					</cit:contactInfo>
				</cit:CI_Organisation>
			</cit:party>
		</cit:CI_Responsibility>
	</mdb:contact>
			
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->	
			
			<mdb:dateInfo>
				<cit:CI_Date>
					<cit:date>
						<gco:DateTime>2019-02-25T17:13:13</gco:DateTime>
					</cit:date>
					<cit:dateType>
						<cit:CI_DateTypeCode codeList="codeListLocation#CI_DateTypeCode" codeListValue="creation">creation</cit:CI_DateTypeCode>
					</cit:dateType>
				</cit:CI_Date>
			</mdb:dateInfo>	
	
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->	
			
			<mdb:metadataStandard>
				<cit:CI_Citation>
					<cit:title>
						<gco:CharacterString>ISO 19115-3:2016</gco:CharacterString>
					</cit:title>
					<cit:edition>
						<gco:CharacterString>1.0</gco:CharacterString>
					</cit:edition>
				</cit:CI_Citation>
			</mdb:metadataStandard>
	
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->	
			
			<mdb:referenceSystemInfo>
				<mrs:MD_ReferenceSystem>
					<mrs:referenceSystemIdentifier>
						<mcc:MD_Identifier>
							<mcc:code>
								<gco:CharacterString>WGS 1984</gco:CharacterString>
							</mcc:code>
						</mcc:MD_Identifier>
					</mrs:referenceSystemIdentifier>
				</mrs:MD_ReferenceSystem>
			</mdb:referenceSystemInfo>
	
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->	
			
			<mdb:identificationInfo>
				<mri:MD_DataIdentification>
				<mri:citation>
					<cit:CI_Citation>
						<cit:title>
							<gco:CharacterString><xsl:value-of select="Entidad"/></gco:CharacterString>
						</cit:title>
						<cit:date>
							<cit:CI_Date>
								<cit:date>
									<gco:DateTime><xsl:value-of select="ENTIDAD-Fecha_de_creación"/>T00:00:00</gco:DateTime>
								</cit:date>
								<cit:dateType>
									<cit:CI_DateTypeCode codeListValue="creation" codeList="./resources/codeList.xml#CI_DateTypeCode"/>
								</cit:dateType>
							</cit:CI_Date>
						</cit:date>
						<cit:edition>
							<gco:CharacterString/>
						</cit:edition>
					</cit:CI_Citation>
				</mri:citation>
				<mri:abstract>
					<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Proceso"/></gco:CharacterString>
				</mri:abstract>
				<mri:status>
					<mcc:MD_ProgressCode codeList="codeListLocation#MD_ProgressCode" codeListValue="onGoing">onGoing</mcc:MD_ProgressCode>
				</mri:status>
				<mri:pointOfContact>
					<cit:CI_Responsibility>
						<cit:role>
							<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode" codeListValue="pointOfContact">pointOfContact</cit:CI_RoleCode>
						</cit:role>
						<cit:party>
							<cit:CI_Organisation>
								<cit:name>
									<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Área"/></gco:CharacterString>
								</cit:name>
								<cit:individual>
									<cit:CI_Individual>
										<cit:name>
											<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Nombre_del_Entrevistado"/></gco:CharacterString>
										</cit:name>
										<cit:contactInfo>
											<cit:CI_Contact>
												<cit:phone>
													<cit:CI_Telephone>
														<cit:number>
															<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Telefono_contacto_primario"/></gco:CharacterString>
														</cit:number>
														<cit:numberType>
															<cit:CI_TelephoneTypeCode codeList="codeListLocation#CI_TelephoneTypeCode" codeListValue="voice">voice</cit:CI_TelephoneTypeCode>
														</cit:numberType>
													</cit:CI_Telephone>
												</cit:phone>
												<cit:address>
													<cit:CI_Address>
														<cit:deliveryPoint>
															<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Ubicación_contacto_primario"/></gco:CharacterString>
														</cit:deliveryPoint>
														<cit:city>
															<gco:CharacterString>CABA</gco:CharacterString>
														</cit:city>
														<cit:administrativeArea>
															<gco:CharacterString>CABA</gco:CharacterString>
														</cit:administrativeArea>
														<cit:postalCode>
															<gco:CharacterString>1107</gco:CharacterString>
														</cit:postalCode>
														<cit:country>
															<gco:CharacterString>Argentina</gco:CharacterString>
														</cit:country>
														<cit:electronicMailAddress>
															<gco:CharacterString><xsl:value-of select="ENTREVISTADO-E-mail_contacto_primario"/></gco:CharacterString>
														</cit:electronicMailAddress>
													</cit:CI_Address>
												</cit:address>
											</cit:CI_Contact>
										</cit:contactInfo>
										<cit:positionName>
											<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Posición"/></gco:CharacterString>
										</cit:positionName>
									</cit:CI_Individual>
								</cit:individual>
								<cit:individual>
									<cit:CI_Individual>
										<cit:name>
											<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Datos_de_contacto_secundario"/></gco:CharacterString>
										</cit:name>
										<cit:contactInfo>
											<cit:CI_Contact>
												<cit:phone>
													<cit:CI_Telephone>
														<cit:number>
															<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Telefono_contacto_secundario"/></gco:CharacterString>
														</cit:number>
														<cit:numberType>
															<cit:CI_TelephoneTypeCode codeList="codeListLocation#CI_TelephoneTypeCode" codeListValue="voice">voice</cit:CI_TelephoneTypeCode>
														</cit:numberType>
													</cit:CI_Telephone>
												</cit:phone>
												<cit:address>
													<cit:CI_Address>
														<cit:deliveryPoint>
															<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Ubicación_contacto_secundario"/></gco:CharacterString>
														</cit:deliveryPoint>
														<cit:city>
															<gco:CharacterString>CABA</gco:CharacterString>
														</cit:city>
														<cit:administrativeArea>
															<gco:CharacterString>CABA</gco:CharacterString>
														</cit:administrativeArea>
														<cit:postalCode>
															<gco:CharacterString>1107</gco:CharacterString>
														</cit:postalCode>
														<cit:country>
															<gco:CharacterString>Argentina</gco:CharacterString>
														</cit:country>
														<cit:electronicMailAddress>
															<gco:CharacterString><xsl:value-of select="ENTREVISTADO-E-mail_contacto_secundario"/></gco:CharacterString>
														</cit:electronicMailAddress>
													</cit:CI_Address>
												</cit:address>
											</cit:CI_Contact>
										</cit:contactInfo>
										<cit:positionName>
											<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Posición"/> - Contacto Secundario</gco:CharacterString>
										</cit:positionName>
									</cit:CI_Individual>
								</cit:individual>
								<cit:individual>
								<cit:CI_Individual>
									<cit:name>
										<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Datos_del_Jefe_Superior"/></gco:CharacterString>
									</cit:name>
									<cit:contactInfo>
										<cit:CI_Contact>
											<cit:phone>
												<cit:CI_Telephone>
													<cit:number>
														<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Telefono_jefe_superior"/></gco:CharacterString>
													</cit:number>
													<cit:numberType>
														<cit:CI_TelephoneTypeCode codeList="codeListLocation#CI_TelephoneTypeCode" codeListValue="voice">voice</cit:CI_TelephoneTypeCode>
													</cit:numberType>
												</cit:CI_Telephone>
											</cit:phone>
											<cit:address>
												<cit:CI_Address>
													<cit:deliveryPoint>
														<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Ubicación_jefe_superior"/></gco:CharacterString>
													</cit:deliveryPoint>
													<cit:city>
														<gco:CharacterString>CABA</gco:CharacterString>
													</cit:city>
													<cit:administrativeArea>
														<gco:CharacterString>CABA</gco:CharacterString>
													</cit:administrativeArea>
													<cit:postalCode>
														<gco:CharacterString>1107</gco:CharacterString>
													</cit:postalCode>
													<cit:country>
														<gco:CharacterString>Argentina</gco:CharacterString>
													</cit:country>
													<cit:electronicMailAddress>
														<gco:CharacterString><xsl:value-of select="ENTREVISTADO-E-mail_jefe_superior"/></gco:CharacterString>
													</cit:electronicMailAddress>
												</cit:CI_Address>
											</cit:address>
										</cit:CI_Contact>
									</cit:contactInfo>
									<cit:positionName>
										<gco:CharacterString><xsl:value-of select="ENTREVISTADO-Posición"/> - Contacto Superior</gco:CharacterString>
									</cit:positionName>
								</cit:CI_Individual>
							</cit:individual>
						</cit:CI_Organisation>
					</cit:party>
				</cit:CI_Responsibility>
			</mri:pointOfContact>
			<mri:pointOfContact>
				<cit:CI_Responsibility>
					<cit:role>
						<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode" codeListValue="owner">owner</cit:CI_RoleCode>
					</cit:role>
					<cit:party>
						<cit:CI_Organisation>
							<cit:name>
								<gco:CharacterString><xsl:value-of select="OWNER-Área"/></gco:CharacterString>
							</cit:name>
							<cit:individual>
								<cit:CI_Individual>
									<cit:name>
										<gco:CharacterString><xsl:value-of select="OWNER-Nombre_del_Owner"/></gco:CharacterString>
									</cit:name>
									<cit:contactInfo>
										<cit:CI_Contact>
											<cit:phone>
												<cit:CI_Telephone>
													<cit:number>
														<gco:CharacterString></gco:CharacterString>
													</cit:number>
													<cit:numberType>
														<cit:CI_TelephoneTypeCode codeList="codeListLocation#CI_TelephoneTypeCode" codeListValue="voice">voice</cit:CI_TelephoneTypeCode>
													</cit:numberType>
												</cit:CI_Telephone>
											</cit:phone>
											<cit:address>
												<cit:CI_Address>
													<cit:deliveryPoint>
														<gco:CharacterString></gco:CharacterString>
													</cit:deliveryPoint>
													<cit:city>
														<gco:CharacterString></gco:CharacterString>
													</cit:city>
													<cit:administrativeArea>
														<gco:CharacterString></gco:CharacterString>
													</cit:administrativeArea>
													<cit:postalCode>
														<gco:CharacterString></gco:CharacterString>
													</cit:postalCode>
													<cit:country>
														<gco:CharacterString></gco:CharacterString>
													</cit:country>
													<cit:electronicMailAddress>
														<gco:CharacterString></gco:CharacterString>
													</cit:electronicMailAddress>
												</cit:CI_Address>
											</cit:address>
										</cit:CI_Contact>
									</cit:contactInfo>
									<cit:positionName>
										<gco:CharacterString><xsl:value-of select="OWNER-Posición"/></gco:CharacterString>
									</cit:positionName>
								</cit:CI_Individual>
							</cit:individual>
						</cit:CI_Organisation>
					</cit:party>
				</cit:CI_Responsibility>
			</mri:pointOfContact>
			<mri:pointOfContact>
				<cit:CI_Responsibility>
					<cit:role>
						<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode" codeListValue="publisher">publisher</cit:CI_RoleCode>
					</cit:role>
					<cit:party>
						<cit:CI_Organisation>
							<cit:name>
								<gco:CharacterString><xsl:value-of select="PUBLICADOR-Área"/></gco:CharacterString>
							</cit:name>
							<cit:individual>
								<cit:CI_Individual>
									<cit:name>
										<gco:CharacterString><xsl:value-of select="PUBLICADOR-Nombre_del_publicador"/></gco:CharacterString>
									</cit:name>
									<cit:contactInfo>
										<cit:CI_Contact>
											<cit:phone>
												<cit:CI_Telephone>
													<cit:number>
														<gco:CharacterString></gco:CharacterString>
													</cit:number>
													<cit:numberType>
														<cit:CI_TelephoneTypeCode codeList="codeListLocation#CI_TelephoneTypeCode" codeListValue="voice">voice</cit:CI_TelephoneTypeCode>
													</cit:numberType>
												</cit:CI_Telephone>
											</cit:phone>
											<cit:address>
												<cit:CI_Address>
													<cit:deliveryPoint>
														<gco:CharacterString></gco:CharacterString>
													</cit:deliveryPoint>
													<cit:city>
														<gco:CharacterString></gco:CharacterString>
													</cit:city>
													<cit:administrativeArea>
														<gco:CharacterString></gco:CharacterString>
													</cit:administrativeArea>
													<cit:postalCode>
														<gco:CharacterString></gco:CharacterString>
													</cit:postalCode>
													<cit:country>
														<gco:CharacterString></gco:CharacterString>
													</cit:country>
													<cit:electronicMailAddress>
														<gco:CharacterString></gco:CharacterString>
													</cit:electronicMailAddress>
												</cit:CI_Address>
											</cit:address>
										</cit:CI_Contact>
									</cit:contactInfo>
									<cit:positionName>
										<gco:CharacterString><xsl:value-of select="PUBLICADOR-Posición"/></gco:CharacterString>
									</cit:positionName>
								</cit:CI_Individual>
							</cit:individual>
						</cit:CI_Organisation>
					</cit:party>
				</cit:CI_Responsibility>
			</mri:pointOfContact>
			<mri:pointOfContact>
				<cit:CI_Responsibility>
					<cit:role>
						<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode" codeListValue="processor">processor</cit:CI_RoleCode>
					</cit:role>
					<cit:party>
						<cit:CI_Organisation>
							<cit:name>
								<gco:CharacterString><xsl:value-of select="ACTUALIZADOR-Área"/></gco:CharacterString>
							</cit:name>
							<cit:individual>
								<cit:CI_Individual>
									<cit:name>
										<gco:CharacterString><xsl:value-of select="ACTUALIZADOR-Nombre_del_actualizador"/></gco:CharacterString>
									</cit:name>
									<cit:contactInfo>
										<cit:CI_Contact>
											<cit:phone>
												<cit:CI_Telephone>
													<cit:number>
														<gco:CharacterString></gco:CharacterString>
													</cit:number>
													<cit:numberType>
														<cit:CI_TelephoneTypeCode codeList="codeListLocation#CI_TelephoneTypeCode" codeListValue="voice">voice</cit:CI_TelephoneTypeCode>
													</cit:numberType>
												</cit:CI_Telephone>
											</cit:phone>
											<cit:address>
												<cit:CI_Address>
													<cit:deliveryPoint>
														<gco:CharacterString></gco:CharacterString>
													</cit:deliveryPoint>
													<cit:city>
														<gco:CharacterString></gco:CharacterString>
													</cit:city>
													<cit:administrativeArea>
														<gco:CharacterString></gco:CharacterString>
													</cit:administrativeArea>
													<cit:postalCode>
														<gco:CharacterString></gco:CharacterString>
													</cit:postalCode>
													<cit:country>
														<gco:CharacterString></gco:CharacterString>
													</cit:country>
													<cit:electronicMailAddress>
														<gco:CharacterString></gco:CharacterString>
													</cit:electronicMailAddress>
												</cit:CI_Address>
											</cit:address>
										</cit:CI_Contact>
									</cit:contactInfo>
									<cit:positionName>
										<gco:CharacterString>"<xsl:value-of select="ACTUALIZADOR-Posición"/></gco:CharacterString>
									</cit:positionName>
								</cit:CI_Individual>
							</cit:individual>
						</cit:CI_Organisation>
					</cit:party>
				</cit:CI_Responsibility>
			</mri:pointOfContact>
			<mri:pointOfContact>
				<cit:CI_Responsibility>
					<cit:role>
						<cit:CI_RoleCode codeList="codeListLocation#CI_RoleCode" codeListValue="user">user</cit:CI_RoleCode>
					</cit:role>
					<cit:party>
						<cit:CI_Organisation>
							<cit:name>
								<gco:CharacterString><xsl:value-of select="CONSUMIDOR-Consumidor_del_dato"/></gco:CharacterString>
							</cit:name>
							<cit:individual>
								<cit:CI_Individual>
									<cit:name>
										<gco:CharacterString><xsl:value-of select="CONSUMIDOR-Área"/></gco:CharacterString>
									</cit:name>
									<cit:contactInfo>
										<cit:CI_Contact>
											<cit:phone>
												<cit:CI_Telephone>
													<cit:number>
														<gco:CharacterString></gco:CharacterString>
													</cit:number>
													<cit:numberType>
														<cit:CI_TelephoneTypeCode codeList="codeListLocation#CI_TelephoneTypeCode" codeListValue="voice">voice</cit:CI_TelephoneTypeCode>
													</cit:numberType>
												</cit:CI_Telephone>
											</cit:phone>
											<cit:address>
												<cit:CI_Address>
													<cit:deliveryPoint>
														<gco:CharacterString></gco:CharacterString>
													</cit:deliveryPoint>
													<cit:city>
														<gco:CharacterString></gco:CharacterString>
													</cit:city>
													<cit:administrativeArea>
														<gco:CharacterString></gco:CharacterString>
													</cit:administrativeArea>
													<cit:postalCode>
														<gco:CharacterString></gco:CharacterString>
													</cit:postalCode>
													<cit:country>
														<gco:CharacterString></gco:CharacterString>
													</cit:country>
													<cit:electronicMailAddress>
														<gco:CharacterString></gco:CharacterString>
													</cit:electronicMailAddress>
												</cit:CI_Address>
											</cit:address>
										</cit:CI_Contact>
									</cit:contactInfo>
									<cit:positionName>
										<gco:CharacterString><xsl:value-of select="CONSUMIDOR-Posición"/></gco:CharacterString>
									</cit:positionName>
								</cit:CI_Individual>
							</cit:individual>
						</cit:CI_Organisation>
					</cit:party>
				</cit:CI_Responsibility>
			</mri:pointOfContact>
			<mri:extent>
				<gex:EX_Extent>
					<gex:temporalElement>
						<gex:EX_TemporalExtent>
							<gex:extent>
								<TimePeriod xmlns="http://www.opengis.net/gml/3.2" gml:id="TP1">
									<beginPosition><xsl:value-of select="ENTIDAD-Fecha_de_creación"/>T00:00:00</beginPosition>
									<endPosition>now()</endPosition>
								</TimePeriod>
							</gex:extent>
						</gex:EX_TemporalExtent>
					</gex:temporalElement>
				</gex:EX_Extent>
			</mri:extent>
			<mri:extent>
				<gex:EX_Extent>
					<gex:geographicElement>
						<gex:EX_GeographicBoundingBox>
							<gex:westBoundLongitude>
								<gco:Decimal>-60</gco:Decimal>
							</gex:westBoundLongitude>
							<gex:eastBoundLongitude>
								<gco:Decimal>-50</gco:Decimal>
							</gex:eastBoundLongitude>
							<gex:southBoundLatitude>
								<gco:Decimal>-40</gco:Decimal>
							</gex:southBoundLatitude>
							<gex:northBoundLatitude>
								<gco:Decimal>-30</gco:Decimal>
							</gex:northBoundLatitude>
						</gex:EX_GeographicBoundingBox>
					</gex:geographicElement>
				</gex:EX_Extent>
			</mri:extent>
			<mri:resourceMaintenance>
				<mmi:MD_MaintenanceInformation>
					<mmi:maintenanceAndUpdateFrequency>
						<mmi:MD_MaintenanceFrequencyCode codeListValue="daily" codeList="./resources/codeList.xml#MD_MaintenanceFrequencyCode"/>
					</mmi:maintenanceAndUpdateFrequency>
				</mmi:MD_MaintenanceInformation>
			</mri:resourceMaintenance>
			<mri:descriptiveKeywords>
				<mri:MD_Keywords>
					<mri:keyword>
						<gco:CharacterString/>
					</mri:keyword>
					<mri:type>
						<mri:MD_KeywordTypeCode codeListValue="theme" codeList="./resources/codeList.xml#MD_KeywordTypeCode"/>
					</mri:type>
				</mri:MD_Keywords>
			</mri:descriptiveKeywords>
			<mri:resourceConstraints>
				<mco:MD_LegalConstraints>
					<mco:accessConstraints>
						<mco:MD_RestrictionCode codeListValue="private" codeList="./resources/codeList.xml#MD_RestrictionCode"/>
					</mco:accessConstraints>
				</mco:MD_LegalConstraints>
			</mri:resourceConstraints>
			<mri:defaultLocale>
				<lan:PT_Locale>
					<lan:language>
						<lan:LanguageCode codeList="codeListLocation#LanguageCode" codeListValue="spa">spa</lan:LanguageCode>
					</lan:language>
					<lan:characterEncoding>
						<lan:MD_CharacterSetCode codeList="codeListLocation#MD_CharacterSetCode" codeListValue="utf8">utf8</lan:MD_CharacterSetCode>
					</lan:characterEncoding>
				</lan:PT_Locale>
			</mri:defaultLocale>
			<mri:supplementalInformation>
				<gco:CharacterString>Sistema que consume las Entidades:<xsl:value-of select="APLICACIONES_QUE_LO_CONSUMEN-Nombre_de_la_aplicación"/></gco:CharacterString>
			</mri:supplementalInformation>
		</mri:MD_DataIdentification>
	</mdb:identificationInfo>
		
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->	
			
			<mdb:distributionInfo>
				<mrd:MD_Distribution>
					<mrd:transferOptions>
						<mrd:MD_DigitalTransferOptions>
							<mrd:onLine>
								<cit:CI_OnlineResource>
									<cit:linkage>
										<gco:CharacterString>
											 <xsl:choose>
												 <xsl:when test="TIPO_DE_FUENTE='Archivo'">
													 <xsl:value-of select="ARCHIVO-Ubicación"/>
												 </xsl:when>
												 <xsl:when test="TIPO_DE_FUENTE='Base de Datos'">
													 <xsl:value-of select="BASE_DE_DATOS-Path"/>
												 </xsl:when>
											</xsl:choose>
										</gco:CharacterString>
									</cit:linkage>
									<cit:protocol>
										<gco:CharacterString>
											<xsl:choose>
												 <xsl:when test="TIPO_DE_FUENTE='Archivo'">
													 <xsl:value-of select="ARCHIVO-Formato"/>
												 </xsl:when>
												 <xsl:when test="TIPO_DE_FUENTE='Base de Datos'">
													 <xsl:value-of select="BASE_DE_DATOS-Tecnología"/>
												 </xsl:when>
											</xsl:choose>
										</gco:CharacterString>
									</cit:protocol>
									<cit:name>
										<gco:CharacterString><xsl:value-of select="TIPO_DE_FUENTE"/></gco:CharacterString>
									</cit:name>
									<cit:description>
										<gco:CharacterString>
											<xsl:choose>
												<xsl:when test="TIPO_DE_FUENTE='Archivo'">Archivo Compartido:<xsl:value-of select="ARCHIVO-Compartido"/>
												 </xsl:when>
												 <xsl:when test="TIPO_DE_FUENTE='Base de Datos'">
													 <xsl:value-of select="BASE_DE_DATOS-Tipo_de_Tecnología_DBMS"/>|xsl:value-of select="BASE_DE_DATOS-Tipo_de_Ubicación"/>
												 </xsl:when>
											</xsl:choose>
										</gco:CharacterString>
									</cit:description>
								</cit:CI_OnlineResource>
							</mrd:onLine>
						</mrd:MD_DigitalTransferOptions>
				</mrd:transferOptions>
			</mrd:MD_Distribution>
		</mdb:distributionInfo>
	
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->	
			
			<mdb:resourceLineage>
				<mrl:LI_Lineage>
					<mrl:source>
						<mrl:LI_Source>
							<mrl:description>
								<gco:CharacterString>Sistema que consume las Entidades:<xsl:value-of select="APLICACIONES_QUE_LO_CONSUMEN-Nombre_de_la_aplicación"/></gco:CharacterString>
							</mrl:description>
						</mrl:LI_Source>
					</mrl:source>
				</mrl:LI_Lineage>
			</mdb:resourceLineage>
			
			<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->	
		
     </mdb:MD_Metadata>
  </xsl:template>
  
</xsl:stylesheet>
