package org.hospital.admin.service;

import java.util.List;

import org.hospital.admin.model.RecepModel;
import org.hospital.admin.repository.*;
public class RecepServiceIMPL implements RecepService{
     RecepRepository rrepo=new RecepRepositoryIMPL();
	@Override
	public boolean isAddRecep(RecepModel rmodel) {
		// TODO Auto-generated method stub
		return rrepo.isAddRecep(rmodel);
	}
	@Override
	public List<RecepModel> getAllRecep() {
		
		return rrepo.getAllRecep();
	}
	@Override
	public boolean isDeleteRecep(int rid) {
		
		return rrepo.isDeleteRecep(rid);
	}

}
