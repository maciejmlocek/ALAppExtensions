namespace System.Security.AccessControl;

using Microsoft.Utility.ImageAnalysis;
using System.Security.AccessControl;

permissionsetextension 4209 "D365 TEAM MEMBERImage Analyzer" extends "D365 TEAM MEMBER"
{
    Permissions = tabledata "MS - Image Analyzer Tags" = RIMD,
                  tabledata "MS - Img. Analyzer Blacklist" = RIMD;
}
