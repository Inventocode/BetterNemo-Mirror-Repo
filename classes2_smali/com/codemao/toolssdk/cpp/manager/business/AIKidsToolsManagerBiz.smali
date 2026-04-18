.class public abstract Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;
.super Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerKn;
.source "AIKidsToolsManagerBiz.kt"


# instance fields
.field private courseCode:Ljava/lang/String;

.field private first:Z

.field private isRecordTimeout:Z

.field private playerStreamManager:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;

.field private recordStartListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private recordStreamManager:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

.field private recordUuid:Ljava/lang/String;

.field private socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

.field private final streamRecordTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$OTS6r379B40nmmRfVIBORGbiNHk(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->streamRecordTimeoutRunnable$lambda$0(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V

    return-void
.end method

.method public static synthetic $r8$lambda$btJjfHFmULnryLAYZtf73QVPw-o(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->startConnect$lambda$1(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerKn;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->streamRecordTimeoutRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->first:Z

    return-void
.end method

.method public static final synthetic access$getFirst$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->first:Z

    return p0
.end method

.method public static final synthetic access$getPlayerStreamManager$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->playerStreamManager:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;

    return-object p0
.end method

.method public static final synthetic access$getRecordStartListener$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lkotlin/jvm/functions/Function1;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordStartListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getRecordStreamManager$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordStreamManager:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    return-object p0
.end method

.method public static final synthetic access$getSocketManager$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    return-object p0
.end method

.method public static final synthetic access$getStreamRecordTimeoutRunnable$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Ljava/lang/Runnable;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->streamRecordTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$isRecordTimeout$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->isRecordTimeout:Z

    return p0
.end method

.method public static final synthetic access$sendAudioStreamVolume(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;F)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->sendAudioStreamVolume(F)V

    return-void
.end method

.method public static final synthetic access$sendSystemDisconnect(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;Ljava/lang/Object;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->sendSystemDisconnect(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$setFirst$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->first:Z

    return-void
.end method

.method public static final synthetic access$setRecordStreamManager$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordStreamManager:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    return-void
.end method

.method public static final synthetic access$setRecordUuid$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordUuid:Ljava/lang/String;

    return-void
.end method

.method private final getCourseCode()Ljava/lang/String;
    .registers 3

    .line 253
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getLastLoadUrl()Ljava/lang/String;

    move-result-object v0

    .line 256
    :try_start_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "courseCode"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string v0, "empty"
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_1b

    .line 258
    :catch_13
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "courseCode解析异常"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 260
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->courseCode:Ljava/lang/String;

    if-nez v1, :cond_21

    .line 261
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->courseCode:Ljava/lang/String;

    .line 263
    :cond_21
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->initAIKidsConfig()V

    return-object v0
.end method

.method private final initAIKidsBiz()V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-nez v0, :cond_9

    new-instance v0, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;-><init>()V

    :cond_9
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    .line 48
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getUserToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->courseCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->initConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-eqz v0, :cond_20

    new-instance v1, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->setStreamListener(Lkotlin/jvm/functions/Function1;)V

    .line 52
    :cond_20
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$2;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->setSystemDisconnectListener(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 55
    :cond_30
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-eqz v0, :cond_3c

    new-instance v1, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->setEventListener(Lkotlin/jvm/functions/Function4;)V

    :cond_3c
    return-void
.end method

.method private final initAIKidsConfig()V
    .registers 8

    .line 33
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->isWorkAIKids()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 34
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行AIKidsManager初始化"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->initAIKidsBiz()V

    .line 36
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->playerStreamManager:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1f
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->playerStreamManager:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;

    :cond_21
    return-void
.end method

.method private final sendAudioStreamEnd()V
    .registers 5

    .line 233
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v1, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamEnd$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamEnd$1;

    sget-object v2, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamEnd$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamEnd$2;

    const-string v3, "client_audio_play_end"

    invoke-interface {v0, v3, v1, v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/IPosMessageToWebView;->socketPostAsyncEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_f
    return-void
.end method

.method private final sendAudioStreamStart()V
    .registers 5

    .line 225
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v1, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamStart$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamStart$1;

    sget-object v2, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamStart$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamStart$2;

    const-string v3, "client_audio_play_start"

    invoke-interface {v0, v3, v1, v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/IPosMessageToWebView;->socketPostAsyncEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_f
    return-void
.end method

.method private final sendAudioStreamVolume(F)V
    .registers 6

    .line 208
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 210
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    const-wide/high16 v2, -0x3fac000000000000L  # -80.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    if-eqz v1, :cond_12

    goto :goto_1d

    .line 211
    :cond_12
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1d

    .line 212
    :cond_19
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_1d
    const-string p1, "sound"

    .line 214
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 215
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    const-string v1, "receiveSound"

    invoke-direct {p1, v1, v0}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p1

    if-eqz p1, :cond_44

    sget-object v1, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamVolume$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamVolume$1;

    sget-object v2, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamVolume$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendAudioStreamVolume$2;

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/IPosMessageToWebView;->socketPostAsyncEvent(Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_44
    return-void
.end method

.method private final sendSystemDisconnect(Ljava/lang/Object;)V
    .registers 6

    .line 241
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v1, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendSystemDisconnect$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendSystemDisconnect$1;

    sget-object v2, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendSystemDisconnect$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$sendSystemDisconnect$2;

    const-string v3, "client_disconnect"

    invoke-interface {v0, v3, p1, v1, v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/IPosMessageToWebView;->socketPostAsyncEvent(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_f
    return-void
.end method

.method private final startConnect(Lkotlin/jvm/functions/Function3;)V
    .registers 5
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

    .line 140
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->getCourseCode()Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "执行AIKidsManager的socket连接:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-eqz v0, :cond_22

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->startConnect(Lkotlin/jvm/functions/Function3;)V

    .line 143
    :cond_22
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_30

    new-instance v0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_30
    return-void
.end method

.method private static final startConnect$lambda$1(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getCurrentView()Landroid/view/View;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    if-nez p0, :cond_14

    goto :goto_18

    :cond_14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    :goto_18
    return-void
.end method

.method private static final streamRecordTimeoutRunnable$lambda$0(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "录音启动超时了"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->isRecordTimeout:Z

    .line 43
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordStartListener:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_1c

    const/16 v0, 0x1bc2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void
.end method


# virtual methods
.method public callAIKidsClientReady(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "通知web client ready"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "client_ready"

    invoke-interface {v0, v1, p1, p2}, Lcom/codemao/toolssdk/cpp/view/interfaces/IPosMessageToWebView;->socketPostAsyncEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_1c
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 278
    invoke-super {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->destroy()V

    .line 279
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "aiKids触发destroy"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->destroy()V

    :cond_11
    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    .line 282
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordStreamManager:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->destroy()V

    .line 283
    :cond_1b
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordStreamManager:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    .line 284
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->playerStreamManager:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->destroy()V

    .line 285
    :cond_24
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->playerStreamManager:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;

    .line 286
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordStartListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 268
    invoke-super {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;->onStop()V

    .line 269
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->isWorkAIKids()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 270
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerBase;->getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->resetAllAudioBeanState()V

    .line 271
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerBase;->getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->addStopAction(Ljava/lang/String;)V

    :cond_18
    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->stopRecordStream(Z)V

    .line 274
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->playerStreamManager:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->stopPlaying()V

    :cond_23
    return-void
.end method

.method public sendAICommonEvent(Ljava/lang/Object;)V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->sendClientCommonEvent(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public startAISystemAsk()V
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->sendBeginSystemAsk()V

    :cond_7
    return-void
.end method

.method public startPlayerStream(Z)V
    .registers 3

    .line 168
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->playerStreamManager:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;

    if-eqz p1, :cond_c

    new-instance v0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$startPlayerStream$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$startPlayerStream$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->startPlaying(Lkotlin/jvm/functions/Function1;)V

    .line 171
    :cond_c
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->sendAudioStreamStart()V

    return-void
.end method

.method public startRecordStream(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->isRecordTimeout:Z

    .line 151
    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordStartListener:Lkotlin/jvm/functions/Function1;

    .line 152
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-eqz p2, :cond_13

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordUuid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->cleanRecordBuffer(Ljava/lang/String;)V

    .line 153
    :cond_13
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->pushRecordStart()V

    .line 154
    :cond_1a
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "录音超时倒计时:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_49

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->streamRecordTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_46

    :cond_43
    const-wide/32 v1, 0xea60

    :goto_46
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_49
    return-void
.end method

.method public startSocketConnect(Lkotlin/jvm/functions/Function3;)V
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

    .line 180
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->startConnect(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public stopPlayerStream()V
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->playerStreamManager:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->stopPlaying()V

    .line 176
    :cond_7
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->sendAudioStreamEnd()V

    return-void
.end method

.method public stopRecordStream(Z)V
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordStreamManager:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->isRecord()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_1b

    if-eqz p1, :cond_1b

    .line 161
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->pushRecordEnd(Ljava/lang/String;)V

    .line 164
    :cond_1b
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->recordStreamManager:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->stopRecording()V

    :cond_22
    return-void
.end method

.method public stopSocketConnect(Z)V
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->socketManager:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->executeDisconnect(Z)V

    :cond_7
    return-void
.end method
