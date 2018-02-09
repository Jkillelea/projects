#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdio.h>

struct stat metadata;
// struct stat {
//   dev_t     st_dev;         /* ID of device containing file */
//   ino_t     st_ino;         /* inode number
//   mode_t    st_mode;        /* protection
//   nlink_t   st_nlink;       /* number of hard links
//   uid_t     st_uid;         /* user ID of owner
//   gid_t     st_gid;         /* group ID of owner
//   dev_t     st_rdev;        /* device ID (if special file)
//   off_t     st_size;        /* total size, in bytes
//   blksize_t st_blksize;     /* blocksize for filesystem I/O
//   blkcnt_t  st_blocks;      /* number of 512B blocks allocated
//
//   /* Since Linux 2.6, the kernel supports
//      precision for the following timestamp fields.
//      For the details before Linux 2.6, see NOTES. */
//
//   struct timespec st_atim;  /* time of last access */
//   struct timespec st_mtim;  /* time of last modification */
//   struct timespec st_ctim;  /* time of last status change */
//
//   #define st_atime st_atim.tv_sec      /* Backward compatibility */
//   #define st_mtime st_mtim.tv_sec
//   #define st_ctime st_ctim.tv_sec
// };

int main(int argc, char *argv[]) {
  if(argc < 2)
    return 1;

  int res = stat(argv[1], &metadata);
  if (res != 0) {
    puts("stat(2) failed!");
    return 2;
  }

  printf("inode: %ld\n", metadata.st_ino);
  printf("mode: %d\n",   metadata.st_mode);
  printf("uid: %d\n",    metadata.st_uid);
  printf("gid: %d\n",    metadata.st_gid);
  printf("size: %ld\n",  metadata.st_size);
  printf("atime: %ld\n", metadata.st_atime);
  printf("mtime: %ld\n", metadata.st_mtime);
  printf("ctime: %ld\n", metadata.st_ctime);
}
