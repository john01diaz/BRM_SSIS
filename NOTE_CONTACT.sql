/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [NOTE_ID]
,(SELECT NOTE_TEXT FROM NOTE_CONTACT WHERE NOTE_CONTACT.NOTE_ID=NOTE.NOTE_ID)
      ,[NOTE_LINK_KEY]
      ,[NOTE_LINK_TYPE]
      ,[CREATED]
      ,[CREATED_BY]
      ,[LAST_UPDATED]
      ,[LAST_UPDATED_BY]
      ,[NOTE_TEXT]
      ,[NOTE_TITLE]
      ,[NOTE_OWNER]
      ,[NOTE_DATE]
  FROM [CC].[dbo].[NOTE]