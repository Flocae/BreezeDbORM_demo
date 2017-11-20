/**
 * Created by Florent Caetta on 30/07/2017.
 */
package db {
import breezedb.models.BreezeModel;
import breezedb.models.BreezeModelQueryBuilder;

public class DbORM  extends BreezeModel{
    // All public variables represent the respective columns in the table.

    public var id:int;
    public var String1:String;
    public var Int1:int;

    public function DbORM() {
        super();
        _databaseName=dbShema.dbName;
        _tableName=dbShema.tableName;

    }
    public static function query():BreezeModelQueryBuilder
    {
        return new BreezeModelQueryBuilder(DbORM);
    }
}
}
