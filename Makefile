# Makefile
# $Header: /space/home/eng/cjm/cvs/libdprt/Makefile,v 1.4 2007-01-09 15:35:31 cjm Exp $ 

include ../Makefile.common
include Makefile.common

# Note we must make the object library before rjs and ccs
# Note we must make rjs before ccs
# Note we must make jni_general before ccs
DIRS = object rjs jni_general ccs scs supircam ftspec grope

top:
	@for i in $(DIRS); \
	do \
		(echo making in $$i...; $(MAKE) -C $$i ); \
	done;

checkin:
	-@for i in $(DIRS); \
	do \
		(echo checkin in $$i...; $(MAKE) -C $$i checkin; cd $$i; $(CI) $(CI_OPTIONS) Makefile); \
	done;

checkout:
	@for i in $(DIRS); \
	do \
		(echo checkout in $$i...; cd $$i; $(CO) $(CO_OPTIONS) Makefile; $(MAKE) checkout); \
	done;

depend:
	@for i in $(DIRS); \
	do \
		(echo depend in $$i...; $(MAKE) -C $$i depend); \
	done;

clean:
	$(RM) $(RM_OPTIONS) $(TIDY_OPTIONS)
	@for i in $(DIRS); \
	do \
		(echo clean in $$i...; $(MAKE) -C $$i clean); \
	done;

tidy:
	$(RM) $(RM_OPTIONS) $(TIDY_OPTIONS)
	@for i in $(DIRS); \
	do \
		(echo tidy in $$i...; $(MAKE) -C $$i tidy); \
	done;

backup: tidy checkin
	@for i in $(DIRS); \
	do \
		(echo backup in $$i...; $(MAKE) -C $$i backup); \
	done;
	tar cvf $(BACKUP_DIR)/libdprt.tar .
	compress $(BACKUP_DIR)/libdprt.tar

# $Log: not supported by cvs2svn $
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
