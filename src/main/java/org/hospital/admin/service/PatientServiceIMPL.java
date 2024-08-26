package org.hospital.admin.service;

import java.util.List;

import org.hospital.admin.model.DoctorModel;
import org.hospital.admin.model.PatientModel;
import org.hospital.admin.repository.*;

public class PatientServiceIMPL implements PatientService{
	PatientRepository prepo=new PatientRepositoryIMPL();
	@Override
	public boolean isAddPatient(PatientModel pmodel) {
		
		return prepo.isAddPatient(pmodel);
	}
	@Override
	public List<Object[]> getAllPatient() {
	
		return prepo.getAllPatient();
	}
	@Override
	public boolean isDeletePatientById(int pid) {
		return prepo.isDeletePatient(pid);
	}
	@Override
	public boolean isUpdatePatient(PatientModel pmodel) {

		return prepo.isUpdatePatient(pmodel);
	}
	@Override
	public List<PatientModel> isSearchPatientByName(String name) {
		
		return prepo.isSearchPatientByName(name);
	}

}
