﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Bank.Payment;

using Microsoft.Bank.Payment;
using System.Security.AccessControl;

permissionsetextension 11502 "D365 BASIC - QR-Bill Management for Switzerland" extends "D365 BASIC"
{
    Permissions = tabledata "Swiss QR-Bill Billing Detail" = RIMD,
                  tabledata "Swiss QR-Bill Billing Info" = RIMD,
                  tabledata "Swiss QR-Bill Buffer" = RIMD,
                  tabledata "Swiss QR-Bill Layout" = RIMD,
                  tabledata "Swiss QR-Bill Reports" = RIMD,
                  tabledata "Swiss QR-Bill Setup" = RIMD;
}
