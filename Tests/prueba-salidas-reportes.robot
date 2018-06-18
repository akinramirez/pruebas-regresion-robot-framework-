*** Settings ***
Documentation  TEST de Consultas y Salidas a nivel Funcional del sistema Administrador de Proyectos UNAH
Library  Selenium2Library
Library  DateTime
Library  String

# pybot -d results tests/prueba.robot

*** Variables ***
${BUSCADOR} =  chrome
${URL} =  http://localhost/Administrador%20de%20proyectos/Proyectos/
${USUARIO-ROOT} =  ROOT
${CONTRASENA-ROOT} =  Hola123
${EXTENCION}  png
${PATH}  /development/pruebas-funcionales/Results/screenshot/
${RANGO}  10
*** Test Cases ***

Abrir explorador web
    Abrir explorador web
Inicio sistema administrador de proyectos
    Inicio sistema administrador de proyectos
login al sistema
    Login al sistema

Consulta mantenimiento catedratico
    [Documentation]  Este es un test para revisar el funcionamiento de la consulta de mantenimientos de catedraticos
    [Tags]  Consulta de Catedraticos

    :FOR  ${Index}  IN RANGE  10
    \  Sleep  1s
    \  #CLASE
    \  Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/a
    \  #CATEDRATICO
#    \  Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/ul/li[1]/a
    \  #CATEDRATICO
    \  Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/ul/li[1]/a
    \  Captura de pantalla
    \  Regreso al inicio sistema
Consulta mantenimiento seccion
    [Documentation]  Este es un test para revisar el funcionamiento de la consulta de mantenimiento de secciones
    [Tags]  Consulta de Secciones

    :FOR  ${Index}  IN RANGE  10
    \  Sleep  1s
    \  #CLASE
    \  Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/a
    \  #CATEDRATICO
    \  Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/ul/li[1]/a
    \  #SECCION
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[3]/ul/li[2]/a
    \  Captura de pantalla
    \  Regreso al inicio sistema
Consulta mantenimiento alumnos
    [Documentation]  Este es un test para revisar el funcionamiento de la consulta de mantenimiento de alumnos
    [Tags]  Consulta de Alumnos

    :FOR  ${Index}  IN RANGE  10
    \  Sleep  1s
    \  #CLASE
    \  Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/a
    \  #CATEDRATICO
    \  Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/ul/li[1]/a
    \  #ALUMNOS
    \  Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/ul/li[3]/a
    \  Captura de pantalla
    \  Regreso al inicio sistema

Consulta mantenimiento empresa
    [Documentation]  Este es un test para revisar el funcionamiento de la consulta de mantenimiento de empresas
    [Tags]  Consulta de Empresas

    :FOR  ${Index}  IN RANGE  10
    \  Sleep  1s
    \  #M-EMPRESAS
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/a
    \  #EMPRESAS
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[1]/a
    \  Captura de pantalla
    \  Regreso al inicio sistema
Consulta mantenimiento contacto
    [Documentation]  Este es un test para revisar el funcionamiento de la consulta de mantenimiento de contactos
    [Tags]  Consulta de contactos

    :FOR  ${Index}  IN RANGE  10
    \  Sleep  1s
    \  #M-EMPRESAS
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/a
    \  #EMPRESAS
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[1]/a
    \  #CONTACTO
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[2]/a
    \  Captura de pantalla
    \  Regreso al inicio sistema
Consulta mantenimiento tipo de empresa
    [Documentation]  Este es un test para revisar el funcionamiento de la consulta de mantenimiento de tipo de empresa
    [Tags]  Consulta de Tipo de Empresas

    :FOR  ${Index}  IN RANGE  10
    \  Sleep  1s
    \  #EMPRESA
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/a
    \  #TIPO DE EMPRESAS
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[1]/a
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[3]/a
    \  Captura de pantalla
    \  Regreso al inicio sistema
Consulta mantenimiento giro de la empresa
    [Documentation]  Este es un test para revisar el funcionamiento de la consulta de mantenimiento del giro de la empresa
    [Tags]  Consulta de Giros de Empresas

    :FOR  ${Index}  IN RANGE  10
    \  Sleep  1s
    \  #M-EMPRESAS
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/a
    \  #EMPRESAS
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[1]/a
    \  #GIRO DE LA EMPRESAS
    \  Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[4]/a
    \  Captura de pantalla
    \  Regreso al inicio sistema

Consulta proceso creacion de proyectos
    [Documentation]  Este es un test para revisar el funcionamiento de la consulta de proyectos
    [Tags]  Consulta de Proyectos

    :FOR  ${Index}  IN RANGE  10
    \  #PROYECTOS
    \  Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[5]/a
    \  Captura de pantalla
    \  Regreso al inicio sistema
Reporte de proyectos por año
    [Documentation]  Este es un test para revisar el funcionamiento del reporte de proyectos
    [Tags]  Reporte de Proyectos por Año

    :FOR  ${Index}  IN RANGE  10
    \  Sleep  1s
    \  #PROYECTOS
    \  Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[5]/a
    \  Click element  xpath=/html/body/div[1]/div/section[1]/h1/form/div/div/a/span
    \  Click element  xpath=/html/body/div[1]/div/section[1]/h1/form/div/div/div/ul/li[4]
    \  Click Button  xpath=/html/body/div[1]/div/section[1]/h1/form/button
    \  Regreso al inicio sistema

Cerrar explorador web
    Cerrar explorador web

*** Keywords ***
Abrir explorador web
    Open Browser  about:blank  chrome
    Maximize Browser Window
Inicio sistema administrador de proyectos
    #Open Browser  http://localhost/Administrador%20de%20proyectos/Proyectos/  chrome
    Go To  ${URL}
Cerrar explorador web
    #CERRAR EXPLORADOR
    Close Browser
Login al sistema
    Sleep  1s
    Input Text  xpath=//*[@id="login"]/form/div[1]/input  ${USUARIO-ROOT}
    Input Text  xpath=//*[@id="login"]/form/div[2]/input  ${CONTRASENA-ROOT}
    #INGRESAR LOGIN
    Click Button  xpath=//*[@id="login"]/form/button
Captura de pantalla
    #CAPTURA DE LA CONSULTA
    Set Screenshot Directory  ${PATH}
    Capture Page Screenshot  capture_{index:03}.${EXTENCION}

Regreso al inicio sistema
    Sleep  1s
    #INICIO
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[2]/a
    Sleep  1s
Do Something
    [Arguments]  ${PassedIndex}
    Log  I was passed a value of ${PassedIndex}!
A Repeatable Keyword
    Log  I am being repeated!