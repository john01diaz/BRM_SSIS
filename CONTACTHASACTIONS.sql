/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [CONTACT_ID]
      ,HAS_ACTIONS
  FROM [CC].[dbo].[CONTACT_FLAGS]
  WHERE HAS_ACTIONS >0
  ORDER BY CONTACT_ID