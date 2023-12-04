using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace UCCFRFWebApp.Models
{
    [Table("Files")]
    public class File
    {
        [Key]
        public string DocTitle { get; set; }
        [StringLength(100)]

        public string Section { get; set; }
        [StringLength(100)]

        public string PageNum { get; set; }
        [StringLength(100)]

        public string Description { get; set; }
     }
}

