/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [CONTACT_ID]
      ,COUNT([PARTY_ID])
  FROM [CC].[dbo].[INDIVIDUAL_CONTACTS]
  GROUP BY CONTACT_ID
  ORDER BY CONTACT_ID