# Makefile
# $Header: /space/home/eng/cjm/cvs/libdprt/Makefile,v 1.7 2012-10-15 11:07:16 eng Exp $ 

include ../Makefile.common
include Makefile.common

# Note we must make the object library before rjs and ccs
# Note we must make rjs before ccs
# Note we must make jni_general before ccs
# Note replaced rjs by ccd_imager
DIRS = object ccd_imager jni_general ccs scs supircam ftspec grope frodospec o

top:
	@for i in $(DIRS); \
	do \
		(echo making in $$i...; cd $$i; $(MAKE) ); \
	done;

checkin:
	-@for i in $(DIRS); \
	do \
		(echo checkin in $$i...; cd $$i; $(MAKE) checkin; $(CI) $(CI_OPTIONS) Makefile); \
	done;

checkout:
	@for i in $(DIRS); \
	do \
		(echo checkout in $$i...; cd $$i; $(CO) $(CO_OPTIONS) Makefile; $(MAKE) checkout); \
	done;

depend:
	@for i in $(DIRS); \
	do \
		(echo depend in $$i...; cd $$i; $(MAKE) depend); \
	done;

clean:
	$(RM) $(RM_OPTIONS) $(TIDY_OPTIONS)
	@for i in $(DIRS); \
	do \
		(echo clean in $$i...; cd $$i; $(MAKE) clean); \
	done;

tidy:
	$(RM) $(RM_OPTIONS) $(TIDY_OPTIONS)
	@for i in $(DIRS); \
	do \
		(echo tidy in $$i...; cd $$i; $(MAKE) tidy); \
	done;

backup: tidy checkin
	@for i in $(DIRS); \
	do \
		(echo backup in $$i...; cd $$i; $(MAKE) backup); \
	done;
	tar cvf $(BACKUP_DIR)/libdprt.tar .
	compress $(BACKUP_DIR)/libdprt.tar

# $Log: not supported by cvs2svn $
# Revision 1.6  2012/10/15 11:05:17  cjm
# Added frodospec.
#
# Revision 1.5  2007/06/20 13:31:36  cjm
# Changed -C's back to cd's - Solaris doesn't support -C.
#
# Revision 1.4  2007/01/09 15:35:31  cjm
# Changed 'cd's to make -C.
#
# Revision 1.3  2005/11/29 16:03:46  cjm
# Added grope directory.
#
# Revision 1.2  2001/05/15 16:43:57  cjm
# New libdprt version.
#
# Revision 1.1  2001/05/15 16:42:15  cjm
# Initial revision
#
# Revision 1.1  1999/12/10 12:26:20  cjm
# Initial revision
#
