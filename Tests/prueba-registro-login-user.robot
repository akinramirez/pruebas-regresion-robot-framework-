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
Prueba de acceso al sistema y creacion de usuario
    [Documentation]  Este es un test para revisar el funcionamiento del acceso al sistema con usuario ADMINISTRADOR
    [Tags]  Prueba de Acceso al sistema, creacion de usuario, cambio de contraseña y configuracion de preguntas
    Set Selenium Speed  0.05
    Abrir explorador web
    Inicio sistema administrador de proyectos
    Login al sistema
    Creacion de usuario
    Login con usuario nuevo
    Cambio de contraseña usuario nuevo
    Configuracion de preguntas de recuperacion de contraseña
    Ingreso al sistema con los cambios efectuados (contraseña y preguntas)
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
    Sleep  3s
    Input Text  xpath=//*[@id="login"]/form/div[1]/input  ${USUARIO-ROOT}
    Input Text  xpath=//*[@id="login"]/form/div[2]/input  ${CONTRASENA-ROOT}
    #INGRESAR LOGIN
    Click Button  xpath=//*[@id="login"]/form/button
Creacion de usuario
    #SEGURIDAD
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[6]/a
    #USUARIO
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[6]/ul/li[1]/a
    #AGREGAR MODAL-USUARIO
    Click Link  xpath=/html/body/div/div/section[1]/h1/a
    #CREACION DE USUARIO
    Sleep  2s
    Input Text  id=usuario  BRYAN
    click element  xpath=//*[@id="rol_chosen"]/a/span
    click element  xpath=//*[@id="rol_chosen"]/div/ul/li[3]
    Input Text  id=nombre  BRYAN
    Input Text  id=apellido  RAMOS
    Input Text  id=email  BRYAN.RAMOS@GMAIL.COM
    Input Text  id=contrasena  Bryan1
    Click Button  id=registrar
    #Sleep  1s
    Confirm Action
    #CERRAR SESION
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[9]/a
    #BOTON REGRESO AL LOGIN
    Click Button  xpath=/html/body/div/a/button
Login con usuario nuevo
    Input Text  xpath=//*[@id="login"]/form/div[1]/input  BRYAN
    Input Text  xpath=//*[@id="login"]/form/div[2]/input  Bryan1
    #INGRESAR LOGIN
    Click Button  xpath=//*[@id="login"]/form/button
Cambio de contraseña usuario nuevo
    Input Text  xpath=/html/body/div/form/div[1]/input  Bryan1
    Input Text  xpath=/html/body/div/form/div[2]/input  Bryan1
    Input Text  xpath=/html/body/div/form/div[3]/input  Bryan1
    Click Button  xpath=/html/body/div/form/button
Configuracion de preguntas de recuperacion de contraseña
    #SELECCION DE PREGUNTA DE RECUPERACION DE CONSTRASEÑA
    click element  xpath=/html/body/div/form/div[1]/select
    Click Element  xpath=//select[@name="preg"]/option[@value=1]
    Input Text  xpath=/html/body/div/form/div[2]/input  1
    Click Button  xpath=/html/body/div/form/button
    Click Button  xpath=/html/body/div/a/button
Ingreso al sistema con los cambios efectuados (contraseña y preguntas)
    #LOGIN
    Input Text  xpath=//*[@id="login"]/form/div[1]/input  BRYAN
    Input Text  xpath=//*[@id="login"]/form/div[2]/input  Bryan1
    #INGRESAR LOGIN
    Click Button  xpath=//*[@id="login"]/form/button
    #CERRAR SESION
    Click Link  xpath=/html/body/div/aside/section/aside/section/ul/li[9]/a
    #BOTON REGRESO AL LOGIN
    Click Button  xpath=/html/body/div/a/button
    Sleep  1s

