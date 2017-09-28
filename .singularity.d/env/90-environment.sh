# Custom environment shell code should follow

# Export environment variables manually
export LUA_PATH='/root/.luarocks/share/lua/5.1/?.lua;/root/.luarocks/share/lua/5.1/?/init.lua;/opt/torch/install/share/lua/5.1/?.lua;/opt/torch/install/share/lua/5.1/?/init.lua;./?.lua;/opt/torch/install/share/luajit-2.1.0-beta1/?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua'
export LUA_CPATH='/root/.luarocks/lib/lua/5.1/?.so;/opt/torch/install/lib/lua/5.1/?.so;./?.so;/usr/local/lib/lua/5.1/?.so;/usr/local/lib/lua/5.1/loadall.so'
export PATH=/opt/torch/install/bin:$PATH
export LD_LIBRARY_PATH=/opt/torch/install/lib:$LD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=/opt/torch/install/lib:$DYLD_LIBRARY_PATH
export LUA_CPATH='/opt/torch/install/lib/?.so;'$LUA_CPATH

