package org.hospital.admin.repository;

import java.util.ArrayList;
import java.util.List;

import org.hospital.admin.Config.DBConfig;
import org.hospital.admin.model.DoctorModel;
import org.hospital.admin.model.PatientModel;

public class PatientRepositoryIMPL extends DBConfig implements PatientRepository{
	private int patientid;
	List<Object[]> listPatient;
	List<PatientModel> list;
	private int getPatientId()
	{
		
		try {
			stmt=conn.prepareStatement("select max(patientid) from patient");
			rs=stmt.executeQuery();
			if(rs.next())
			{
				patientid=rs.getInt(1);
			}
			++patientid;
		  }
		catch(Exception ex)
		{
			System.out.println("error is patient id not increment "+ex);
			return 0;
		}
		return patientid;
	}
	
	public int getDoctorId(String name)
	{
		try {
		stmt=conn.prepareStatement("select did from doctor where specialization=?");
		stmt.setString(1,name);
		rs=stmt.executeQuery();
		if(rs.next())
		{
			return rs.getInt(1);
		}
		else {
			return -1;
		}
		}
		catch(Exception ex)
		{
			System.out.println("error is "+ex);
			return 0;
		}
	}
	@Override
	public boolean isAddPatient(PatientModel pmodel) {
		
		try {
			int pid=this.getPatientId();
			if(pid!=0) {
				    stmt=conn.prepareStatement("insert into patient values(?,?,?,?,?,?,?,?)");
		 			stmt.setInt(1, pid);
		 			stmt.setString(2, pmodel.getName());
		 			
		 			stmt.setString(3, pmodel.getContact());
		 			stmt.setString(4, pmodel.getAddress());
		 			stmt.setInt(5, pmodel.getAge());
		 			stmt.setString(6,pmodel.getGender());
		 			
		 			stmt.setString(7, pmodel.getCategory());
		 	        stmt.setString(8,pmodel.getEmail());
		 			
						int value=stmt.executeUpdate();
					
						if(value>0)
						{
						
							int did=this.getDoctorId(pmodel.getCategory());
							//int rid=this.getIdofreceptionest(int Reid);
							if(did!=-1)
							{
								stmt=conn.prepareStatement("insert into  doctorpatientjoin values(?,?)");
								stmt.setInt(1, pid);
								stmt.setInt(2, did);
								
								return stmt.executeUpdate()>0?true:false;
							}
								else if(did==-1){
									System.out.println("doctor  not found");
									return false;
								}
								else {
									System.out.println("some problem is there");
									return false;
								}
						
						}
			
			else {
				return false; 	
			    }
		 }
}
		
		
						catch(Exception ex)
						{
							System.out.println("error in patient not added..."+ex);
							
							
						}
						return false;
	
	}

	@Override
	public List<Object[]> getAllPatient() {
		try {
			listPatient=new ArrayList<Object[]>();
			stmt=conn.prepareStatement("select p.pname,p.contact,p.address,p.age,p.gender,p.category,p.email,d.dname,p.patientid from Patient p inner join doctorpatientjoin dpj on p.patientid=dpj.patientid inner join doctor d on d.did=dpj.did");
			  
			  rs=stmt.executeQuery();
			  
			 
				  while(rs.next())
					{
					 
						Object []obj=new Object[]{rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9)};
						
						listPatient.add(obj);
						

					}
				 
//				  PatientModel pmodel=new PatientModel();
//				  pmodel.setPid(rs.getInt(1));
//				  pmodel.setName(rs.getString(2));
//				  
//				  pmodel.setContact(rs.getString(3));
//				  pmodel.setAddress(rs.getString(4));
//				  pmodel.setAge(rs.getInt(5));
//				  pmodel.setGender(rs.getString(6));
//				  
//				  pmodel.setCategory(rs.getString(7));
//				  pmodel.setEmail(rs.getString(8));
//				 
//	    					 listPatient.add(pmodel);
	    		 
	    		 return listPatient.size()>0?listPatient:null;
	    		 
		}
		
	catch(Exception ex)
	   {
		   System.out.println("error is patient not display..."+ex);
	   
	   return null;
    }
	}

	
	public boolean isDeletePatient(int pid) {
		 try {
	    	  stmt=conn.prepareStatement("delete from patient where patientid=?");
	    	  stmt.setInt(1, pid);
	    	  int value=stmt.executeUpdate();
	    	  return value>0?true:false;
	    			
	      }
	      catch(Exception ex)
	      {
	    	  System.out.println("error in patient not delete...."+ex);
	    	  return false;
	      }
	}

	@Override
	public boolean isUpdatePatient(PatientModel pmodel) {
		
try {
			
			stmt=conn.prepareStatement("update patient set pname=?,contact=?,address=? where patientid=?");
			stmt.setString(1,pmodel.getName());
			
			stmt.setString(2, pmodel.getContact());
			stmt.setString(3, pmodel.getAddress());
			stmt.setInt(4,pmodel.getPid());
			int value=stmt.executeUpdate();
			  if(value>0)
			  {
				 return true;
			  }
			  else {
				  
				  return false;
			  }
		
		}
		catch(Exception ex)
		{
		 System.out.println("Error is patient not update"+ex);
		}
		return false;
	}

	@Override
	public List<PatientModel> isSearchPatientByName(String name) {
		try {
			stmt=conn.prepareStatement("select *from  patient where pname=?");
			stmt.setString(1,name);
			  rs=stmt.executeQuery();
			  
			
			  while(rs.next())
			  {
				  PatientModel pmodel=new PatientModel();
				  pmodel.setPid(rs.getInt(1));
				  pmodel.setName(rs.getString(2));
				  
				  pmodel.setContact(rs.getString(3));
				  pmodel.setAddress(rs.getString(4));
				  pmodel.setAge(rs.getInt(5));
				  pmodel.setGender(rs.getString(6));
				  
				  pmodel.setCategory(rs.getString(7));
				  pmodel.setEmail(rs.getString(8));
				 
				 
	    	      list.add(pmodel);
			  }
			 
			  return listPatient.size()>0?list:null;
	    		 
		}
		
	catch(Exception ex)
	   {
		   System.out.println("error is Patient not search"+ex);
		   return null;	
		}
		
		
		
	}
			
	}


