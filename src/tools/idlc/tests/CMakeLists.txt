#
# Copyright(c) 2006 to 2019 ADLINK Technology Limited and others
#
# This program and the accompanying materials are made available under the
# terms of the Eclipse Public License v. 2.0 which is available at
# http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
# v. 1.0 which is available at
# http://www.eclipse.org/org/documents/edl-v10.php.
#
# SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
#
include(CUnit)

add_cunit_executable(cunit_idlc
  ../src/plugin.c
  ../src/generator.c
  ../src/descriptor.c
  ../src/types.c
  descriptor.c)

target_include_directories(
  cunit_idlc PRIVATE
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/../include>"
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/../src>")

if(MSVC)
  # ignore warnings C6255 and 6263 about _alloca
  target_compile_options(cunit_idlc PRIVATE /wd6255 /wd6263)
endif()

target_link_libraries(cunit_idlc PRIVATE idl ddsc ${CMAKE_DL_LIBS})