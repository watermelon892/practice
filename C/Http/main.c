#include <stdio.h>
#include <stdlib.h>
#include <curl/curl.h>

int main(void) {
  CURL *curl = curl_easy_init();
  char buff[CURL_ERROR_SIZE];

  if (curl != NULL) {
    curl_easy_setopt(curl, CURLOPT_URL, "https://curl.haxx.se/");
    curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1);
    curl_easy_setopt(curl, CURLOPT_ERRORBUFFER, buff);
    if (curl_easy_perform(curl) != CURLE_OK) {
      fprintf(stderr, "%s\n", buff);
      return EXIT_FAILURE;
    }
    curl_easy_cleanup(curl);
  }
  return EXIT_SUCCESS;
}
