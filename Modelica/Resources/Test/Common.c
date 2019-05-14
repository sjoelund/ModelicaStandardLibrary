#include "../C-Sources/ModelicaUtilities.h"
#include <stdlib.h>
#include <stdio.h>

char* ModelicaAllocateString(size_t len) {
  void *data = malloc(len); /* Never free'd in the test programs */
  assert(data);
  return data;
}

char* ModelicaAllocateStringWithErrorReturn(size_t len) {
  return malloc(len); /* Never free'd in the test programs */
}

void ModelicaFormatError(const char *string, ...) {
  assert(0);
}

void ModelicaFormatMessage(const char *string, ...) {
}

void ModelicaVFormatMessage(const char *string, va_list args) {
}

void ModelicaError(const char *string) {
  fputs(string, stderr);
  fputc('\n', stderr);
  assert(0);
}

void ModelicaVFormatError(const char *string, va_list args) {
  assert(0);
}
