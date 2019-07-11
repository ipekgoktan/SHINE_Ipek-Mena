#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/peggyjean/toms_ws/src/vision_msgs"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/peggyjean/toms_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/peggyjean/toms_ws/install/lib/python2.7/dist-packages:/home/peggyjean/toms_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/peggyjean/toms_ws/build" \
    "/usr/bin/python" \
    "/home/peggyjean/toms_ws/src/vision_msgs/setup.py" \
    build --build-base "/home/peggyjean/toms_ws/build/vision_msgs" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/peggyjean/toms_ws/install" --install-scripts="/home/peggyjean/toms_ws/install/bin"
