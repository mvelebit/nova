%%%-------------------------------------------------------------------
%% @doc nova_admin public API
%% @end
%%%-------------------------------------------------------------------

-module({{name}}_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    logger:set_primary_config(level, debug),
    nova_sup:start_link(),
    {{name}}_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
