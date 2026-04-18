.class public final Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;
.super Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;
.source "AIKidsSocketIOManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAIKidsSocketIOManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AIKidsSocketIOManager.kt\ncom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,440:1\n13543#2,2:441\n*S KotlinDebug\n*F\n+ 1 AIKidsSocketIOManager.kt\ncom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager\n*L\n349#1:441,2\n*E\n"
.end annotation


# static fields
.field private static final CLENT_EVENT_ACK_BEGIN_SYSTEM_ASK:Ljava/lang/String;

.field private static final CLENT_EVENT_ACK_COMMON_EVENT:Ljava/lang/String;

.field private static final CLENT_EVENT_BEGIN_SYSTEM_ASK:Ljava/lang/String;

.field private static final CLENT_EVENT_COMMON_EVENT:Ljava/lang/String;

.field private static final CLIENT_EVENT_AUDIO_DATA:Ljava/lang/String;

.field private static final CLIENT_EVENT_AUDIO_END:Ljava/lang/String;

.field private static final CLIENT_EVENT_AUDIO_START:Ljava/lang/String;

.field private static final CLIENT_EVENT_CLEAR_AUDIO_BUFFER:Ljava/lang/String;

.field private static final CLIENT_EVENT_JOIN:Ljava/lang/String;

.field public static final Companion:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;

.field private static final SERVER_EVENT_ACK_AUDIO_DATA:Ljava/lang/String;

.field private static final SERVER_EVENT_ACK_AUDIO_END:Ljava/lang/String;

.field private static final SERVER_EVENT_ACK_AUDIO_START:Ljava/lang/String;

.field private static final SERVER_EVENT_ACK_CLEAR_AUDIO_BUFFER:Ljava/lang/String;

.field private static final SERVER_EVENT_ACK_OPEN_NEW_CONVERSATION:Ljava/lang/String;

.field private static final SERVER_EVENT_AUDIO_DATA:Ljava/lang/String;

.field private static final SERVER_EVENT_AUDIO_END:Ljava/lang/String;

.field private static final SERVER_EVENT_AUDIO_START:Ljava/lang/String;

.field private static final SERVER_EVENT_COMMON_EVENT:Ljava/lang/String;

.field private static final SERVER_EVENT_CONNECT_ACK:Ljava/lang/String;

.field private static final SERVER_EVENT_DISCONNECT:Ljava/lang/String;

.field private static final SERVER_EVENT_JOIN_ACK:Ljava/lang/String;

.field private static final SERVER_EVENT_TEXT_DATA:Ljava/lang/String;

.field private static final SERVER_EVENT_TEXT_END:Ljava/lang/String;

.field private static final SERVER_EVENT_TEXT_IMG_PROMPT:Ljava/lang/String;

.field private static final SERVER_EVENT_TEXT_START:Ljava/lang/String;


# instance fields
.field private audioStreamListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private connectListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private courseId:Ljava/lang/String;

.field private eventListener:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final host:Ljava/lang/String;

.field private isWebCallDisconnect:Z

.field private final path:Ljava/lang/String;

.field private systemDisconnectListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0grA3cgXzpTjft3xB8I9H3vnfbE(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerRecordResponse$lambda$13(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2y6-XCCphF3OR0CjMOqnH6IZ1oM(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerConnectEvent$lambda$3(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4tRuI9OgtQxS5So_IlLdLL02Yzs(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->onServerPushEvent$lambda$30(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6JXCfEiMhHzGT11p5mD-CoeIPy0(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerRecordResponse$lambda$8(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$74iY-TAwNNawr4E-RMYXFSxvnnk(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerRecordResponse$lambda$17(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$79_BiwPofwZse70wp339q-pcRbM(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->onServerPushEvent$lambda$29(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9BBciHwK7Lq7DC7JVkKJugYIqn4(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->onServerPushEvent$lambda$26(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kam52ymTDa8tqQyDTq64Jvn-ALE(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerConnectEvent$lambda$5(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UpU86tifcZVsU5GiLgxevM4FM10(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerRecordResponse$lambda$9(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VH6PbeqPolX51J1SDBVidY6Rick(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->onServerPushEvent$lambda$23(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XSdNmeqcY9GI5BEZCoqqe-vammk(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerRecordResponse$lambda$15(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fe7MQzJ95D307ipD1KwDs5DtBwo(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerConnectEvent$lambda$0(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kpj8IIkMKsRJAeAsJ1dMLFhPlO8(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->onServerPushEvent$lambda$27(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nOat0UwD1AeSqq8CVguGs_i924c(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->onServerPushEvent$lambda$20(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p40GgVlDfE-fKxl7FGnB3F-rp1w(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->onServerPushEvent$lambda$25(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qjTlVbYwkbNcHrZAylvtNC5DbVY(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->openNewConversationResponse$lambda$19(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBjiB-zNobUOwhGTcygIEWPDTKo(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerRecordResponse$lambda$11(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wDTHUNAak8mjK8Jl0DyH2W0JA9E(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->onServerPushEvent$lambda$22(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xgd43ne0QrelueSguHjXLB59SvA(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->onServerPushEvent$lambda$21(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zv-r5EOdSq3b0sVS4EjFb7r2w-o(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerConnectEvent$lambda$1(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->Companion:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;

    const-string v0, "on_connect_ack"

    .line 41
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_CONNECT_ACK:Ljava/lang/String;

    const-string v0, "join"

    .line 43
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLIENT_EVENT_JOIN:Ljava/lang/String;

    const-string v0, "push_audio_byte_start"

    .line 44
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLIENT_EVENT_AUDIO_START:Ljava/lang/String;

    const-string v0, "push_audio_byte_data"

    .line 45
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLIENT_EVENT_AUDIO_DATA:Ljava/lang/String;

    const-string v0, "push_audio_byte_end"

    .line 46
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLIENT_EVENT_AUDIO_END:Ljava/lang/String;

    const-string v0, "clear_audio_buffer"

    .line 47
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLIENT_EVENT_CLEAR_AUDIO_BUFFER:Ljava/lang/String;

    const-string v0, "push_begin_system_ask"

    .line 49
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_BEGIN_SYSTEM_ASK:Ljava/lang/String;

    const-string v0, "push_client_common_event"

    .line 50
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_COMMON_EVENT:Ljava/lang/String;

    const-string v0, "join_ack"

    .line 52
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_JOIN_ACK:Ljava/lang/String;

    const-string v0, "push_audio_byte_start_ack"

    .line 54
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_START:Ljava/lang/String;

    const-string v0, "push_audio_byte_data_ack"

    .line 55
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_DATA:Ljava/lang/String;

    const-string v0, "push_audio_byte_end_ack"

    .line 56
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_END:Ljava/lang/String;

    const-string v0, "clear_audio_buffer_ack"

    .line 57
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_CLEAR_AUDIO_BUFFER:Ljava/lang/String;

    const-string v0, "open_new_conversation_ack"

    .line 58
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_OPEN_NEW_CONVERSATION:Ljava/lang/String;

    const-string v0, "push_begin_system_ask_ack"

    .line 59
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_ACK_BEGIN_SYSTEM_ASK:Ljava/lang/String;

    const-string v0, "push_client_common_event_ack"

    .line 60
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_ACK_COMMON_EVENT:Ljava/lang/String;

    const-string v0, "server_push_text_start"

    .line 62
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_START:Ljava/lang/String;

    const-string v0, "server_push_text_data"

    .line 63
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_DATA:Ljava/lang/String;

    const-string v0, "server_push_text_end"

    .line 64
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_END:Ljava/lang/String;

    const-string v0, "server_push_audio_start"

    .line 65
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_START:Ljava/lang/String;

    const-string v0, "server_push_audio_data"

    .line 67
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_DATA:Ljava/lang/String;

    const-string v0, "server_push_audio_end"

    .line 68
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_END:Ljava/lang/String;

    const-string v0, "server_push_text2img_prompt"

    .line 69
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_IMG_PROMPT:Ljava/lang/String;

    const-string v0, "server_push_to_disconnect"

    .line 70
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_DISCONNECT:Ljava/lang/String;

    const-string v0, "server_push_common_event"

    .line 71
    sput-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_COMMON_EVENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;-><init>()V

    const-string v0, "cr-aichat.codemao.cn/"

    .line 26
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->host:Ljava/lang/String;

    const-string v0, "/aichat"

    .line 29
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->path:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getSERVER_EVENT_ACK_AUDIO_END$cp()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_END:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSERVER_EVENT_ACK_AUDIO_START$cp()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_START:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSERVER_EVENT_AUDIO_END$cp()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_END:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSERVER_EVENT_AUDIO_START$cp()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_START:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSERVER_EVENT_TEXT_DATA$cp()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_DATA:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSERVER_EVENT_TEXT_END$cp()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_END:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSERVER_EVENT_TEXT_START$cp()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_START:Ljava/lang/String;

    return-object v0
.end method

.method private final appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 103
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "stag"

    const-string v2, "8"

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "model"

    const-string v2, "DOUBAO-DEEPSEEK-V3"

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "invoke_mode_type"

    const-string v2, "EDIT"

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "course_id"

    .line 107
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "platform"

    const-string v1, "android"

    .line 108
    invoke-virtual {v0, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "EIO"

    const-string v1, "3"

    .line 109
    invoke-virtual {v0, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "transport"

    const-string v1, "websocket"

    .line 110
    invoke-virtual {v0, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "token"

    .line 111
    invoke-virtual {v0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "uri.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final callWebNetworkNotAvailable([Ljava/lang/Object;)V
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_27

    const-wide/16 v1, 0x64

    .line 193
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 194
    sget-object v1, Lcom/codemao/toolssdk/utils/NetWorkHelper;->INSTANCE:Lcom/codemao/toolssdk/utils/NetWorkHelper;

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->getDeviceJsApiNetworkStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 195
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "发现当前无网络"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 196
    iget-boolean v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->isWebCallDisconnect:Z

    if-nez v0, :cond_24

    .line 197
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->systemDisconnectListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->isWebCallDisconnect:Z

    :cond_27
    return-void
.end method

.method private final clearAllEvent()V
    .registers 3

    .line 389
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "disconnect"

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 390
    :cond_b
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "connect_error"

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 391
    :cond_16
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_21

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_CONNECT_ACK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 392
    :cond_21
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_2c

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_JOIN_ACK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 393
    :cond_2c
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_37

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 394
    :cond_37
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_42

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 395
    :cond_42
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_4d

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_END:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 396
    :cond_4d
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_58

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_CLEAR_AUDIO_BUFFER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 397
    :cond_58
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_63

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_ACK_BEGIN_SYSTEM_ASK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 398
    :cond_63
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_6e

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_ACK_COMMON_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 399
    :cond_6e
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_79

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 400
    :cond_79
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_84

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 401
    :cond_84
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_8f

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_END:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 402
    :cond_8f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_9a

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 403
    :cond_9a
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_a5

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 404
    :cond_a5
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_b0

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_END:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 405
    :cond_b0
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_bb

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_IMG_PROMPT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 406
    :cond_bb
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_c6

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_DISCONNECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 407
    :cond_c6
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_d1

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_COMMON_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    :cond_d1
    return-void
.end method

.method private final exeInitConfig()V
    .registers 9

    .line 88
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->courseId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query参数:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 90
    sget-object v1, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    sget-object v2, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getCommonPrefix(Lcom/codemao/toolssdk/manager/CMTEnvMode;)Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getScheme$default(Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->host:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->clearAllEvent()V

    .line 93
    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->setUrlConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->registerSystemEvent()V

    .line 95
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerConnectEvent()V

    .line 96
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerFeatureEvent()V

    .line 97
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->setReconnectionConfig()V

    .line 98
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->onServerPushEvent()V

    .line 99
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->openNewConversationResponse()V

    return-void
.end method

.method private static final onServerPushEvent$lambda$20(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "后端要开始返回text流:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 333
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_3d

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_START:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    return-void
.end method

.method private static final onServerPushEvent$lambda$21(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "服务端给客户端文本流数据:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 337
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_4e

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_DATA:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    return-void
.end method

.method private static final onServerPushEvent$lambda$22(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "服务端给客户端媒体流结束:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 341
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_3d

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_END:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    return-void
.end method

.method private static final onServerPushEvent$lambda$23(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "服务端推给客户端媒体流开始:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 345
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_3d

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_START:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    return-void
.end method

.method private static final onServerPushEvent$lambda$25(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "array"

    .line 349
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13543
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_39

    aget-object v2, p1, v1

    :try_start_10
    const-string v3, "null cannot be cast to non-null type kotlin.ByteArray"

    .line 351
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [B

    .line 352
    iget-object v3, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->audioStreamListener:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_36

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_1f

    goto :goto_36

    :catch_1f
    move-exception v2

    .line 354
    sget-object v3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "音频流数据异常:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->eSocketIO(Ljava/lang/String;)V

    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_39
    return-void
.end method

.method private static final onServerPushEvent$lambda$26(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "服务端给客户端媒体流结束:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 360
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_3d

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_END:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    return-void
.end method

.method private static final onServerPushEvent$lambda$27(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "服务端给客户端已经生成好的文生图prompt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    const-string v1, "it"

    .line 365
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_IMG_PROMPT:Ljava/lang/String;

    const-class v2, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;

    invoke-virtual {p0, p1, v1, v2}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "文生图promptSessionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->getData()Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;->getAudio_session_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 367
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_67

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v1, v0, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    return-void
.end method

.method private static final onServerPushEvent$lambda$29(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "服务端主动断开连接:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    const-string v1, "it"

    .line 372
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_DISCONNECT:Ljava/lang/String;

    const-class v2, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    invoke-virtual {p0, p1, v1, v2}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    if-eqz v2, :cond_4c

    .line 374
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->isIDLE()Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v2, "长时间未操作而断开连接"

    .line 375
    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    goto :goto_4c

    .line 376
    :cond_41
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->isServerBusy()Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "人数太多而断开连接"

    .line 377
    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 380
    :cond_4c
    :goto_4c
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_5e

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v1, v0, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    return-void
.end method

.method private static final onServerPushEvent$lambda$30(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "服务器推送给客户端通用事件:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 384
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_3d

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_COMMON_EVENT:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    return-void
.end method

.method private static final openNewConversationResponse$lambda$19(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 304
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_OPEN_NEW_CONVERSATION:Ljava/lang/String;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    .line 303
    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    if-eqz p0, :cond_23

    .line 309
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->isSuccess()Z

    move-result p0

    if-eqz p0, :cond_23

    .line 310
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p1, "开启新会话成功"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private static final registerConnectEvent$lambda$0(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    .line 138
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "系统事件"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":断开连接:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->callWebNetworkNotAvailable([Ljava/lang/Object;)V

    return-void
.end method

.method private static final registerConnectEvent$lambda$1(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "系统事件:连接错误:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->eSocketIO(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->connectListener:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_2a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x1c02

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    const-string v0, "args"

    .line 149
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->callWebNetworkNotAvailable([Ljava/lang/Object;)V

    return-void
.end method

.method private static final registerConnectEvent$lambda$3(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 152
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_CONNECT_ACK:Ljava/lang/String;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventConnectACK;

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventConnectACK;

    if-eqz v1, :cond_8c

    .line 154
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventConnectACK;->isSuccess()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    .line 158
    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLIENT_EVENT_JOIN:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->commonEmitEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_8c

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    .line 160
    :cond_39
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventConnectACK;->timesLimit()Z

    move-result v2

    const/16 v4, 0x1c02

    if-eqz v2, :cond_67

    .line 161
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v5, "达到次数上限"

    invoke-virtual {v2, v5}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->eSocketIO(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->connectListener:Lkotlin/jvm/functions/Function3;

    if-eqz v2, :cond_55

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_55
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_8c

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    .line 165
    :cond_67
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v5, "连接异常"

    invoke-virtual {v2, v5}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->eSocketIO(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->connectListener:Lkotlin/jvm/functions/Function3;

    if-eqz v2, :cond_7b

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_7b
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_8c

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    :goto_8c
    return-void
.end method

.method private static final registerConnectEvent$lambda$5(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 172
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_JOIN_ACK:Ljava/lang/String;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventJoinACK;

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventJoinACK;

    if-eqz v1, :cond_96

    .line 174
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventJoinACK;->isSuccess()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    .line 175
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v4, "join成功"

    invoke-virtual {v2, v4}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->connectListener:Lkotlin/jvm/functions/Function3;

    if-eqz v2, :cond_31

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_31
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_96

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_96

    .line 178
    :cond_43
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventJoinACK;->serverClose()Z

    move-result v2

    const/16 v4, 0x1c04

    if-eqz v2, :cond_71

    .line 179
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v5, "join失败,服务端关闭了服务"

    invoke-virtual {v2, v5}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->connectListener:Lkotlin/jvm/functions/Function3;

    if-eqz v2, :cond_5f

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_5f
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_96

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_96

    .line 183
    :cond_71
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v5, "join异常,其他异常"

    invoke-virtual {v2, v5}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->connectListener:Lkotlin/jvm/functions/Function3;

    if-eqz v2, :cond_85

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_85
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_96

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    :goto_96
    return-void
.end method

.method private final registerFeatureEvent()V
    .registers 1

    .line 116
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->registerRecordResponse()V

    return-void
.end method

.method private static final registerRecordResponse$lambda$11(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 246
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_END:Ljava/lang/String;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonResponse;

    if-eqz v1, :cond_3c

    .line 248
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "结束录音事件响应结果:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonResponse;->isSuccess()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonResponse;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 250
    :cond_3c
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_4e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    return-void
.end method

.method private static final registerRecordResponse$lambda$13(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 254
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_CLEAR_AUDIO_BUFFER:Ljava/lang/String;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    if-eqz v1, :cond_23

    .line 256
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 257
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v2, "录音数据清除成功"

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 260
    :cond_23
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_35

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    return-void
.end method

.method private static final registerRecordResponse$lambda$15(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 264
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_ACK_BEGIN_SYSTEM_ASK:Ljava/lang/String;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    if-eqz v1, :cond_23

    .line 266
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 267
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v2, "系统首次提问成功"

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 270
    :cond_23
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_35

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    return-void
.end method

.method private static final registerRecordResponse$lambda$17(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 274
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_ACK_COMMON_EVENT:Ljava/lang/String;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    if-eqz v1, :cond_23

    .line 276
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 277
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v2, "通用事件响应成功"

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 280
    :cond_23
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_35

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    return-void
.end method

.method private static final registerRecordResponse$lambda$8(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 231
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_START:Ljava/lang/String;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonResponse;

    if-eqz v1, :cond_3c

    .line 233
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "开始录音事件响应结果:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonResponse;->isSuccess()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonResponse;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 235
    :cond_3c
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_4e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    return-void
.end method

.method private static final registerRecordResponse$lambda$9(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;[Ljava/lang/Object;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 239
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_DATA:Ljava/lang/String;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    .line 240
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "推送的音频流失败:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->getData()Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 241
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    if-eqz p0, :cond_4a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    return-void
.end method


# virtual methods
.method public final cleanRecordBuffer(Ljava/lang/String;)V
    .registers 4

    .line 289
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "p_uuid"

    .line 290
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    sget-object p1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLIENT_EVENT_CLEAR_AUDIO_BUFFER:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->commonEmitEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->executeDisconnect(Z)V

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->setMSocket(Lio/socket/client/Socket;)V

    .line 433
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->context:Landroid/content/Context;

    .line 434
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->connectListener:Lkotlin/jvm/functions/Function3;

    .line 435
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    .line 436
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->systemDisconnectListener:Lkotlin/jvm/functions/Function1;

    .line 437
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->audioStreamListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public executeDisconnect(Z)V
    .registers 2

    .line 419
    iput-boolean p1, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->isWebCallDisconnect:Z

    .line 420
    invoke-super {p0, p1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->executeDisconnect(Z)V

    return-void
.end method

.method public final initConfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->token:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->courseId:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->exeInitConfig()V

    return-void
.end method

.method public final onServerPushEvent()V
    .registers 4

    .line 331
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_START:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda13;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 335
    :cond_10
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_20

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_DATA:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda18;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 339
    :cond_20
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_30

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_END:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda17;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 343
    :cond_30
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_40

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_START:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda9;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 347
    :cond_40
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_50

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_DATA:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda14;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 358
    :cond_50
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_60

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_AUDIO_END:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 362
    :cond_60
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_70

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_TEXT_IMG_PROMPT:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda12;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 369
    :cond_70
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_80

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_DISCONNECT:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 382
    :cond_80
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_90

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_COMMON_EVENT:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    :cond_90
    return-void
.end method

.method public final openNewConversationResponse()V
    .registers 4

    .line 302
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_OPEN_NEW_CONVERSATION:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda15;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    :cond_10
    return-void
.end method

.method public final pushRecordData([B)V
    .registers 3

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLIENT_EVENT_AUDIO_DATA:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->commonEmitEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final pushRecordEnd(Ljava/lang/String;)V
    .registers 4

    .line 221
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "推送停止录音给后端"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 222
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "p_uuid"

    .line 223
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    sget-object p1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLIENT_EVENT_AUDIO_END:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->commonEmitEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final pushRecordStart()V
    .registers 4

    .line 209
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "推送开始录音给后端"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lan"

    const-string v2, "zh"

    .line 211
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    sget-object v1, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->Companion:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$Companion;->isEnableAac()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "aac"

    goto :goto_20

    :cond_1e
    const-string v1, "pcm"

    :goto_20
    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLIENT_EVENT_AUDIO_START:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->commonEmitEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final registerConnectEvent()V
    .registers 4

    .line 137
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda11;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    const-string v2, "disconnect"

    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 146
    :cond_10
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda19;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    const-string v2, "connect_error"

    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 151
    :cond_20
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_30

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_CONNECT_ACK:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 171
    :cond_30
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_40

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_JOIN_ACK:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    :cond_40
    return-void
.end method

.method public final registerRecordResponse()V
    .registers 4

    .line 229
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_START:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 238
    :cond_10
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_20

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_DATA:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda8;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 244
    :cond_20
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_30

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_AUDIO_END:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda16;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 252
    :cond_30
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_40

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->SERVER_EVENT_ACK_CLEAR_AUDIO_BUFFER:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 262
    :cond_40
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_50

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_ACK_BEGIN_SYSTEM_ASK:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda10;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 272
    :cond_50
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getMSocket()Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_60

    sget-object v1, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_ACK_COMMON_EVENT:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    :cond_60
    return-void
.end method

.method public final sendBeginSystemAsk()V
    .registers 3

    .line 318
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_BEGIN_SYSTEM_ASK:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->commonEmitEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final sendClientCommonEvent(Ljava/lang/Object;)V
    .registers 3

    .line 322
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->CLENT_EVENT_COMMON_EVENT:Ljava/lang/String;

    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    invoke-virtual {p0, v0, p1}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->commonEmitEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setEventListener(Lkotlin/jvm/functions/Function4;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 411
    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->eventListener:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public final setStreamListener(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->audioStreamListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSystemDisconnectListener(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->context:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->systemDisconnectListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final startConnect(Lkotlin/jvm/functions/Function3;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->connectListener:Lkotlin/jvm/functions/Function3;

    .line 124
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->executeConnect()V

    return-void
.end method
