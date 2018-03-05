using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Runtime.Serialization.Json;
using System.Web.Security;
using System.Net;
using System.Net.Mail;
using System.Text;
using REDatabase;

/// <summary>
/// Summary description for WebService4SuperAdmin
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class WebService4SuperAdmin : System.Web.Services.WebService {

    DB_30288_testdbEntities re = new DB_30288_testdbEntities(); 

    public WebService4SuperAdmin () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public bool AddBranch(string name, int ddl, string street, string city, string state, string country, string contact, string pin, int desg, string phno,string mobno, string email, string status, string date)
    {
        try
        {
            RE_Addresses ad = new RE_Addresses();
            ad.AddressTypeId = ddl;
            ad.City = city;
            ad.Country = country;
            ad.State = state;
            ad.PinCode = pin;
            ad.Street = street;
            re.AddToRE_Addresses(ad);
            RE_ContactDetails cd = new RE_ContactDetails();
            cd.ContactName = contact;
            cd.DesignationId = desg;
            cd.EmailID = email;
            cd.PhoneNo = phno;
            cd.MobileNo = mobno;
            re.AddToRE_ContactDetails(cd);
            RE_Branches br = new RE_Branches();
            br.AddressId = ad.AddressId;
            br.BranchName = name;
            br.ContactId = cd.ContactId;
            br.BranchStartDate = Convert.ToDateTime(date);
            br.Status = status;
            re.AddToRE_Branches(br);
            re.SaveChanges();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public SuperAdminServices GetBranch(int id)
    {
        SuperAdminServices sa = new SuperAdminServices();
        var gb = re.RE_Branches.Single(g => g.BranchCode == id);
        sa.bcode = gb.BranchCode;
        sa.bname = gb.BranchName;
        sa.sdate = gb.BranchStartDate.ToString();
        sa.strstatus = gb.Status;
        var adid = re.RE_Addresses.Single(a => a.AddressId == gb.AddressId);
        sa.street = adid.Street;
        sa.city = adid.City;
        sa.state = adid.State;
        sa.country = adid.Country;
        sa.pin = adid.PinCode;
        sa.AddTypeId = adid.AddressTypeId;
        //sa.AddressType = re.RE_AddressTypes.Single(b => b.AddressTypeId == adid.AddressTypeId).AddressTypeName;
        var cd = re.RE_ContactDetails.Single(c => c.ContactId == gb.ContactId);
        sa.contact = cd.ContactName;
        sa.phno = cd.PhoneNo;
        sa.mobno = cd.MobileNo;
        sa.email = cd.EmailID;
        sa.DesgId = cd.DesignationId;
        //sa.DesgType = re.RE_Designations.Single(d => d.DesignationId == cd.DesignationId).TypeName;
        return sa;
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public bool UpdateBranch(int code, string name, int ddl, string street, string city, string state, string country, string contact, string pin, int desg, string phno, string mobno, string email, string status, string date)
    {
        try
        {
            var br = re.RE_Branches.Single(b => b.BranchCode == code);
            var ad = re.RE_Addresses.Single(a => a.AddressId == br.AddressId);
            var cd = re.RE_ContactDetails.Single(e => e.ContactId == br.ContactId);
            ad.AddressTypeId = ddl;
            ad.City = city;
            ad.Country = country;
            ad.State = state;
            ad.PinCode = pin;
            ad.Street = street;
            re.SaveChanges();
            cd.ContactName = contact;
            cd.DesignationId = desg;
            cd.EmailID = email;
            cd.PhoneNo = phno;
            cd.MobileNo = mobno;
            re.SaveChanges();
            br.AddressId = ad.AddressId;
            br.BranchName = name;
            br.ContactId = cd.ContactId;
            br.BranchStartDate = Convert.ToDateTime(date);
            br.Status = status;
            re.SaveChanges();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public bool AddCompany(string name, string startdate, string enddate, string trialdate, string agreement, string brief, string details, bool status, string createddate, string updateddate, string url, int addressid, string street, string city, string state, string country, string pin, string contact, int desg, string phno, string mobno, string email)
    {
        try
        {
            RE_Addresses ad = new RE_Addresses();
            ad.AddressTypeId = addressid;
            ad.City = city;
            ad.Country = country;
            ad.State = state;
            ad.PinCode = pin;
            ad.Street = street;
            re.AddToRE_Addresses(ad);
            re.SaveChanges();
            RE_ContactDetails cd = new RE_ContactDetails();
            cd.ContactName = contact;
            cd.DesignationId = desg;
            cd.EmailID = email;
            cd.PhoneNo = phno;
            cd.MobileNo = mobno;
            re.AddToRE_ContactDetails(cd);
            re.SaveChanges();
            RE_CompanyPackageSetup cps = new RE_CompanyPackageSetup();
            cps.AddressId = ad.AddressId;
            cps.CompanyName = name;
            cps.ContactId = cd.ContactId;
            cps.PackageStartDate = Convert.ToDateTime(startdate);
            cps.PackageEndDate = Convert.ToDateTime(enddate);
            cps.PackageTrailDate = Convert.ToDateTime(trialdate);
            cps.PackageContactAgreement = agreement;
            cps.PackageAgreementBrief = brief;
            cps.PackageDiscussionDetails = details;
            cps.Status =status;
            cps.CreatedDate = Convert.ToDateTime(createddate);
            cps.LastUpdatedDate = Convert.ToDateTime(updateddate);
            cps.AddressId = ad.AddressId;
            cps.ContactId = cd.ContactId;
            cps.WebSiteUrl = url;
            re.AddToRE_CompanyPackageSetup(cps);
            re.SaveChanges();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }

    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public SuperAdminServices GetCompany(int id)
    {
        SuperAdminServices sa = new SuperAdminServices();
        var tb = re.RE_CompanyPackageSetup.Single(n => n.CompanyCode == id);
        sa.Ccode = tb.CompanyCode;
        sa.Cname = tb.CompanyName;
        sa.sdate = tb.PackageStartDate.ToString();
        sa.edate = tb.PackageEndDate.ToString();
        sa.tdate = tb.PackageTrailDate.ToString();
        sa.file = tb.PackageContactAgreement;
        sa.brief = tb.PackageAgreementBrief;
        sa.details = tb.PackageDiscussionDetails;
        sa.status = tb.Status;
        sa.cdate = tb.CreatedDate.ToString();
        sa.ldate = tb.LastUpdatedDate.ToString();
        sa.url = tb.WebSiteUrl;
        var aid= tb.AddressId;
        var ad = re.RE_Addresses.Single(m => m.AddressId == aid);
        sa.AddressType = re.RE_AddressTypes.Single(a => a.AddressTypeId == ad.AddressTypeId).AddressTypeName;
        sa.street = ad.Street;
        sa.city = ad.City;
        sa.state = ad.State;
        sa.country = ad.Country;
        sa.pin = ad.PinCode;
        var cd = re.RE_ContactDetails.Single(c => c.ContactId == tb.ContactId);
        sa.contact = cd.ContactName;
        sa.phno = cd.PhoneNo;
        sa.mobno = cd.MobileNo;
        sa.email = cd.EmailID;
        sa.DesgType = re.RE_Designations.Single(d => d.DesignationId == cd.DesignationId).TypeName;
        return sa;
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public bool UpdateCompany(int ccode,string name, string startdate, string enddate, string trialdate, string agreement, string brief, string details, bool status, string createddate, string updateddate, string url, int addtypeid, string street, string city, string state, string country, string pin, string contact, int desg, string phno, string mobno, string email)
    {
        try
        {
            var cps = re.RE_CompanyPackageSetup.Single(c => c.CompanyCode == ccode);
            var add = re.RE_Addresses.Single(a => a.AddressId == cps.AddressId);
            var cd = re.RE_ContactDetails.Single(e => e.ContactId == cps.ContactId);
            
            add.AddressTypeId = addtypeid;
            add.City = city;
            add.Country = country;
            add.State = state;
            add.PinCode = pin;
            add.Street = street;
            re.SaveChanges();
            cd.ContactName = contact;
            cd.DesignationId = desg;
            cd.EmailID = email;
            cd.PhoneNo = phno;
            cd.MobileNo = mobno;
            re.SaveChanges();
            cps.AddressId = add.AddressId;
            cps.CompanyName = name;
            cps.ContactId = cd.ContactId;
            cps.PackageStartDate = Convert.ToDateTime(startdate);
            cps.PackageEndDate = Convert.ToDateTime(enddate);
            cps.PackageTrailDate = Convert.ToDateTime(trialdate);
            cps.PackageContactAgreement = agreement;
            cps.PackageAgreementBrief = brief;
            cps.PackageDiscussionDetails = details;
            cps.Status = status;
            cps.CreatedDate = Convert.ToDateTime(createddate);
            cps.LastUpdatedDate = Convert.ToDateTime(updateddate);
            cps.AddressId = add.AddressId;
            cps.ContactId = cd.ContactId;
            cps.WebSiteUrl = url;
            re.SaveChanges();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }

    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public bool AddCompanyDetails(int CompanyCode, string ShortName, string Logourl, int AddressId, string PhoneNo, string MobileNo, string FBUrl, string TwUrl, string YtUrl, string GoogleUrl, string FooterImgUrl, string BGImgUrl, string HomeVideoUrl, string WelcomeDesc, string CopyRight, string StyleColor, string PageTitle, string MetaKw, string MetaDesc)
    {
        try
        {
            RE_CompanyDetails de = new RE_CompanyDetails();
            de.CompanyCode = CompanyCode;
            de.ShortName = ShortName;
            de.LogoUrl = Logourl;
            de.AddressId = AddressId;
            de.PhoneNo = PhoneNo;
            de.MobileNo = MobileNo;
            de.FaceBookUrl = FBUrl;
            de.TwitterUrl = TwUrl;
            de.YoutubeUrl = YtUrl;
            de.GoogleUrl = GoogleUrl;
            de.Footerimageurl = FooterImgUrl;
            de.Backgroundimageurl = BGImgUrl;
            de.HomeVideoUrl = HomeVideoUrl;
            de.WelcomeDescription = WelcomeDesc;
            de.CopyRight = CopyRight;
            de.StyleColor = StyleColor;
            de.PageTitle = PageTitle;
            de.MetaKeywords = MetaKw;
            de.MetaDescription = MetaDesc;
            re.AddToRE_CompanyDetails(de);
            re.SaveChanges();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }

    }


    //[WebMethod]
    //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    //public Wrapper getcompanydetailsbyid(int id)
    //{
    //    var cdetails = re.RE_CompanyDetails.Single(n => n.CompanyCode == id);
    //    Wrapper cd = new Wrapper();
    //    cd.code = cdetails.CompanyCode;
    //    cd.ShortName = cdetails.ShortName;
    //    cd.LogoUrl = cdetails.LogoUrl;
    //    cd.Phoneno = cdetails.PhoneNo;
    //    cd.Mobileno = cdetails.MobileNo;
    //    cd.Facebook = cdetails.FaceBookUrl;
    //    cd.Twitter = cdetails.TwitterUrl;
    //    cd.Youtube = cdetails.YoutubeUrl;
    //    cd.Google = cdetails.GoogleUrl;
    //    cd.Fimage = cdetails.Footerimageurl;
    //    cd.Bimage = cdetails.Backgroundimageurl;
    //    cd.Vurl = cdetails.HomeVideoUrl;
    //    cd.Description = cdetails.WelcomeDescription;
    //    cd.CopyRight = cdetails.CopyRight;
    //    cd.SColor = cdetails.StyleColor;
    //    cd.MDesc = cdetails.MetaDescription;
    //    cd.MKeywords = cdetails.MetaKeywords;
    //    cd.Ptitle = cdetails.PageTitle;
    //    var addres = cdetails.AddressId;
    //    var adres = re.RE_Addresses.Single(n => n.AddressId == addres);
    //    var add = re.RE_AddressTypes.Single(n => n.AddressTypeId == adres.AddressTypeId).AddressTypeName;
    //    cd.Aid = cdetails.AddressId;
    //    cd.street = adres.State;
    //    cd.city = adres.City;
    //    cd.state = adres.State;
    //    cd.country = adres.Country;
    //    cd.pincode = adres.PinCode;
    //    return cd;
    //}
    //[WebMethod]
    //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    //public bool UpdateCompany(int id, string sname, string logo, string phone, string mobile, string furl, string turl, string yurl, string gurl, string bimg, string fimg, string vurl, string copy, string color, string ptitle, string mkey, string mdesc, string Desc)
    //{
    //    try
    //    {
    //        var cd = re.RE_CompanyDetails.Single(n => n.CompanyCode == id);
    //        var add = re.RE_Addresses.Single(n => n.AddressId == cd.AddressId);
    //        cd.ShortName = sname;
    //        cd.LogoUrl = logo;
    //        cd.PhoneNo = phone;
    //        cd.MobileNo = mobile;
    //        cd.FaceBookUrl = furl;
    //        cd.TwitterUrl = turl;
    //        cd.YoutubeUrl = yurl;
    //        cd.GoogleUrl = gurl;
    //        cd.Footerimageurl = fimg;
    //        cd.Backgroundimageurl = bimg;
    //        cd.HomeVideoUrl = vurl;
    //        cd.WelcomeDescription = Desc;
    //        cd.CopyRight = copy;
    //        cd.StyleColor = color;
    //        cd.PageTitle = ptitle;
    //        cd.MetaKeywords = mkey;
    //        cd.MetaDescription = mdesc;
    //        re.SaveChanges();
    //        return true;
    //    }
    //    catch
    //    {
    //        return false;
    //    }
    //}
    //[WebMethod]
    //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    //public bool UpdateAddress(int aid, int atype, string street, string city, string country, string state, string pin)
    //{
    //    try
    //    {
    //        var address = re.RE_Addresses.Single(n => n.AddressId == aid);
    //        address.AddressTypeId = atype;
    //        address.Street = street;
    //        address.City = city;
    //        address.Country = country;
    //        address.State = state;
    //        address.PinCode = pin;
    //        re.SaveChanges();
    //        return true;
    //    }
    //    catch
    //    {
    //        return false;
    //    }
    //}

}
