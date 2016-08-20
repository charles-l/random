#include <time.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

int get_sudo_random_number() {
    return 4; // chosen by fair dice roll.
              // guaranteed to be random.
}

int main() {
    if(geteuid() == 0) {
        printf("%i\n", get_sudo_random_number());
    } else {
        srand(time(NULL));
        printf("%i\n", rand());
    }
}
