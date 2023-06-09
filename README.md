# <p align="center">AutoPDF</p>
--------------------------------------------------------------------------------------------------------------------

<p align="center"> AutoPDF - Auto Conversion Bash Program from PDF to New Version PDF File</p>   
<p align="center">Versão Portuguesa & English Version</p>	
<p align="center">(Made by Daniel Vilaça)</p>			      

--------------------------------------------------------------------------------------------------------------------

<h2>Português</h2>


Nota:
Este programa em Bash serve para que numa pasta partilhada na rede que receba PDF's com versões desatualizadas 
do Adobe Acrobat ou com ficheiros incompativeis, gere novos PDF's através do "PDFCreator", ferramente gratuita 
de conversão de PDF's para PDF's, entre outros tipos de ficheiros.

IMPORTANTE: O Programa irá estar a correr, caso pretenda colocar como serviço é totalmente compreensível e 
recomendado pois o objetivo do mesmo é estar sempre pronto para quando um PDF entrar na pasta partilhada, 
ser automaticamente convertido para um novo ficheiro.

PS: É obrigatório ter instalado o PDFCreator (Gratuito) e configurar o Perfil como "Save Automático".




- Verificar os caminhos das pastas partilhadas e dos executáveis ("C:\" para "Reports" e "FinalReports", 
"C:\AutoPDF" para "autopdf" e "pdfcancel")

- O ficheiro de texto, para leitura e escrita no array, é criado automaticamente caso não exista.

- Neste momento o script corre a pasta "Reports" todo e armazena todos os nomes de PDF's 
existentes num ficheiro de texto para conseguir armazenar os dados em string e colocar os mesmos no comando de 
geração de PDF's novos, através do PDFCreator.

- Inicialmente, no caso de existirem cerca de 700 pdf's novos e se cada um demorar 5 segundos a ser gerado,
poderá demorar cerca de +/- 1h.

- Com o comando "find" dentro do ciclo que corre pela pasta "Relatorios", ele apenas gere o PDF caso 
não exista no ficheiro de texto "PDFCycle1" logo, se o PDF já existir, avança para o próximo.

- Existe um ficheiros de texto: PDFCycle1:
O ficheiro PDFCycle1 serve para guardar em texto todos os nomes dos PDF's que existem na pasta "Reports" e 
serve para comparar todos os PDF's. Caso o nome do PDF já exista no PDFCycle, significa que já foi gerado um 
novo PDF. Caso não exista, é gerado um novo.

- O Programa "pdfcancel" serve para terminar o processo do Adobe Acrobat após 5 segundos, pois o conversor só fecha 
o pdf criado após cerca de uns 45 segundos, e no caso de ser necessário gerar diversos PDF's, seria bastante 
dispendioso em termos de tempo gasto.

--------------------------------------------------------------------------------------------------------------------

<h2>English</h2>


Note:
This Bash program serves to generate new PDFs through "PDFCreator," a free tool for converting PDFs to PDFs and 
other file types, in a shared folder on the network that receives outdated versions of Adobe Acrobat or 
incompatible files.

IMPORTANT: The program will be running, and if you wish to set it up as a service, it is entirely understandable 
and recommended since its purpose is to always be ready for when a PDF enters the shared folder, automatically 
converting it into a new file.

PS: It is mandatory to have PDFCreator (Free) installed and configure the Profile as "Save Automatic."




- Verify the paths of the shared folders and executables ("C:" for "Reports" and "FinalReports," "C:\AutoPDF" for 
"autopdf" and "pdfcancel").

- The text file, for reading and writing in the array, is automatically created if it does not exist.

- Currently, the script runs through the entire "Reports" directory and stores all the names of existing PDFs in a 
text file to store the data as a string and use it in the command for generating new PDFs through PDFCreator.

- Initially, if there are about 700 new pdf's and each takes 5 seconds to generate, it may take approximately 
+/- 1 hour.

- With the "find" command within the loop that runs through the "Reports" directory, it only generates the PDF if 
it does not exist in the "PDFCycle1" text file. Therefore, if the PDF already exists, it moves on to the next one.

- There is a text file named "PDFCycle1":
The PDFCycle1 file is used to store all the names of the PDFs that exist in the "Reports" folder and is used to 
compare all the PDFs. If the name of the PDF already exists in PDFCycle, it means that a new PDF has already been 
generated. If it does not exist, a new one is generated.

- The "pdfcancel" program is used to terminate the Adobe Acrobat process after 5 seconds because the converter only 
closes the created PDF after approximately 45 seconds. In the case of needing to generate multiple PDFs, it would 
be quite time-consuming.
