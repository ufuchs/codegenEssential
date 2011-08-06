//Control.ctl
//Control file created by ufuchs on 08/05/2011 18:28:07 using Essential
using lwc2011;
using lwc2011.model0;

namespace lwc.JavaGenerator {
	
	transformation Main() {

		Model model = lwc2011.model0.m0;
		
		foreach (Entity ent in model.Entities) {
			javaPojo.genPojo(ent) > "$ent.Name; format= "Pascalcase"$.java";
		}
	     	
    }
	
}
