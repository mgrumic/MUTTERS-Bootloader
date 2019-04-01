BEGIN {
D["PACKAGE_NAME"]=" \"newlib\""
D["PACKAGE_TARNAME"]=" \"newlib\""
D["PACKAGE_VERSION"]=" \"3.0.0\""
D["PACKAGE_STRING"]=" \"newlib 3.0.0\""
D["PACKAGE_BUGREPORT"]=" \"\""
D["PACKAGE_URL"]=" \"\""
D["_MB_LEN_MAX"]=" 1"
D["_NEWLIB_VERSION"]=" \"3.0.0\""
D["__NEWLIB__"]=" 3"
D["__NEWLIB_MINOR__"]=" 0"
D["__NEWLIB_PATCHLEVEL__"]=" 0"
D["_ATEXIT_DYNAMIC_ALLOC"]=" 1"
D["_FVWRITE_IN_STREAMIO"]=" 1"
D["_FSEEK_OPTIMIZATION"]=" 1"
D["_WIDE_ORIENT"]=" 1"
D["_UNBUF_STREAM_OPT"]=" 1"
D["HAVE_INITFINI_ARRAY"]=" 1"
D["_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL"]=" 1"
D["_HAVE_LONG_DOUBLE"]=" 1"
D["_LDBL_EQ_DBL"]=" 1"
  for (key in D) D_is_set[key] = 1
  FS = ""
}
/^[\t ]*#[\t ]*(define|undef)[\t ]+[_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ][_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]*([\t (]|$)/ {
  line = $ 0
  split(line, arg, " ")
  if (arg[1] == "#") {
    defundef = arg[2]
    mac1 = arg[3]
  } else {
    defundef = substr(arg[1], 2)
    mac1 = arg[2]
  }
  split(mac1, mac2, "(") #)
  macro = mac2[1]
  prefix = substr(line, 1, index(line, defundef) - 1)
  if (D_is_set[macro]) {
    # Preserve the white space surrounding the "#".
    print prefix "define", macro P[macro] D[macro]
    next
  } else {
    # Replace #undef with comments.  This is necessary, for example,
    # in the case of _POSIX_SOURCE, which is predefined and required
    # on some systems where configure will not decide to define it.
    if (defundef == "undef") {
      print "/*", prefix defundef, macro, "*/"
      next
    }
  }
}
{ print }
