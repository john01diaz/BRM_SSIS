/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [CONTACT_ID]
      ,HAS_NOTES
  FROM [CC].[dbo].[CONTACT_FLAGS]
  WHERE HAS_NOTES =1
  ORDER BY CONTACT_ID