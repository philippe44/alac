all: alac

libalac=ag_dec.c ALACBitUtilities.c ALACDecoder.cpp dp_dec.c EndianPortable.c matrix_dec.c alac_wrapper.cpp

CCOPTS=-g -Wunused-parameter -Wall -O2 

alac: FORCE
	$(CC) $(CCOPTS) -c $(libalac) -I.
	$(AR) rcs libalac.a *.o
	
clean:
	rm -f *.o *.a

FORCE:
