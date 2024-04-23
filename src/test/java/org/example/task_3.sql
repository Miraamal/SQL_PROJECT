--(1) Вывести данные о товарах
--(проекция: названиетовара, цена, названиекатегории, названиекомпаниипоставщика)
SELECT Products.ProductName,
		Products.Price AS Price_full,
        Categories.CategoryName,
        Suppliers.SupplierName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

--(2) Вывести список стран, которые поставляют морепродукты
SELECT DISTINCT
	Suppliers.Country
FROM Products

JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

WHERE
	CategoryName = "Seafood"

--(3) Вывести два самых дорогих товара из категории Beverages из USA
SELECT*
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE CategoryName = "Beverages"
AND
Country = "USA"
ORDER  BY Price DESC
LIMIT 2
--(4) BD- eto dannie kak takovie, a SUBD- eto programma dlya vzaimodeystviya s dannimi
