CREATE TRIGGER trAfterDeleteCategory
    ON [dbo].[Category]
    After DELETE
AS
BEGIN
    INSERT INTO DeletedCategory(Id, Name, ParentId)
    SELECT *
    FROM deleted

END;
