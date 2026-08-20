SELECT Country, Product_Category, 
SUM(Revenue) as 'Total_Revenue',
SUM(Profit) as 'Total_Profit',
ROUND((SUM(Profit) * 100.0/ SUM(Revenue)), 2) as 'Margin_Percentage'
  FROM [Proyecto].[dbo].[Tabla_Final$]
  GROUP BY Country, Product_Category
  ORDER BY Margin_Percentage ASC

  ;
  
  SELECT Age_Group,
  Customer_Gender,
  SUM(Order_Quantity) as 'Total_Quantity',
  ROUND(AVG(Revenue),2) as 'Prom_Compra'
  FROM [Proyecto].[dbo].[Tabla_Final$]
  GROUP BY Age_Group, Customer_Gender
  ORDER BY SUM(Order_Quantity), ROUND(AVG(Revenue),2) DESC
  ;

  SELECT TOP 5 
  Product,
  SUM(Revenue) as 'Total_Revenue'
  FROM [Proyecto].[dbo].[Tabla_Final$]
  GROUP BY Product
  ORDER BY Total_Revenue DESC

  ;

  SELECT TOP 5
  Product,
  SUM(Profit) as 'Total_Profit'
  FROM [Proyecto].[dbo].[Tabla_Final$]
  GROUP BY Product
  ORDER BY Total_Profit ASC

  ;

  SELECT Year,
  Month,
  SUM(Profit) as 'Total_Profit',
  SUM(Revenue) as 'Total_Revenue'
  FROM [Proyecto].[dbo].[Tabla_Final$]
  GROUP BY Year, Month, MONTH(Date)
  ORDER BY Year ASC, MONTH(Date) ASC

  ;