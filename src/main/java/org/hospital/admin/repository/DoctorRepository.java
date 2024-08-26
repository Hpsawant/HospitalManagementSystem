package org.hospital.admin.repository;

import java.util.List;

import org.hospital.admin.model.DoctorModel;

public interface DoctorRepository {
	public boolean isAddDoctor(DoctorModel dmodel);
	 public List<DoctorModel> getAllDoctor();
	public boolean isDeleteDoctorById(int did);
	public boolean isUpdateDoctor(DoctorModel dmodel);
	public List<DoctorModel> isSerachDoctorByName(String name);
	public int getDoctor(DoctorModel dmodel);

}
