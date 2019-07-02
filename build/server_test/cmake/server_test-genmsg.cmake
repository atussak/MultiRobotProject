# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "server_test: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iserver_test:/home/user/Desktop/master/devel/share/server_test/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(server_test_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg" NAME_WE)
add_custom_target(_server_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "server_test" "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg" "server_test/servertestFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg" NAME_WE)
add_custom_target(_server_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "server_test" "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg" "server_test/servertestActionFeedback:std_msgs/Header:server_test/servertestActionGoal:server_test/servertestActionResult:server_test/servertestFeedback:server_test/servertestResult:server_test/servertestGoal:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg" NAME_WE)
add_custom_target(_server_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "server_test" "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg" ""
)

get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg" NAME_WE)
add_custom_target(_server_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "server_test" "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg" "server_test/servertestGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg" NAME_WE)
add_custom_target(_server_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "server_test" "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:server_test/servertestResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg" NAME_WE)
add_custom_target(_server_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "server_test" "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg" ""
)

get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg" NAME_WE)
add_custom_target(_server_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "server_test" "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server_test
)
_generate_msg_cpp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server_test
)
_generate_msg_cpp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server_test
)
_generate_msg_cpp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server_test
)
_generate_msg_cpp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server_test
)
_generate_msg_cpp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server_test
)
_generate_msg_cpp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server_test
)

### Generating Services

### Generating Module File
_generate_module_cpp(server_test
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server_test
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(server_test_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(server_test_generate_messages server_test_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg" NAME_WE)
add_dependencies(server_test_generate_messages_cpp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg" NAME_WE)
add_dependencies(server_test_generate_messages_cpp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg" NAME_WE)
add_dependencies(server_test_generate_messages_cpp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg" NAME_WE)
add_dependencies(server_test_generate_messages_cpp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg" NAME_WE)
add_dependencies(server_test_generate_messages_cpp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg" NAME_WE)
add_dependencies(server_test_generate_messages_cpp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg" NAME_WE)
add_dependencies(server_test_generate_messages_cpp _server_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(server_test_gencpp)
add_dependencies(server_test_gencpp server_test_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS server_test_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/server_test
)
_generate_msg_eus(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/server_test
)
_generate_msg_eus(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/server_test
)
_generate_msg_eus(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/server_test
)
_generate_msg_eus(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/server_test
)
_generate_msg_eus(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/server_test
)
_generate_msg_eus(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/server_test
)

### Generating Services

### Generating Module File
_generate_module_eus(server_test
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/server_test
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(server_test_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(server_test_generate_messages server_test_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg" NAME_WE)
add_dependencies(server_test_generate_messages_eus _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg" NAME_WE)
add_dependencies(server_test_generate_messages_eus _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg" NAME_WE)
add_dependencies(server_test_generate_messages_eus _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg" NAME_WE)
add_dependencies(server_test_generate_messages_eus _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg" NAME_WE)
add_dependencies(server_test_generate_messages_eus _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg" NAME_WE)
add_dependencies(server_test_generate_messages_eus _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg" NAME_WE)
add_dependencies(server_test_generate_messages_eus _server_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(server_test_geneus)
add_dependencies(server_test_geneus server_test_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS server_test_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server_test
)
_generate_msg_lisp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server_test
)
_generate_msg_lisp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server_test
)
_generate_msg_lisp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server_test
)
_generate_msg_lisp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server_test
)
_generate_msg_lisp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server_test
)
_generate_msg_lisp(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server_test
)

### Generating Services

### Generating Module File
_generate_module_lisp(server_test
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server_test
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(server_test_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(server_test_generate_messages server_test_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg" NAME_WE)
add_dependencies(server_test_generate_messages_lisp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg" NAME_WE)
add_dependencies(server_test_generate_messages_lisp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg" NAME_WE)
add_dependencies(server_test_generate_messages_lisp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg" NAME_WE)
add_dependencies(server_test_generate_messages_lisp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg" NAME_WE)
add_dependencies(server_test_generate_messages_lisp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg" NAME_WE)
add_dependencies(server_test_generate_messages_lisp _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg" NAME_WE)
add_dependencies(server_test_generate_messages_lisp _server_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(server_test_genlisp)
add_dependencies(server_test_genlisp server_test_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS server_test_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/server_test
)
_generate_msg_nodejs(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/server_test
)
_generate_msg_nodejs(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/server_test
)
_generate_msg_nodejs(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/server_test
)
_generate_msg_nodejs(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/server_test
)
_generate_msg_nodejs(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/server_test
)
_generate_msg_nodejs(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/server_test
)

### Generating Services

### Generating Module File
_generate_module_nodejs(server_test
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/server_test
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(server_test_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(server_test_generate_messages server_test_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg" NAME_WE)
add_dependencies(server_test_generate_messages_nodejs _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg" NAME_WE)
add_dependencies(server_test_generate_messages_nodejs _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg" NAME_WE)
add_dependencies(server_test_generate_messages_nodejs _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg" NAME_WE)
add_dependencies(server_test_generate_messages_nodejs _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg" NAME_WE)
add_dependencies(server_test_generate_messages_nodejs _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg" NAME_WE)
add_dependencies(server_test_generate_messages_nodejs _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg" NAME_WE)
add_dependencies(server_test_generate_messages_nodejs _server_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(server_test_gennodejs)
add_dependencies(server_test_gennodejs server_test_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS server_test_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server_test
)
_generate_msg_py(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server_test
)
_generate_msg_py(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server_test
)
_generate_msg_py(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server_test
)
_generate_msg_py(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server_test
)
_generate_msg_py(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server_test
)
_generate_msg_py(server_test
  "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server_test
)

### Generating Services

### Generating Module File
_generate_module_py(server_test
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server_test
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(server_test_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(server_test_generate_messages server_test_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionFeedback.msg" NAME_WE)
add_dependencies(server_test_generate_messages_py _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestAction.msg" NAME_WE)
add_dependencies(server_test_generate_messages_py _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestGoal.msg" NAME_WE)
add_dependencies(server_test_generate_messages_py _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionGoal.msg" NAME_WE)
add_dependencies(server_test_generate_messages_py _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestActionResult.msg" NAME_WE)
add_dependencies(server_test_generate_messages_py _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestResult.msg" NAME_WE)
add_dependencies(server_test_generate_messages_py _server_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Desktop/master/devel/share/server_test/msg/servertestFeedback.msg" NAME_WE)
add_dependencies(server_test_generate_messages_py _server_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(server_test_genpy)
add_dependencies(server_test_genpy server_test_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS server_test_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/server_test
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(server_test_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(server_test_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/server_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/server_test
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(server_test_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(server_test_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/server_test
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(server_test_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(server_test_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/server_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/server_test
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(server_test_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(server_test_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server_test)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server_test\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/server_test
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(server_test_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(server_test_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
