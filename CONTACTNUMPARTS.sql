/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [CONTACT_ID]
      ,[PARTS]
  FROM [CC].[dbo].[CONTACT_FLAGS]
  WHERE PARTS >0
  ORDER BY PARTS DESC