﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SSinternational.viewmodel
{
   public class ShortBagDtlsVM
    {
        public int id { get; set; }
        public int shortTypeId { get; set; }
        public string ShortName { get; set; }
        public decimal shortpackage { get; set; }
        public decimal shortPkgNet { get; set; }
        public int unloadingDetailId { get; set; }
        public int serial { get; set; }
    }
}
