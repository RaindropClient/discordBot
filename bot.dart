import "package:nyxx/nyxx.dart";

import 'Ctx.dart';

// main function
void main() {
  final bot = NyxxFactory.createNyxxWebsocket("ur token", GatewayIntents.allUnprivileged)
    ..registerPlugin(Logging())
    ..registerPlugin(CliIntegration())
    ..registerPlugin(IgnoreExceptions())
    ..connect();

  bot.eventsWs.onReady.listen((x) { Context.botReady(); });
}