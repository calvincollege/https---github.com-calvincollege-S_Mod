//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace S_Mod.data_access
{
    using System;
    using System.Collections.Generic;
    
    public partial class product
    {
        public long product_code { get; set; }
        public string make { get; set; }
        public string model { get; set; }
        public Nullable<int> year { get; set; }
        public Nullable<double> price { get; set; }
        public Nullable<int> stock_quantity { get; set; }
        public string image_url { get; set; }
    }
}
