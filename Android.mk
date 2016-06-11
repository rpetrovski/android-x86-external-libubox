LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	avl.c \
	avl-cmp.c \
	blob.c \
	blobmsg.c \
	uloop.c \
	usock.c \
	ustream.c \
	ustream-fd.c \
	vlist.c \
	utils.c \
	safe_list.c \
	runqueue.c \
	md5.c \
	kvlist.c \
	ulog.c \
	base64.c

LOCAL_MODULE := libubox
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES:=external/json-c/
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_CFLAGS+=-DJSONC

LOCAL_SRC_FILES := \
	blobmsg_json.c

LOCAL_MODULE := libblobmsg_json
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES:=external/json-c/
#LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include
include $(BUILD_STATIC_LIBRARY)

