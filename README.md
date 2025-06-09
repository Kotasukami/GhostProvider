
# 👻 GhostProvider
Herramienta desarrollada para generar un proveedor de red malicioso, simulando la técnica [T1556.008 DLL Network Provider](https://attack.mitre.org/techniques/T1556/008/) en sistemas operativos Windows, para interceptar credenciales de un inicio de sesión en la máquina (MitM). 

La idea nace de la investigación de Grzegorz Tworek, que aprovecha las capacidades de la API de Windows para generar una DLL persistente, escrita en C. 

> [!NOTE]
Update 07/06: Añadido batch que automatiza la técnica en un directorio específico y registrar el proveedor de red. ***Este requiere elevar privilegios para su ejecución.***




> [!CAUTION]
Esta herramienta fue diseñada para fines de pentesting, por lo que el mal uso de este no está bajo mi responsabilidad.
