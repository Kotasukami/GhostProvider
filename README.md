
# 👻 GhostProvider
Herramienta desarrollada para generar un proveedor de red malicioso en sistemas operativos Windows e interceptar credenciales de un inicio de sesión de la máquina. La idea nace de la investigación 
llevada a cabo por Grzegorz Tworek, que aprovecha las capacidades de la API de Windows para generar una DLL escrita en C. 

En este momento me encuentro desarrollando un C2 que envíe estas credenciales a un formulario de google, con el fin de dar paso a la exfiltración de la data.

Update 07/06
- Añadido batch que automatiza el proceso de inyección de la DLL en un directorio específico y registrar el proveedor de red.

***El archivo requiere elevar privilegios para su ejecución***

### Notas adicionales
Esta herramienta fue diseñada para fines de pentesting, por lo que el mal uso de este no está bajo mi responsbilidad.
