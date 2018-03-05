using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using REDatabase;

/// <summary>
/// Summary description for SuperAdminServices
/// </summary>
public class SuperAdminServices
{

    DB_30288_testdbEntities re = new DB_30288_testdbEntities();

	public SuperAdminServices()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int ?AddTypeId {get;set;}
    public string AddressType {get;set;}
    public int ?DesgId { get; set; }
    public string DesgType { get; set; }
    public int Ccode { get; set; }
    public string Cname { get; set; }
    public string sdate { get; set; }
    public string edate { get; set; }
    public string tdate { get; set; }
    public string file { get; set; }
    public string brief { get; set; }
    public string details { get; set; }
    public bool ?status { get; set; }
    public string strstatus { get; set; }
    public string cdate { get; set; }
    public string ldate { get; set; }
    public int addtypeid { get; set; }
    public int contactid { get; set; }
    public string url { get; set; }
    public int MyProperty { get; set; }
    public string street { get; set; }
    public string city { get; set; }
    public string state { get; set; }
    public string country { get; set; }
    public string pin { get; set; }
    public string contact { get; set; }
    public string phno { get; set; }
    public string mobno { get; set; }
    public string email { get; set; }
    public int bcode { get; set; }
    public string bname { get; set; }
    

    public List<SuperAdminServices> AddType()
    {
        return re.RE_AddressTypes.OrderByDescending(n => n.AddressTypeId).
            Select(n => new SuperAdminServices
            {
                AddTypeId = n.AddressTypeId,
                AddressType = n.AddressTypeName
            }).ToList();
    }

    public List<SuperAdminServices> DesigTypes()
    {
        return re.RE_Designations.OrderByDescending(n => n.DesignationId).
            Select(n => new SuperAdminServices
            {
                DesgId=n.DesignationId,
                DesgType=n.TypeName
            }).ToList();
    }

    public List<SuperAdminServices> Companies()
    {


        return re.RE_CompanyPackageSetup.OrderByDescending(n => n.CompanyCode).
               Select(n => new SuperAdminServices
               {
                   Ccode = n.CompanyCode,
                   Cname = n.CompanyName
               }).ToList();
    }

}