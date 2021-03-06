SELECT DISTINCT 
                         CONTACT_1.CONTACT_ID AS ID, CONTACT_1.CONTACT_REFERENCE, CONTACT_1.CURRENT_GROUP_ID, CONTACT_1.CURRENT_OWNER_ID, CONTACT_1.CONTACT_METHOD_ID, 
                         CONTACT_1.CONTACT_PRIORITY_ID, CONTACT_1.CONTACT_STATUS_ID, PARTY_1.DESCRIPTION, CONTACT_1.CREATED, UNKNOWN_X_1.D001, CONTACT_PART_X_1.L001, CONTACT_PART_X_1.L002, 
                         CONTACT_PART_X_1.L003, CONTACT_PART_X_1.L004, CONTACT_PART_X_1.L19, CONTACT_PART_X_1.L20, CONTACT_PART_X_1.L21, CONTACT_PART_X_1.L22, CONTACT_PART_X_1.L23, 
                         CONTACT_PART_X_1.L24, CONTACT_PART_X_1.L25, CONTACT_PART_X_1.L26, CONTACT_PART_X_1.L007, CONTACT_PART_X_1.L008, CONTACT_PART_X_1.L009, CONTACT_PART_X_1.L010, 
                         CONTACT_PART_X_1.L27, CONTACT_PART_X_1.L28, CONTACT_PART_X_1.L29, CONTACT_PART_X_1.L30, CONTACT_PART_X_1.L31, CONTACT_PART_X_1.L32, CONTACT_PART_X_1.L33, 
                         CONTACT_PART_X_1.L34, U2.LAST_NAME + ' (Regarding)' AS SOURCETYPE
FROM            CONTACT_PART_X AS CONTACT_PART_X_1 INNER JOIN
                         CONTACT AS CONTACT_1 ON CONTACT_PART_X_1.CONTACT_ID = CONTACT_1.CONTACT_ID INNER JOIN
                         CONTACT_PART AS CONTACT_PART_1 ON CONTACT_PART_X_1.CONTACT_PART_ID = CONTACT_PART_1.CONTACT_PART_ID INNER JOIN
                         UNKNOWN_X AS UNKNOWN_X_1 INNER JOIN
                         PARTY AS PARTY_1 ON UNKNOWN_X_1.PARTY_ID = PARTY_1.PARTY_ID INNER JOIN
                         CONTACT_SOURCE AS CONTACT_SOURCE_1 ON PARTY_1.PARTY_ID = CONTACT_SOURCE_1.PARTY_ID ON CONTACT_1.CONTACT_ID = CONTACT_SOURCE_1.CONTACT_ID INNER JOIN
                         CONTACT_PART_X AS CPX2 ON CONTACT_1.CONTACT_ID = CPX2.CONTACT_ID INNER JOIN
                         [UNKNOWN] AS U2 ON CPX2.L006 = U2.PARTY_ID
WHERE        (CONTACT_PART_1.PRIMARY_FLAG = 1) AND (CONTACT_SOURCE_1.PRIMARY_FLAG = 1) 
  AND (CONTACT_1.Contact_Status_Id <> 3		
  AND CONTACT_1.Status_Type = 1	) 
  ORDER BY ID   