CC = gcc
CFLAGS = -Wall -g -Werror -pedantic
LD = gcc
LDFLAGS =
all: mytar
mytar: mytar.o traverse_directory.o list_archive.o extract_archive.o create_archive.o
	$(LD) $(LDFLAGS) -o mytar mytar.o traverse_directory.o list_archive.o extract_archive.o create_archive.o
mytar.o: mytar.c
	$(CC) $(CFLAGS) -c -o mytar.o mytar.c
traverse_directory.o: traverse_directory.c
	$(CC) $(CFLAGS) -c -o traverse_directory.o traverse_directory.c
list_archive.o: list_archive.c
	$(CC) $(CFLAGS) -c -o list_archive.o list_archive.c
extract_archive.o: extract_archive.c
	$(CC) $(CFLAGS) -c -o extract_archive.o extract_archive.c
create_archive.o: create_archive.c
	$(CC) $(CFLAGS) -c -o create_archive.o create_archive.c
clean:
	rm -f *.o
