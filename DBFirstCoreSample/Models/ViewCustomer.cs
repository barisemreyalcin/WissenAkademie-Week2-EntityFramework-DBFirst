using System;
using System.Collections.Generic;

namespace DBFirstCoreSample.Models;

public partial class ViewCustomer
{
    public string CustomerId { get; set; } = null!;

    public string CompanyName { get; set; } = null!;

    public string? ContactTitle { get; set; }
}
