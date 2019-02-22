#enconding: utf-8

#Cargo las librerias
import xml.dom.minidom
import xml.etree.ElementTree as ET
import csv

#Funciones Auxiliares

class txttoxml():
    '''
    Esta clases se encarga de convertir un txt separado por un caracter especificado a xml
    '''


    def __init__(self):
        '''
        Constructor
        '''

    """Funcion para procesar los datos de un txt y convertirlo a xml
    Parametros
    filesource: Nombre del archivo de origen
    filedestination: Nombre del archivo de destino
    separator: string que separa etiqueta de elemento
    """
    def toxml(self, filesource, filedestination, separator = "="):

        #Obtenemos los datos del archivo de metadatos
        f=open(filesource, "r")

        #Leemos el archivo y lo cortamos en renglones
        lines=f.read().split("\n")

        #Creamos el diccionario
        metadatos_origen={}

        #Recorremos el archivo y guardamos los terminos que estan separados con el string pasado
        #y que no son vacios
        for line in lines:
            line = line.replace ('"','')
            if len(line.strip()) > 0 and line.rfind(separator)> 0:
                clave = line.split(separator)[0]
                valor = line.split(separator)[1]
                metadatos_origen[clave.strip(" ")]=valor.strip(" ")

        #Imprimo el diccionario
        print(metadatos_origen)


        #Cierro el archivo
        f.close()


        #################################################################################
        ## Generacion de campos combinado
        #################################################################################

        #Para productos landsat 8
        try:

            metadatos_origen['DATE_INSTANT']= metadatos_origen['DATE_ACQUIRED']+'T'+metadatos_origen['SCENE_CENTER_TIME'].strip("Z")

            metadatos_origen['FILE_DATE']= metadatos_origen['FILE_DATE'].strip("Z")

            metadatos_origen['CORNER_UL']= metadatos_origen['CORNER_UL_LAT_PRODUCT']+' '+metadatos_origen['CORNER_UL_LON_PRODUCT']
            metadatos_origen['CORNER_UR']= metadatos_origen['CORNER_UR_LAT_PRODUCT']+' '+metadatos_origen['CORNER_UR_LON_PRODUCT']
            metadatos_origen['CORNER_LL']= metadatos_origen['CORNER_LL_LAT_PRODUCT']+' '+metadatos_origen['CORNER_LL_LON_PRODUCT']
            metadatos_origen['CORNER_LR']= metadatos_origen['CORNER_LR_LAT_PRODUCT']+' '+metadatos_origen['CORNER_LR_LON_PRODUCT']


        except:
            print( "No existen campos de origen para Landsat8 combinar en este metadato")


        #Para productos ciudades 2013
        try:

            metadatos_origen['Key']= metadatos_origen['Province']+' , '+metadatos_origen['City']
            metadatos_origen['obs']= 'Las Imagenes del Satelite Spot 5 para este producto poseen fecha ' + metadatos_origen['Start'] + ' y del Satelite Landsat 8 la fecha ' + metadatos_origen['StartAux']

        except:
            print( "No existen campos de origen para ciudades combinar en este metadato")



        #################################################################################
        ## Creacion del xml a partir del diccionario generado
        #################################################################################

        dom = xml.dom.minidom.Document()
        x = dom.createElement("Metadata")  # creo el principal
        dom.appendChild(x)  #agrego el primer hijo

        #recorro el diccionario generando con la clave la etiqueta y asignandole el valor
        for elemento in metadatos_origen.items():
            x = dom.createElement(elemento[0])
            txt = dom.createTextNode(elemento[1])
            x.appendChild(txt)
            dom.childNodes[0].appendChild(x)  #agrega el hijo al primer hijo

        #imprimo el XML
        print(dom.toxml())


        #Abro el archivo para escritura XML
        f = open(filedestination, "w")

        #Escribo el archivo XML
        f.write(dom.toprettyxml())

        #Cierro el archivo XML
        f.close()


#Recorrer la lista de usuarios


###Variables del Porceso





# Listo los archivos en el directorio
ficheros = os.listdir(rutaOrigen)

# Recorro los archivos que existen

for archivo in ficheros:

    ext = os.path.splitext(archivo)

    if (ext[1] == '.zip'):


        #Renombro el producto
        ###############################################################
        shutil.move(rutaProceso + archivo, rutaProducto + nombre+'.zip') #renombro y dejo el nuevo producto

        #TODO:Linpiar el temporal y no dejar nada suelto

        #Elimino el temporal generado
        shutil.rmtree(rutaTemp + ext[0]+'/')




##Plantilla de XLST

dom = ET.parse(xml_filename)
xslt = ET.parse(xsl_filename)
transform = ET.XSLT(xslt)
newdom = transform(dom)
print(ET.tostring(newdom, pretty_print=True))