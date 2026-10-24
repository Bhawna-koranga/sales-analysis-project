import pandas as pd
df = pd.read_csv(r'C:\Users\Vikash\Desktop\sales analysis\sales_analysis_dataset_60_rows (1).csv')
print(df.head())
print(df.info())
print(df.describe())
print(df.isnull().sum())
print(df.duplicated().sum())

df = df.drop_duplicates()
print(df.shape) 
df.to_csv('cleaned_sales_analysis_dataset.csv', index=False)    
print("\ndata cleaning completed successfully. ")
print("\cleaned data saved to 'cleaned_sales_analysis_dataset.csv'")