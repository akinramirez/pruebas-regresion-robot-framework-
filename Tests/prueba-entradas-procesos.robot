*** Settings ***
Documentation  Se esta realizando un TEST a nivel Funcional del sistema Administrador de Proyectos UNAH
Library  Selenium2Library
# pybot -d results tests/amazon.robot
# @{url_and_browser} = Set Variable http://www.gooogle.hn chrome
# @{url_and_browser}[0], @{url_and_browser}[1]

*** Variables ***
${BUSCADOR} =  chrome
${URL} =  http://localhost/Administrador%20de%20proyectos/Proyectos/
${USUARIO-ROOT} =  ROOT
${CONTRASENA-ROOT} =  Hola123

*** Test Cases ***

Abrir explorador web
    Abrir explorador web

Inicio sistema administrador de proyectos
    Inicio sistema administrador de proyectos

login al sistema
    Login al sistema

Creacion registro en mantenimiento tipo de empresa
    [Documentation]  Este es un test para revisar el funcionamiento del mantenimiento de tipo de empresa
    [Tags]  Mantenimiento de Tipo de Empresas

    #EMPRESA
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/a

    #TIPO DE EMPRESAS
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[1]/a
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[3]/a

    #AGREGAR MODAL-TIPO DE EMPRESA
    Click Link  xpath=/html/body/div[1]/div/section[1]/h1/form/a

    #CREACION DE EMPRESA
    Sleep  2s
    Input Text  id=tipo  SOCIEDAD COLECTIVA
    Click Button  id=registrar
    Confirm Action

Creacion registro en mantenimiento giro de la empresa
    [Documentation]  Este es un test para revisar el funcionamiento del mantenimiento del giro de la empresa
    [Tags]  Mantenimiento de Giro de la Empresas

    #GIRO DE LA EMPRESAS
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[1]/a
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[4]/a

    #AGREGAR MODAL-TIPO DE EMPRESA
    Click Link  xpath=/html/body/div[1]/div/section[1]/h1/form/a

    #CREACION DE EMPRESA
    Sleep  2s
    Input Text  id=giro  MEDIOS DE COMUNICACION
    Click Button  id=registrar
    Confirm Action

Creacion registro en mantenimiento empresa
    [Documentation]  Este es un test para revisar el funcionamiento del mantenimiento de empresas
    [Tags]  Mantenimiento de Empresas

    #EMPRESA
#    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/a

    #EMPRESAS
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[1]/a

    #AGREGAR MODAL-EMPRESA
    Click Link  xpath=/html/body/div/div/section[1]/h1/form/a

    #CREACION DE EMPRESA
    Sleep  2s
    Input Text  id=nombre  OPSA
    click element  xpath=//*[@id="giro_chosen"]/a/span
    click element  xpath=//*[@id="giro_chosen"]/div/ul/li[2]
    click element  xpath=//*[@id="tipo_chosen"]/a/span
    click element  xpath=//*[@id="tipo_chosen"]/div/ul/li[2]
    Input Text  id=direccion  COL. EL LOARQUE, FTE. A BODEGAS FERROMAX
    Input Text  id=observaciones  GRUPO DE EMPRESAS EL HERALDO, LA PRENSA, DIEZ
    Click Button  id=registrar
    Confirm Action

Creacion registro en mantenimiento contacto
    [Documentation]  Este es un test para revisar el funcionamiento del mantenimiento de contactos
    [Tags]  mantenimiento de contactos

    Sleep  1s
    #CONTACTO
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[4]/ul/li[2]/a

    #AGREGAR MODAL-CONTACTO
    Click Link  xpath=/html/body/div/div/section[1]/h1/form/a

    #CREACION DE CONTACTO DE LA EMPRESA
    Sleep  2s
    click element  xpath=//*[@id="empresa_chosen"]/a/span
    click element  xpath=//*[@id="empresa_chosen"]/div/ul/li[2]
    Input Text  id=nombre  VILMA RODRIGUEZ
    Input Text  id=telefono  99887766
    Input Text  id=email  VILMA.RODRIGUEZ@HOTMAIL.COM
    Click Button  id=registrar
    Confirm Action

Creacion registro en mantenimiento catedratico
    [Documentation]  Este es un test para revisar el funcionamiento del mantenimiento de catedraticos
    [Tags]  Mantenimiento de Catedraticos

    #CLASE
    Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/a

    #CATEDRATICO
    Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/ul/li[1]/a

    #AGREGAR MODAL-CATEDRATICO
    Click Link  xpath=/html/body/div/div/section[1]/h1/form/a

    #CREACION DE CONTACTO DE LA EMPRESA
    Sleep  2s
    Input Text  id=nombre  MARCO ARTURO FLORES
    Input Text  id=numero  99887766
    Click Button  id=registrar
    Confirm Action

Creacion registro en mantenimiento seccion
    [Documentation]  Este es un test para revisar el funcionamiento del mantenimiento de secciones
    [Tags]  Mantenimiento de Secciones

    Sleep  1s
    #SECCION
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[3]/ul/li[2]/a

    #AGREGAR MODAL-CATEDRATICO
    Click Link  xpath=/html/body/div/div/section[1]/h1/form/a

    #CREACION DE SECCION
    Sleep  2s
    Input Text  id=codigo  100
    Input Text  id=h_inicial  1900
    Input Text  id=h_final  2000
    Input Text  id=aula  303
    Input Text  id=edificio  C2
    Input Text  id=clase  ANALISIS Y DISEÑO DE SISTEMAS
    Click Button  id=registrar
    Confirm Action

Creacion registro en proceso creacion de proyectos
    [Documentation]  Este es un test para revisar el funcionamiento del proceso creacion de proyectos
    [Tags]  Proceso Creacion de Proyectos

    #PROYECTOS
    Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[5]/a

    #AGREGAR MODAL-PROYECTOS
    Click Link  xpath=/html/body/div[1]/div/section[1]/h1/form/a

    #CREACION DE PROYECTO
    Sleep  2s
    Input Text  id=nombre  SISTEMA IB
    click element  xpath=//*[@id="empresa_chosen"]/a/span
    click element  xpath=//*[@id="empresa_chosen"]/div/ul/li[2]
    click element  xpath=//*[@id="contacto_chosen"]/a/span
    click element  xpath=//*[@id="contacto_chosen"]/div/ul/li[2]
    click element  xpath=//*[@id="catedratico_chosen"]/a/span
    click element  xpath=//*[@id="catedratico_chosen"]/div/ul/li[2]
    Input Text  id=descripcion  SISTEMA PARA VISUALIZAR DASHBOARD DE INFORMACION COMERCIAL
    Input Text  id=objetivos  CREAR SISTEMA PARA APOYO A LA AREA COMERCIAL
    click element  xpath=//*[@id="seccion_chosen"]/a/span
    click element  xpath=//*[@id="seccion_chosen"]/div/ul/li[2]
    Input Text  id=anio  2018
    Input Text  id=periodo  1
#    Input Text  id=fecha_inicio  2018-04-01
#    Input Text  id=fecha_fin  2018-05-31
#    click element  id=//*[@id="loginForm"]/div[2]
    Input Text  id=observaciones  PROPUESTA DE SISTEMA WEB CON TECNOLOGIAS PHP, POSTGRESQL, JS, AJAX Y DESPLEGADO EN VPS DIGITAL OCEAN
    Click Button  id=registrar
    #Sleep  1s
    Confirm Action

Creacion registro en mantenimiento alumnos
    [Documentation]  Este es un test para revisar el funcionamiento del mantenimiento de alumnos
    [Tags]  Mantenimiento de Alumnos

    Sleep  1s
    #CLASE
    Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/a

    #CATEDRATICO
    Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/ul/li[1]/a
    #ALUMNOS
    Click Link  xpath=/html/body/div[1]/aside/section/aside/section/ul/li[3]/ul/li[3]/a

    #AGREGAR MODAL-ALUMNO
    Click Link  xpath=/html/body/div/div/section[1]/h1/form/a

    #CREACION DE ALUMNO
    Sleep  2s
    Input Text  id=nombre  AKIN ARTURO RAMIREZ GARCIA
    Input Text  id=n_cuenta  20121001000
    click element  xpath=//*[@id="proyecto_chosen"]/a/span
    click element  xpath=//*[@id="proyecto_chosen"]/div/ul/li[2]
    Input Text  id=n_grupo  8
    Input Text  id=telefono  99999999
    Input Text  id=email  AKIN.RAMIREZ@HOTMAIL.COM
    Click Button  id=registrar
    Confirm Action

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