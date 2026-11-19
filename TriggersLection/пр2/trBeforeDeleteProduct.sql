
CREATE TRIGGER trBeforeDeleteProduct
ON [dbo].[Product]
INSTEAD OF DELETE
AS
BEGIN
    UPDATE Product
    SET IsDeleted = 1
    WHERE Id IN (SELECT Id
                 FROM deleted)
END;
