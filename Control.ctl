//Control.ctl
//Control file created by ufuchs on 08/05/2011 18:28:07 using Essential
using lwc2011;
using lwc2011.model0;
using db;
using deriveDatabase;

namespace lwc.codeGenerator {
	
	transformation Main() {

		Model model = lwc2011.model0.m0;
		
		foreach (Entity ent in model.Entities) {
			javaPojo.genPojo(ent) > "$ent.Name; format= "Pascalcase"$.java";
		}
	    
		foreach (Entity ent in model.Entities) {
			objectPascalPopo.genPopo(ent) > "$ent.Name; format= "Pascalcase"$.pas";
		}
	    
	    model > "sourceModel.ess";
	    
	    Schema s0 = DeriveDb(model);
	    
	    s0 > "schemaModel.ess";
	    
		foreach (Table table in s0.Tables) {
			mssqlDb.genMssql(table) > "$table.Name; format= "Pascalcase"$.ms.sql";
		}
	    
	    
    }
	
}
