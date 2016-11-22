SUBDIRS  := $(wildcard */.)
SUBDIRSC := $(wildcard */.)

.PHONY : all $(SUBDIRS)
all : $(SUBDIRS)

clean :
	@for i in $(SUBDIRS); do \
	(cd $$i; $(MAKE) clean); done

$(SUBDIRS) :
	$(MAKE) -C $@ clean all
