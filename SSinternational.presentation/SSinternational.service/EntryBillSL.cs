﻿using AutoMapper;
using SSinternational.dataaccess.POCO;
using SSinternational.viewmodel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SSinternational.service
{
    public class EntryBillSL
    {
        public IEnumerable<EntryBillMasterVM> getEntryBillList(int company, int year){
            EntryBillPOCO _entryBillPOCO = new EntryBillPOCO();
            IEnumerable<EntryBillMasterVM> _VM = Mapper.Map<IEnumerable<EntryBillPOCO>, IEnumerable<EntryBillMasterVM>>(_entryBillPOCO.getEntryBillList(company,year));
            return _VM;
        }

        public IEnumerable<EntryBillDtlVM> getArrivalInvoices(int arrivalId) {
            EntryBillDetailsPOCO _entryBillPOCO = new EntryBillDetailsPOCO();
            IEnumerable<EntryBillDtlVM> _VM = Mapper.Map<IEnumerable<EntryBillDetailsPOCO>, IEnumerable<EntryBillDtlVM>>(_entryBillPOCO.getArrivalInvoices(arrivalId));
            return _VM;
        }

        public ratemasterVM getEntryRentRate(int companyId, int yearId) {
            rateMasterPOCO _ratePOCO = new rateMasterPOCO();
            ratemasterVM _VM = Mapper.Map<rateMasterPOCO, ratemasterVM>(_ratePOCO.getRateMasterData(companyId, yearId));
            return _VM;
        
        }
    }
}
