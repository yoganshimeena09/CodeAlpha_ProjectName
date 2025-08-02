import requests
from bs4 import BeautifulSoup

url = 'http://books.toscrape.com'
response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')
import pandas as pd
data = pd.DataFrame({'Title': titles, 'Price': prices, 'Rating': ratings})
data.to_csv('scraped_books.csv', index=False)
