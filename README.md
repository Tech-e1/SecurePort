<h1 align="center">SecurePort</h1>
<img width="400" height="400" alt="SecurePort" src="https://github.com/user-attachments/assets/80619698-f86f-40a7-8a0a-5acd3683ffdf" />


---

## Description

A root module inspired by the pixel line of usb security found commonly on GrapheneOS. It is designed to disable developer options entirely while device is in locked state. *MTP protection recently added at the software level. The module should run at first boot.

---

#### Installation
Save this repo as zip\
Flash on rooted device in root manager of choice\
Reboot

---
#### Contribute
We are in need of testers to verify this works for a wide variety of OEM and OS types. Once enough users confirm viability, the next step is publishing to a Magisk Repo such as Alt-repo
----
#### Best Practices

┌─────────────────────────────────────────────────────────────────┐
│              LAYERED USB-C SECURITY STACK                        │
└─────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────────┐
│  Layer 4: Physical Security                                     │
│  ┌───────────────────────────────────────────────────────────┐  │
│  │  • Device kept on person / in secure location             │  │
│  │  • Tamper-evident seals                                   │  │
│  │  • Physical USB-C port lock installed                     │  │
│  └───────────────────────────────────────────────────────────┘  │
│                              │                                  │
│                              ▼                                  │
│  ┌───────────────────────────────────────────────────────────┐  │
│  │  Layer 3: Hardware Protection                             │  │
│  │  ┌─────────────────────────────────────────────────────┐  │  │
│  │  │  Physical USB-C Port Lock                           │  │  │
│  │  │  • Prevents unauthorized cable insertion            │  │  │
│  │  │  • Requires special key/tool to remove              │  │  │
│  │  │  • Tamper-evident (visible if removed)              │  │  │
│  │  └─────────────────────────────────────────────────────┘  │  │
│  └───────────────────────────────────────────────────────────┘  │
│                              │                                  │
│                              ▼                                  │
│  ┌───────────────────────────────────────────────────────────┐  │
│  │  Layer 2: Bootloader Protection                           │  │
│  │  ┌─────────────────────────────────────────────────────┐  │  │
│  │  │  • Bootloader locked (if possible)                  │  │  │
│  │  │  • Verified Boot enabled                            │  │  │
│  │  │  • Custom recovery blocked                          │  │  │
│  │  └─────────────────────────────────────────────────────┘  │  │
│  └───────────────────────────────────────────────────────────┘  │
│                              │                                  │
│                              ▼                                  │
│  ┌───────────────────────────────────────────────────────────┐  │
│  │  Layer 1: Android Runtime Protection                      │  │
│  │  ┌─────────────────────────────────────────────────────┐  │  │
│  │  │  SecurePort / RO_adb_lock Module                    │  │  │
│  │  │  • ADB disabled when screen locked                  │  │  │
│  │  │  • MTP disabled when screen locked                  │  │  │
│  │  │  • Automatic re-enable when unlocked                │  │  │
│  │  └─────────────────────────────────────────────────────┘  │  │
│  └───────────────────────────────────────────────────────────┘  │
│                              │                                  │
│                              ▼                                  │
│  ┌───────────────────────────────────────────────────────────┐  │
│  │  Layer 0: Data Protection                                 │  │
│  │  ┌─────────────────────────────────────────────────────┐  │  │
│  │  │  • Full disk encryption enabled                     │  │  │
│  │  │  • Strong lock screen PIN/password                  │  │  │
│  │  │  • Biometric authentication                         │  │  │
│  │  └─────────────────────────────────────────────────────┘  │  │
│  └───────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘

Few devices may be able to excel in Layer 2 but a combination of the others can be meaningful.

## License

                    GNU GENERAL PUBLIC LICENSE
                       Version 3, 29 June 2007

 Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.

                            Preamble

  The GNU General Public License is a free, copyleft license for
software and other kinds of works.

  The licenses for most software and other practical works are designed
to take away your freedom to share and change the works.  By contrast,
the GNU General Public License is intended to guarantee your freedom to
share and change all versions of a program--to make sure it remains free
software for all its users.  We, the Free Software Foundation, use the
GNU General Public License for most of our software; it applies also to
any other work released this way by its authors.  You can apply it to
your programs, too.

[Back To The Top](#read-me-template)

-
