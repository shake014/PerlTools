SRCS = cat.pl checksum.pl decrypt.pl encrypt.pl false.pl true.pl rm.pl yes.pl
LIBS = libtools.pl
OBJS = $(SRCS:.pl=)

all: $(OBJS)

%: %.go $(LIBS)
@echo " PERL " $<
@perl build $< $(LIBS)

clean:
rm -f $(OBJS)
