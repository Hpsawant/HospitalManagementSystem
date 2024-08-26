package org.hospital.admin.service;

import java.util.List;

import org.hospital.admin.model.DoctorModel;
import org.hospital.admin.model.RecepModel;

public interface RecepService {
	public boolean isAddRecep(RecepModel rmodel);
	 public List<RecepModel> getAllRecep();
	public boolean isDeleteRecep(int rid);

}
