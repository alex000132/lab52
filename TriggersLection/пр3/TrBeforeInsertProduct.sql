
CREATE TRIGGER [TrBeforeInsertProduct]
ON [dbo].[Product]
INSTEAD OF INSERT
AS
BEGIN

    INSERT INTO Product(Name, Price, Description, CategoryId)
    SELECT trim(Name), Price, Description, CategoryId
    FROM inserted

END;
