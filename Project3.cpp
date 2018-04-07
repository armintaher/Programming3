/*
 * Replace this comment with the standard EE312 file header!
 */

#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include "String.h"

/* use these two macros and the function functions if you want -- not
   required */
#define SIGNATURE (~0xdeadbeef)

/** STRING(s)
 * Helper macro for accessing ut String object (if applicable)
 * [INPUT] pointer to cstring
 * [OUTPUT] pointer to UT String object (if applicable)
 */
#define STRING(s) ((String*)(s - 3*sizeof(uint32_t)))

/* this simple function can be useful when you implement stage 4 you
 * are not required to use the function, and you can implement stage 4
 * without it */
int32_t isOurs(const char* s) {
    if (STRING(s)->check == SIGNATURE) { return 1; }
    else { return 0; }
}
void checkValid(char* s){   // This function asserts the validity of the String
    assert(*((uint32_t*)s-3));
    assert(isOurs(s));
}

/* allocate a utstring on the heap, initialize the string correctly by
 * copying the characters from 'src' and return a pointer to the first
 * character of actual string data */
char* utstrdup(const char* src) {
    char* ret;
	String* str = (String*)malloc(sizeof(String) + 10 + 1);
    str->length = strlen(src);
    str->capacity = 10;
    str->check = (~0xdeadbeef);
    for(uint32_t i =0; i<=strlen(src); i++){
        str->data[i] = src[i];
    }
    ret = str->data;
    return ret;
}

/* the parameter 'utstr' must be a utstring. Find the length of this
 * string by accessing the meta-data and return that length */
uint32_t utstrlen(const char* utstr) {
	uint32_t size;
    size = STRING(utstr)->length;
	return size;
}

/* s must be a utstring. suffix can be an ordinary string (or a
 * utstring) append the characters from suffix to the string s. Do not
 * allocate any additional storage, and only append as many characters
 * as will actually fit in s. Update the length meta-data for utstring
 * s and then return s */
char* utstrcat(char* s, const char* suffix) {
    checkValid(s);
	int UTString = isOurs(suffix);
    int size_St = utstrlen(s);
    int i=0;
    int j=0;
	if(UTString){

		for (i = 0; i < (STRING(s)->capacity)-size_St; i++) {
            if (STRING(suffix)->data[i] == 0){
                STRING(s)->data[i]= 0;
                STRING(s)->length += STRING(suffix)->length;
                return s;
            }
			STRING(s)->data[i + (STRING(s)->length)] = STRING(suffix)->data[i];
		}
        STRING(s)->length += STRING(suffix)->length;
	}
	if (!UTString){
        int size1= strlen(suffix);
        int size = utstrlen(s);
        for (j = 0; size < STRING(s)->capacity; j++) {
            STRING(s)->data [size] = suffix[j];
            if (STRING(suffix)->data[j] == 0){
                STRING(s)->data[size]= 0;
                STRING(s)->length+=size1;
                return s;
            }
            size++;
        }
        STRING(s)->length+=size1;
		}
	return s;
}

/* 'dst' must be a utstring. 'src' can be an ordinary string (or a
 * utstring) overwrite the characters in dst with the characters from
 * src. Do not overflow the capacity of dst For example, if src has
 * five characters and dst has capacity for 10, then copy all five
 * characters However, if src has ten characters and dst only has
 * capacity for 8, then copy only the first 8 characters. Do not
 * allocate any additional storage, do not change capacity. Update the
 * length meta-data for dst and then return dst */
char* utstrcpy(char* dst, const char* src) {
	int UTString = isOurs(src);
    int i=0;
    int j=0;
	if(UTString){
		for (i =0; i < STRING(dst)->capacity; i++ ){
            if (STRING(src)->data[i] == 0){
                STRING(dst)->data[i]= 0;
                STRING(dst)->length = STRING(src)->length;
                STRING(dst)->check = (~0xdeadbeef);
                return dst;
            }
			STRING(dst)->data[i] = STRING(src)->data[i];
			}
        STRING(dst)->length = STRING(src)->length;
		}
	if (!UTString){
		for (j =0; j < STRING(dst)->capacity; j++ ) {
            if (STRING(src)->data[j] == 0){
                STRING(dst)->data[j]= 0;
                STRING(dst)->length = strlen(src);
                STRING(dst)->check = (~0xdeadbeef);
                return dst;
            }
			STRING(dst)->data[j] = src[j];
			}
        STRING(dst)->length = strlen(src);
	}
	return dst;
}

/* self must be a utstring. deallocate the storage for this string
 * (i.e., locate the start of the chunk and call free to dispose of
 * the chunk, note that the start of the chunk will be 12 bytes before
 * *self) */
void utstrfree(char* self) {
    checkValid(self);
    free( ((uint32_t*)self)-3);
}

/* s must be a utstring.  ensure that s has capacity at least as large
 * as 'new_capacity' if s already has capacity equal to or larger than
 * new_capacity, then return s if s has less capacity than
 * new_capacity, then allocate new storage with sufficient space to
 * store new_capacity characters (plus a terminating zero), copy the
 * current characters from s into this new storage. Update the
 * meta-data to correctly describe new new utstring you've created,
 * deallocate s and then return a pointer to the first character in
 * the newly allocated storage */
char* utstrrealloc(char* s, uint32_t new_capacity) {
    checkValid(s);
    char* ret;
    String* string = STRING(s);
    if (string->capacity >= new_capacity) { return s; }
    String* Copy = (String *) malloc(sizeof(String)+ (new_capacity) + 1);
    int i = 0;
    for (i = 0; string->data[i] != 0; i++) {
        Copy->data[i] = string->data[i];
    }
    Copy->data[i + 1] = 0;
    Copy->capacity = new_capacity;
    Copy->length = strlen(s);
    Copy->check = (~0xdeadbeef);
    utstrfree(s);
    ret = Copy->data;
    return (ret);

   }
