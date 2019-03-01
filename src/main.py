#Cargo las librerias
import xml.dom.minidom
import lxml.etree as ET
import csv
import pandas as pd
from collections import defaultdict
import os

def to_xml(df, filename=None, mode='w'):
    def row_to_xml(row):
        xml = ['<Item>']
        for i, col_name in enumerate(row.index):
            xml.append('  <{0}>{1}</{0}>'.format(col_name.replace(" ","_").replace("(","").replace(")",""), row.iloc[i]))
        xml.append('</Item>')
        return '\n'.join(xml)
    res =  '<Metadata>\n' + '\n'.join(df.apply(row_to_xml, axis=1)) + '\n</Metadata>'
    if filename is None:
        return res
    with open(filename, mode, encoding="utf-8") as f:
        f.write(res)
pd.DataFrame.to_xml = to_xml

def toxml19115(filesource, filedestination, separator = ";"):
    df1 = pd.read_csv(filesource, sep=';', encoding = 'utf-8')
    entities = df1['Entidad'].unique().astype(str)
    for entity in entities:  
        df2=df1[(df1.Entidad == entity)]
        df2 = df2.iloc[:,  list(range(1,67))+list(range(84,87))]
        df2 = df2.head(1)
        df2.to_xml('data/basic_xml/19115-3/'+entity.replace("/","-")+'_19115-3.xml')

def toxml19110(filesource, filedestination, separator = ";"):
    df1 = pd.read_csv(filesource, sep=';', encoding = 'utf-8')
    entities = df1['Entidad'].unique().astype(str)
    for entity in entities:  
        df2=df1[(df1.Entidad == entity)]
        df2.to_xml('data/basic_xml/19110/'+entity.replace("/","-")+'_19110.xml')

def applyXLST(xml_filename, xsl_filename, dir):
    dom = ET.parse(dir+xml_filename)
    xslt = ET.parse(xsl_filename)
    transform = ET.XSLT(xslt)
    newdom = transform(dom)
    res = ET.tostring(newdom, pretty_print=True)
    with open("ISO_"+xml_filename, "w", encoding="utf-8") as f:
        f.write(res.decode('utf-8'))

def generateXML():
    for root, dirs, files in os.walk("./data/csv"):  
        for filename in files:
            print("Procesando:",filename)
            toxml19115("data/csv/"+filename,"b")
            toxml19110("data/csv/"+filename,"b") 
    for root, dirs, files in os.walk("./data/basic_xml/19115-3"):  
            for filename in files:
                applyXLST(filename, 'xslt/to19115.xslt', 'data/basic_xml/19115-3/')

#generateXML()

for root, dirs, files in os.walk("./data/basic_xml/19110"):  
    for filename in files:
        print("Procesando:",filename)
        applyXLST(filename, 'xslt/to19110.xslt', 'data/basic_xml/19110/')