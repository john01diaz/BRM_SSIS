/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [CONTACT_ID]
      ,UNKNOWN_SOURCES
  FROM [CC].[dbo].[CONTACT_FLAGS]
  WHERE UNKNOWN_SOURCES =1
  ORDER BY CONTACT_ID