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
    
    public partial class shopping_cart
    {
        public int record_id { get; set; }
        public int cart_id { get; set; }
        public int quantity { get; set; }
        public int product_id { get; set; }
        public Nullable<System.DateTime> date_created { get; set; }
    }
}