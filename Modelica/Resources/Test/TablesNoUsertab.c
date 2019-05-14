#include <string.h>
#include <assert.h>

#include "Common.c"

void* ModelicaStandardTables_CombiTimeTable_init(const char* tableName,
                                                 const char* fileName,
                                                 double* table, size_t nRow,
                                                 size_t nColumn,
                                                 double startTime,
                                                 int* columns,
                                                 size_t nCols, int smoothness,
                                                 int extrapolation);

int main(int argc, char **argv) {
  void *init = ModelicaStandardTables_CombiTimeTable_init;
  assert(init);
  return 0;
}
