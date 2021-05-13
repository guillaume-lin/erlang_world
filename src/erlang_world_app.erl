%%%-------------------------------------------------------------------
%% @doc erlang_world public API
%% @end
%%%-------------------------------------------------------------------

-module(erlang_world_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    erlang_world_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
