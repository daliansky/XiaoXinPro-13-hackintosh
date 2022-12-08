//
//  kern_rtc.hpp
//  Lilu
//
//  Copyright © 2018 vit9696. All rights reserved.
//

#ifndef kern_rtc_h
#define kern_rtc_h

#include <Headers/kern_util.hpp>
#include <IOKit/IOService.h>
#include <IOKit/acpi/IOACPIPlatformDevice.h>
#include <IOKit/IOUserClient.h>

class RTCStorage {
	/**
	 *  Apple-specific RTC checksum addresses
	 */
	static constexpr uint8_t APPLERTC_HASHED_ADDR = 0x0E;
	static constexpr uint8_t APPLERTC_CHECKSUM_ADDR1 = 0x58;
	static constexpr uint8_t APPLERTC_CHECKSUM_ADDR2 = 0x59;

	/**
	 *  AppleRTC service handle
	 */
	IOService *rtcSrv {nullptr};

	/**
	 *  Low-level RTC read (does not check memory availability).
	 *
	 *  @param dev     RTC ACPI device
	 *  @param offset  offset
	 *
	 *  @result read value
	 */
	static uint8_t readByte(IOACPIPlatformDevice *dev, uint8_t offset);

	/**
	 *  Low-level RTC write (does not check memory availability).
	 *
	 *  @param dev     RTC ACPI device
	 *  @param offset  offset
	 *  @param value   value
	 */
	static void writeByte(IOACPIPlatformDevice *dev, uint8_t offset, uint8_t value);
public:
	/**
	 *  General access RTC ports on x86 systems.
	 */
	static constexpr uint8_t R_PCH_RTC_INDEX = 0x70;
	static constexpr uint8_t R_PCH_RTC_TARGET = 0x71;
	static constexpr uint8_t R_PCH_RTC_EXT_INDEX = 0x72;
	static constexpr uint8_t R_PCH_RTC_EXT_TARGET = 0x73;

	/**
	 *  RTC has N banks (we support up to 2) of memory.
	 */
	static constexpr uint8_t RTC_BANK_SIZE = 0x80;

	/**
	 *  Non-ext RTC index register uses higher bit for nmi.
	 */
	static constexpr uint8_t RTC_DATA_MASK = 0x7F;
	static constexpr uint8_t RTC_NMI_MASK = 0x80;

	/**
	 *  Time offsets.
	 */
	static constexpr uint8_t RTC_SEC = 0x00;
	static constexpr uint8_t RTC_MIN = 0x02;
	static constexpr uint8_t RTC_HOUR = 0x04;

	static constexpr uint8_t RTC_DAY = 0x07;
	static constexpr uint8_t RTC_MON = 0x08;
	static constexpr uint8_t RTC_YEAR = 0x09;
	
#if __MAC_OS_X_VERSION_MIN_REQUIRED < __MAC_10_5
	using t_UserClientExternalMethod = IOReturn (*)(IORegistryEntry *service, uint32_t selector, IOExternalMethodArguments * arguments,
																									IOExternalMethodDispatch * dispatch, OSObject * target, void * reference);
	static constexpr size_t UserClientExternalMethodIndex = 0x129;
#endif

	/**
	 *  Attempt to connect to active RTC service
	 *
	 *  @param wait  wait for service availability
	 *
	 *  @return true on success
	 */
	EXPORT bool init(bool wait=true);

	/**
	 *  Release obtained RTC service
	 */
	EXPORT void deinit();

	/**
	 *  Check whether extended (higher 128 bytes) is available
	 *
	 *  @return true on success
	 */
	EXPORT bool checkExtendedMemory();

	/**
	 *  Read memory from RTC
	 *
	 *  @param off     offset to read data from
	 *  @param size    data size
	 *  @param buffer  data buffer to read to
	 *
	 *  @return true on success
	 */
	EXPORT bool read(uint64_t off, uint32_t size, uint8_t *buffer);

	/**
	 *  Write memory to RTC
	 *
	 *  @param off     offset to write data to
	 *  @param size    data size
	 *  @param buffer  data buffer to write from
	 *
	 *  @return true on success
	 */
	EXPORT bool write(uint64_t off, uint32_t size, uint8_t *buffer);

	/**
	 *  Obtain RTC device for direct writing.
	 *  Written as inline to avoid IOACPIPlatformDevice dependency.
	 *
	 *  @param name  device name
	 *
	 *  @return RTC ACPI device for I/O access, must be released
	 */
	static inline IOACPIPlatformDevice *getRTCDevice(const char *name = "PNP0B00") {
		IOService *rtcDev = nullptr;
		auto matching = IOService::nameMatching(name);
		if (matching) {
#if __MAC_OS_X_VERSION_MIN_REQUIRED < __MAC_10_6
			rtcDev = IOService::waitForService(matching);
			if (rtcDev)
				rtcDev->retain();
#else
			rtcDev = IOService::waitForMatchingService(matching);
			matching->release();
#endif

		} else {
			SYSLOG("rtc", "failed to allocate rtc device matching");
		}

		if (rtcDev) {
			DBGLOG("rtc", "got rtc device");
			auto acpiDev = OSDynamicCast(IOACPIPlatformDevice, rtcDev);
			if (acpiDev) {
				DBGLOG("rtc", "got rtc acpi device");
				return acpiDev;
			} else {
				SYSLOG("rtc", "failed to obtain rtc acpi device");
				rtcDev->release();
			}
		}

		SYSLOG("rtc", "failed to get rtc device");
		return nullptr;
	}

	/**
	 *  Directly read RTC memory (UNSAFE, usage with caution!)
	 *
	 *  @param dev      RTC device
	 *  @param off      offset to read data from
	 *  @param size     data size
	 *  @param buffer   data buffer to read to
	 *  @param introff  turn interrupts off
	 *
	 *  @return true on success
	 */
	EXPORT static void readDirect(IOACPIPlatformDevice *dev, uint8_t off, uint16_t size, uint8_t *buffer, bool introff);

	/**
	 *  Directly write RTC memory (UNSAFE, usage with caution!)
	 *
	 *  @param dev      RTC device
	 *  @param off        offset to read data from
	 *  @param size       data size
	 *  @param buffer     data buffer to read to
	 *  @param updatecrc  recalculate crc on write
	 *  @param introff    turn interrupts off
	 *
	 *  @return true on success
	 */
	EXPORT static void writeDirect(IOACPIPlatformDevice *dev, uint8_t off, uint16_t size, uint8_t *buffer, bool updatecrc, bool introff);


	/**
	 *  Directly read RTC memory (UNSAFE, usage with caution!), this is just a compatibility function.
	 *
	 *  @param off      offset to read data from
	 *  @param size     data size
	 *  @param buffer   data buffer to read to
	 *  @param introff  turn interrupts off
	 *
	 *  @return true on success
	 */
	static inline bool readDirect(uint8_t off, uint16_t size, uint8_t *buffer, bool introff) {
		if (size > RTC_BANK_SIZE*2 - off) {
			SYSLOG("rtc", "reading unsupported size");
			return false;
		}

		auto rtc = getRTCDevice();
		if (rtc) {
			readDirect(rtc, off, size, buffer, introff);
			rtc->release();
			return true;
		}

		return false;
	}

	/**
	 *  Directly write RTC memory (UNSAFE, usage with caution!), this is just a compatibility function.
	 *
	 *  @param off        offset to read data from
	 *  @param size       data size
	 *  @param buffer     data buffer to read to
	 *  @param updatecrc  recalculate crc on write
	 *  @param introff    turn interrupts off
	 *
	 *  @return true on success
	 */
	static inline bool writeDirect(uint8_t off, uint16_t size, uint8_t *buffer, bool updatecrc, bool introff) {
		if (size > RTC_BANK_SIZE*2 - off) {
			SYSLOG("rtc", "writing unsupported size");
			return false;
		}

		auto rtc = getRTCDevice();
		if (rtc) {
			writeDirect(rtc, off, size, buffer, updatecrc, introff);
			rtc->release();
			return true;
		}

		return false;
	}
};

#endif /* kern_rtc_h */
