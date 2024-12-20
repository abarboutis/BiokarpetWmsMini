$PBExportHeader$w_erpdiff_inventory.srw
forward
global type w_erpdiff_inventory from w_rspwindow_withdtl_altins
end type
type dw_store from uo_dw_altins within datapage1
end type
type pb_2 from picturebutton within datapage1
end type
type pb_1 from picturebutton within w_erpdiff_inventory
end type
type tab_1 from tab within w_erpdiff_inventory
end type
type tabpage_1 from userobject within tab_1
end type
type dw_3 from uo_dwlist_altins within tabpage_1
end type
type tabpage_1 from userobject within tab_1
dw_3 dw_3
end type
type tab_1 from tab within w_erpdiff_inventory
tabpage_1 tabpage_1
end type
type cb_1 from commandbutton within w_erpdiff_inventory
end type
end forward

global type w_erpdiff_inventory from w_rspwindow_withdtl_altins
integer width = 3721
string title = "Σύγκριση Αποθήκη ERP με Απογραφή  "
pb_1 pb_1
tab_1 tab_1
cb_1 cb_1
end type
global w_erpdiff_inventory w_erpdiff_inventory

type variables


string old_select, new_select, where_clause

long dwi

integer groupcheck

string lbgroups,sqlgroups

long mystoreid
end variables

forward prototypes
public subroutine f_setdddw ()
end prototypes

public subroutine f_setdddw ();
 datawindowchild dddw_stores

 dtab.datapage1.dw_store.getchild('storeid',dddw_stores)
 
 dddw_stores.settransobject(sqlca)

 dddw_stores.retrieve(compid)
 
 
 
 
// datawindowchild dddw_itemgroups
//
// dtab.datapage1.dw_itemgroups.getchild('groupitmid',dddw_itemgroups)
// 
// dddw_itemgroups.settransobject(sqlca)
//
// dddw_itemgroups.retrieve(compid)
end subroutine

on w_erpdiff_inventory.create
int iCurrent
call super::create
this.pb_1=create pb_1
this.tab_1=create tab_1
this.cb_1=create cb_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.pb_1
this.Control[iCurrent+2]=this.tab_1
this.Control[iCurrent+3]=this.cb_1
end on

on w_erpdiff_inventory.destroy
call super::destroy
destroy(this.pb_1)
destroy(this.tab_1)
destroy(this.cb_1)
end on

event open;call super::open;
long nullvalue
SetNull(nullvalue) 
f_setdddw()


//RETRIEVE

dtab.datapage1.dw_store.retrieve()

tab_1.tabpage_1.dw_3.retrieve(compid)

f_gcolumnstyle(tab_1.tabpage_1.dw_3)

old_select = mydw2.GetSQLSelect()




//
////SET
//dtab.datapage1.dw_store.setitem(mydw.getrow(),'storeid',nullvalue)
//
//dtab.datapage1.dw_itemgroups.setitem(dtab.datapage1.dw_itemgroups.getrow(),'groupitmid',nullvalue)
//
//
////FOCUS
//dtab.datapage1.dw_store.setfocus()
end event

type pb_last from w_rspwindow_withdtl_altins`pb_last within w_erpdiff_inventory
integer x = 1952
integer y = 2856
end type

type pb_next from w_rspwindow_withdtl_altins`pb_next within w_erpdiff_inventory
integer x = 1847
integer y = 2856
end type

type pb_first from w_rspwindow_withdtl_altins`pb_first within w_erpdiff_inventory
integer x = 1637
integer y = 2856
end type

type pb_prev from w_rspwindow_withdtl_altins`pb_prev within w_erpdiff_inventory
integer x = 1742
integer y = 2856
end type

type pb_functions from w_rspwindow_withdtl_altins`pb_functions within w_erpdiff_inventory
integer x = 1609
integer y = 2628
end type

type pb_options from w_rspwindow_withdtl_altins`pb_options within w_erpdiff_inventory
integer x = 2098
integer y = 2628
end type

type dtabdtl from w_rspwindow_withdtl_altins`dtabdtl within w_erpdiff_inventory
integer x = 23
integer y = 844
integer width = 3675
integer height = 1372
string facename = "Verdana"
end type

type datapagedtl1 from w_rspwindow_withdtl_altins`datapagedtl1 within dtabdtl
integer y = 100
integer width = 3639
integer height = 1256
string text = "Αποθήκη ERP"
end type

type dw_2 from w_rspwindow_withdtl_altins`dw_2 within datapagedtl1
integer width = 3634
integer height = 1260
string dataobject = "dw_inventoryitems_grouped_erp"
boolean hscrollbar = true
end type

event dw_2::retrievestart;call super::retrievestart;open(w_wait)
end event

event dw_2::retrieveend;call super::retrieveend;close(w_wait)
end event

type dw_trace from w_rspwindow_withdtl_altins`dw_trace within w_erpdiff_inventory
integer x = 1001
integer y = 2264
integer width = 1691
end type

type dtab from w_rspwindow_withdtl_altins`dtab within w_erpdiff_inventory
integer x = 23
integer y = 176
integer width = 2190
integer height = 664
string facename = "Verdana"
end type

type datapage1 from w_rspwindow_withdtl_altins`datapage1 within dtab
integer width = 2153
integer height = 548
string text = "Αποθηκευτικός Χώρος"
dw_store dw_store
pb_2 pb_2
end type

on datapage1.create
this.dw_store=create dw_store
this.pb_2=create pb_2
int iCurrent
call super::create
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.dw_store
this.Control[iCurrent+2]=this.pb_2
end on

on datapage1.destroy
call super::destroy
destroy(this.dw_store)
destroy(this.pb_2)
end on

type dw_1 from w_rspwindow_withdtl_altins`dw_1 within datapage1
boolean visible = false
integer x = 206
integer y = 296
integer width = 110
integer height = 104
boolean enabled = false
boolean vscrollbar = false
end type

type pb_del from w_rspwindow_withdtl_altins`pb_del within w_erpdiff_inventory
boolean enabled = false
end type

type pb_save from w_rspwindow_withdtl_altins`pb_save within w_erpdiff_inventory
boolean enabled = false
end type

type pb_add from w_rspwindow_withdtl_altins`pb_add within w_erpdiff_inventory
boolean enabled = false
end type

type cb_cancel from w_rspwindow_withdtl_altins`cb_cancel within w_erpdiff_inventory
integer x = 2848
integer y = 2248
integer height = 104
string facename = "Verdana"
end type

type pb_printscreen from w_rspwindow_withdtl_altins`pb_printscreen within w_erpdiff_inventory
integer x = 334
integer y = 2760
end type

type pb_sendmail from w_rspwindow_withdtl_altins`pb_sendmail within w_erpdiff_inventory
integer x = 55
integer y = 2760
end type

type cb_close from w_rspwindow_withdtl_altins`cb_close within w_erpdiff_inventory
integer x = 3269
integer y = 2248
integer height = 104
string facename = "Verdana"
end type

type gb_bottom from w_rspwindow_withdtl_altins`gb_bottom within w_erpdiff_inventory
integer width = 3671
end type

type gb_1 from w_rspwindow_withdtl_altins`gb_1 within w_erpdiff_inventory
integer x = 23
integer width = 3671
integer height = 172
end type

type pb_calendar from w_rspwindow_withdtl_altins`pb_calendar within w_erpdiff_inventory
integer x = 448
integer y = 2652
end type

type pb_calendar3 from w_rspwindow_withdtl_altins`pb_calendar3 within w_erpdiff_inventory
integer x = 434
integer y = 2552
end type

type mc_calendar from w_rspwindow_withdtl_altins`mc_calendar within w_erpdiff_inventory
integer x = 571
integer y = 2556
end type

type dw_store from uo_dw_altins within datapage1
integer width = 2153
integer height = 548
integer taborder = 100
boolean bringtotop = true
string dataobject = "dw_erpheader"
boolean border = false
borderstyle borderstyle = stylebox!
end type

event itemchanged;call super::itemchanged;

//if dwo.name = 'storeid' then
//	
//	long thissubitemcatid 
//	thissubitemcatid  = dtab.datapage1.dw_itemgroups.getitemnumber(dtab.datapage1.dw_itemgroups.getrow(),'groupitmid')
//
//	IF thissubitemcatid > 0 THEN 
//		
//		where_clause = ' WHERE verpdiffs.COMPID = ' + string(compid)
//		where_clause += ' AND verpdiffs.storeid = ' + data
//		where_clause += ' AND verpdiffs.subitemcatid = ' + string(thissubitemcatid)
//				
//		new_select = old_select + where_clause
//		mydw2.SetSQLSelect(new_select)
//		mydw2.retrieve()
//	
//	ELSE
//				
//		where_clause = ' WHERE verpdiffs.COMPID = ' + string(compid)
//		where_clause += ' AND verpdiffs.storeid = ' + data
//
//		new_select = old_select + where_clause
//		mydw2.SetSQLSelect(new_select)
//		mydw2.retrieve()
//		
//	END IF
//	
//end if
//
//

end event

type pb_2 from picturebutton within datapage1
integer x = 1490
integer y = 124
integer width = 407
integer height = 104
integer taborder = 70
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = greekcharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Verdana"
boolean originalsize = true
string picturename = ".\images\show.jpg"
alignment htextalign = left!
end type

event clicked;
mystoreid = dtab.datapage1.dw_store.getitemnumber(dtab.datapage1.dw_store.getrow(),'storeid')
sqlgroups = ''
lbgroups = ''

FOR dwi = 1 TO tab_1.tabpage_1.dw_3.rowcount()
	
	groupcheck = tab_1.tabpage_1.dw_3.getitemnumber(dwi,'checked')
	
	IF groupcheck = 1 THEN 
		
		IF len(lbgroups) = 0 THEN 
			lbgroups = tab_1.tabpage_1.dw_3.getitemstring(dwi,'groupitemdesc') + ' (' + string(tab_1.tabpage_1.dw_3.getitemnumber(dwi,'groupitmid')) + ')'
			sqlgroups = " AND  ( verpdiffs.subitemcatid = " + string(tab_1.tabpage_1.dw_3.getitemnumber(dwi,'groupitmid'))
		ELSE
			lbgroups += ", " + tab_1.tabpage_1.dw_3.getitemstring(dwi,'groupitemdesc') + ' (' + string(tab_1.tabpage_1.dw_3.getitemnumber(dwi,'groupitmid')) + ')'
			sqlgroups += " OR verpdiffs.subitemcatid = " + string(tab_1.tabpage_1.dw_3.getitemnumber(dwi,'groupitmid'))
		END IF
		
		
	END IF
	
NEXT

sqlgroups += ")"


IF len(lbgroups) > 0 THEN

		where_clause = ' WHERE verpdiffs.COMPID = ' + string(compid)
		where_clause += ' AND verpdiffs.storeid = ' + string(mystoreid)
		where_clause += sqlgroups
		
		
				
		new_select = old_select + where_clause
		mydw2.SetSQLSelect(new_select)
		
	
ELSE
				
		where_clause = ' WHERE verpdiffs.COMPID = ' + string(compid)
		where_clause += ' AND verpdiffs.storeid = ' + string(mystoreid)

		new_select = old_select + where_clause
		mydw2.SetSQLSelect(new_select)
		
END IF

mydw2.retrieve()

pb_1.enabled = true
	

end event

type pb_1 from picturebutton within w_erpdiff_inventory
integer x = 3264
integer y = 44
integer width = 407
integer height = 104
integer taborder = 100
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = greekcharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string picturename = ".\images\winprint.jpg"
string disabledname = ".\images\winprint_disable.jpg"
alignment htextalign = left!
end type

event clicked;


struct_parm print_parm

long thisstoreid
string mystorename

thisstoreid = dtab.datapage1.dw_store.getitemnumber(dtab.datapage1.dw_store.getrow(),'storeid')

print_parm.integerpar1 = mystoreid

if isnull(string(print_parm.integerpar1)) then
	
	ebox('Επιλέξτε Αποθηκευτικό Χώρο')
	return
	
end if

print_parm.stringpar1 = where_clause

print_parm.stringpar2 = " " + lbgroups

SELECT STORENAME INTO :mystorename FROM TSTORES WHERE compid=:compid and storeid=:thisstoreid USING SQLCA;

print_parm.stringpar3 = " " + mystorename

openwithparm(wrep_erpinventory,print_parm)
end event

type tab_1 from tab within w_erpdiff_inventory
event create ( )
event destroy ( )
integer x = 2226
integer y = 176
integer width = 1472
integer height = 664
integer taborder = 20
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = greekcharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Verdana"
long backcolor = 67108864
boolean raggedright = true
boolean focusonbuttondown = true
integer selectedtab = 1
tabpage_1 tabpage_1
end type

on tab_1.create
this.tabpage_1=create tabpage_1
this.Control[]={this.tabpage_1}
end on

on tab_1.destroy
destroy(this.tabpage_1)
end on

type tabpage_1 from userobject within tab_1
event create ( )
event destroy ( )
integer x = 18
integer y = 100
integer width = 1435
integer height = 548
long backcolor = 67108864
string text = "Ομάδες Ειδών"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
dw_3 dw_3
end type

on tabpage_1.create
this.dw_3=create dw_3
this.Control[]={this.dw_3}
end on

on tabpage_1.destroy
destroy(this.dw_3)
end on

type dw_3 from uo_dwlist_altins within tabpage_1
integer width = 1435
integer height = 548
integer taborder = 100
string dataobject = "dw_itemgroups"
boolean vscrollbar = true
boolean border = false
boolean livescroll = false
borderstyle borderstyle = stylebox!
end type

type cb_1 from commandbutton within w_erpdiff_inventory
boolean visible = false
integer x = 2747
integer y = 48
integer width = 402
integer height = 92
integer taborder = 100
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = greekcharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Verdana"
string text = "Where"
end type

event clicked;

dbox(where_clause)
end event

