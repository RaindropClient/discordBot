import "package:nyxx/nyxx.dart";
import "package:dotenv/dotenv.dart";

// main function
void main() {
  final bot = NyxxFactory.createNyxxWebsocket("ur token", GatewayIntents.allUnprivileged)
    ..registerPlugin(Logging())
    ..registerPlugin(CliIntegration())
    ..registerPlugin(IgnoreExceptions())
    ..connect();

  bot.eventsWs.onReady.listen((x) {
    print("Bot Ready");
  });

  bot.eventsWs.onMessageReceived.listen((x) {
    if(x.message.content == "zort") {
      x.message.channel.sendMessage(MessageBuilder.content("now stfu"));
    }
  });
}