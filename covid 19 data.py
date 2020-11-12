import xlwt, os
import requests
from bs4 import BeautifulSoup
from xlwt import Workbook
import pandas

url = 'https://www.worldometers.info/coronavirus/countries-where-coronavirus-has-spread/'
page = requests.get(url) 
soup = BeautifulSoup(page.text, 'html5lib') 
data_iterator = soup.findAll('tr')

# print(soup.prettify())

wb = Workbook() 
file = 'covid 19 data.xls'
sheet1 = wb.add_sheet('covid') 

l = []
for i in range(4):
    l.append(data_iterator[0].findAll('span')[i].text)

for i in range(4):
    sheet1.write(0, i, l[i])
    
for i in range(1, int(len(soup.findAll('td'))/4)):
    for j in range(4):
        put = data_iterator[i+1].find_all('td')[j]
#         print(f'{l[j%4]} : {put.text}')
        sheet1.write(i, j, put.text)
#     print()

wb.save(file)
# os.startfile(file)

df = pandas.read_excel(file)
print(df)


# =================================================
# Output :
    
# 	Country	Number of cases	Deaths	Continent
# 0	India	8,684,039	128,165	Asia
# 1	Brazil	5,749,007	163,406	South America
# 2	France	1,865,538	42,535	Europe
# 3	Russia	1,836,960	31,593	Europe
# 4	Spain	1,463,093	40,105	Europe
# ...	...	...	...	...
# 212	MS Zaandam	9	2	NaN
# 213	Anguilla	3	0	North America
# 214	Vanuatu	1	0	Australia/Oceania
# 215	Marshall Islands	1	0	Australia/Oceania
# 216	Wallis & Futuna	1	0	Australia/Oceania

# 217 rows × 4 columns
