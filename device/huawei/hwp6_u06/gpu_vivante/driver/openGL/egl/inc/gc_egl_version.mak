##############################################################################
#
#    Copyright (c) 2005 - 2012 by Vivante Corp.  All rights reserved.
#
#    The material in this file is confidential and contains trade secrets
#    of Vivante Corporation. This is proprietary information owned by
#    Vivante Corporation. No part of this work may be disclosed,
#    reproduced, copied, transmitted, or used in any way for any purpose,
#    without the express written permission of Vivante Corporation.
#
##############################################################################


################################################################################
#
# Copyright (c) 2004-2008 by Vivante Corp.  All rights reserved.
#
# The material in this file is confidential and contains trade secrets of
# Vivante Corporation. This is proprietary information owned by Vivante
# Corporation. No part of this work may be disclosed, reproduced, copied,
# transmitted, or used in any way for any purpose, without the express written
# permission of Vivante Corporation.
#
################################################################################

!ifndef VERSION_DIR
VERSION_DIR = $(AQROOT)\driver\openGL\egl\inc
!endif

!ifndef VERSION
VERSION=0
!endif

!if [echo DATE=%DATE% > __blddate__]
!endif
!if [echo TIME=%TIME% >> __blddate__]
!endif
!include __blddate__
!if [del /q __blddate__]
!endif
DATE=$(DATE:Sun =)		# remove Sun from the date
DATE=$(DATE:Mon =)		# remove Mon from the date
DATE=$(DATE:Tue =)		# remove Tue from the date
DATE=$(DATE:Wed =)		# remove Wed from the date
DATE=$(DATE:Thu =)		# remove Thu from the date
DATE=$(DATE:Fri =)		# remove Fri from the date
DATE=$(DATE:Sat =)		# remove Sat from the date

##
## Version.h file
##

autobuild : $(VERSION_DIR)\gc_egl_version.h

$(VERSION_DIR)\gc_egl_version.h : $(VERSION_DIR)\gc_egl_version.mak
	@copy << $(VERSION_DIR)\gc_egl_version.h
// Auto-generated by the build utility on $(DATE) $(TIME)
#undef VER_PRODUCTMAJORVERSION
#undef VER_PRODUCTMINORVERSION
#undef VER_PRODUCTBUILD
#undef VER_PRODUCTBUILD_QFE
#undef VER_COMPANYNAME_STR
#undef VER_PRODUCTNAME_STR

#define VER_PRODUCTMAJORVERSION  6
#define VER_PRODUCTMINORVERSION  14
#define VER_PRODUCTBUILD         10
#define VER_PRODUCTBUILD_QFE     $(VERSION)
#define VER_PRODUCTNAME_STR      "Vivante Graphics Controller"
#define VER_COMPANYNAME_STR      "Vivante Corporation"
#define VER_LEGALCOPYRIGHT_YEARS "2004-2008"
#define VER_LEGALCOPYRIGHT_STR   "\251 " VER_LEGALCOPYRIGHT_YEARS ", " \
                                 VER_COMPANYNAME_STR
#define VER_FILETYPE             VFT_DRV
#define VER_FILESUBTYPE          VFT2_DRV_DISPLAY
<<
