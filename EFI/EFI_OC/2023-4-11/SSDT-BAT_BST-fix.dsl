// battery_BIF
//
// In config ACPI\Patch, _BIF to XBIF
// Find:             5F424946
// Replace:          58424946
// TableSignature:   44534454
//
DefinitionBlock ("", "SSDT", 2, "OCLT", "BAT1_BIF", 0)
{
    External(_SB.PCI0.LPCB.H_EC.BAT1, DeviceObj)
    External(_SB.PCI0.LPCB.H_EC.BAT1.XBIF, MethodObj)
       
    Scope(_SB.PCI0.LPCB.H_EC.BAT1)
    {
        Method (_BIF, 0, Serialized)
        {            
            Name (XBPK, Package (0x0D){})
            Local0 = \_SB.PCI0.LPCB.H_EC.BAT1.XBIF()
            XBPK [0]= DerefOf (Local0[0])
            XBPK [1]= DerefOf (Local0[1])
            XBPK [2]= DerefOf (Local0[2])
            XBPK [3]= DerefOf (Local0[3])
            XBPK [4]= DerefOf (Local0[4])
            XBPK [5]= DerefOf (Local0[5])
            XBPK [6]= DerefOf (Local0[6])
            XBPK [7]= DerefOf (Local0[7])
            XBPK [8]= DerefOf (Local0[8])
            XBPK [9]= DerefOf (Local0[9])
            XBPK [0xA]= DerefOf (Local0[0xA])+1
            XBPK [0xB]= DerefOf (Local0[0xB])
            XBPK [0xC]= DerefOf (Local0[0xC])

            If (_OSI ("Darwin"))
            { 
                Return (XBPK)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.H_EC.BAT1.XBIF())
            }  
        }
    }
}
//EOF

