
# 👻 GhostProvider
Herramienta desarrollada y escrita en C, que genera un proveedor de red malicios, simulando la técnica [T1556.008 DLL Network Provider](https://attack.mitre.org/techniques/T1556/008/) en el sistema operativo Windows, para interceptar credenciales de un inicio de sesión (MitM). 

La idea nace de la investigación realizada por Grzegorz Tworek, que aprovecha las capacidades de la API de Windows para generar una DLL persistente y dejarlo "escuchando" en el sistema. 

> [!NOTE]
Update 07/06: Añadido batch que automatiza la técnica en un directorio específico y registrar el proveedor de red. ***Este requiere elevar privilegios para su ejecución.***
> Próximamente DEMO




> [!CAUTION]
Esta herramienta fue diseñada para fines de pentesting, por lo que el mal uso de este no está bajo mi responsabilidad.
