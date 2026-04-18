.class final Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AIKidsToolsManagerBiz.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->initAIKidsBiz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 55
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->invoke(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Object;)V
    .registers 6

    const-string p2, "event"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "name"

    .line 57
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "payload"

    .line 58
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p2

    if-eqz p2, :cond_23

    sget-object p3, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$1;

    sget-object v0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$2;

    invoke-interface {p2, p1, p4, p3, v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/IPosMessageToWebView;->socketPostAsyncEvent(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 65
    :cond_23
    sget-object p2, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager;->Companion:Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;->getSERVER_EVENT_ACK_AUDIO_START()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_f1

    .line 66
    instance-of p1, p4, Lorg/json/JSONObject;

    if-eqz p1, :cond_61

    check-cast p4, Lorg/json/JSONObject;

    const-string p1, "data"

    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_61

    .line 67
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "p_uuid"

    .line 69
    instance-of p3, p1, Lorg/json/JSONObject;

    if-eqz p3, :cond_61

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_61

    .line 70
    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_5d

    check-cast p1, Ljava/lang/String;

    goto :goto_5e

    :cond_5d
    const/4 p1, 0x0

    :goto_5e
    invoke-static {p3, p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$setRecordUuid$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;Ljava/lang/String;)V

    .line 74
    :cond_61
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_aa

    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    .line 75
    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$getRecordStreamManager$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    move-result-object p2

    if-nez p2, :cond_73

    const/4 p2, 0x1

    goto :goto_74

    :cond_73
    const/4 p2, 0x0

    :goto_74
    invoke-static {p1, p2}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$setFirst$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;Z)V

    .line 76
    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$getRecordStreamManager$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    move-result-object p2

    if-nez p2, :cond_82

    new-instance p2, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    invoke-direct {p2}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;-><init>()V

    :cond_82
    invoke-static {p1, p2}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$setRecordStreamManager$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;)V

    .line 77
    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$getFirst$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Z

    move-result p2

    if-eqz p2, :cond_aa

    .line 78
    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$getRecordStreamManager$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    move-result-object p2

    if-eqz p2, :cond_99

    new-instance p3, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$3$1;

    invoke-direct {p3, p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$3$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V

    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->setAudioDataCallback(Lkotlin/jvm/functions/Function1;)V

    .line 81
    :cond_99
    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$getRecordStreamManager$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    move-result-object p2

    if-eqz p2, :cond_a7

    new-instance p3, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$3$2;

    invoke-direct {p3, p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$3$2;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V

    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->setVolumeLevelChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 84
    :cond_a7
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$setFirst$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;Z)V

    .line 87
    :cond_aa
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$isRecordTimeout$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Z

    move-result p1

    if-nez p1, :cond_149

    .line 88
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_149

    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    const-string p3, "android.permission.RECORD_AUDIO"

    .line 89
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_db

    .line 94
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p3, "想录音,但没有权限"

    invoke-virtual {p1, p3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 95
    invoke-static {p2}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$getRecordStartListener$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_149

    const/16 p2, 0x1bbe

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_149

    .line 97
    :cond_db
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p3, "没有超时,正常录音"

    invoke-virtual {p1, p3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 98
    invoke-static {p2}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$getRecordStreamManager$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;

    move-result-object p1

    if-eqz p1, :cond_149

    new-instance p3, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$4$1;

    invoke-direct {p3, p2}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$4$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V

    invoke-virtual {p1, p3}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->startRecording(Lkotlin/jvm/functions/Function2;)V

    goto :goto_149

    .line 107
    :cond_f1
    invoke-virtual {p2}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;->getSERVER_EVENT_ACK_AUDIO_END()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_149

    .line 111
    invoke-virtual {p2}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;->getSERVER_EVENT_AUDIO_START()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10b

    .line 112
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->startPlayerStream(Z)V

    goto :goto_149

    .line 115
    :cond_10b
    invoke-virtual {p2}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;->getSERVER_EVENT_AUDIO_END()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12e

    .line 116
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "收到音频流结束"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$getPlayerStreamManager$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;

    move-result-object p1

    if-eqz p1, :cond_149

    sget-object p2, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->Companion:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack$Companion;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack$Companion;->getEND_OF_STREAM()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->enqueuePcmData([B)V

    goto :goto_149

    .line 120
    :cond_12e
    invoke-virtual {p2}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;->getSERVER_EVENT_TEXT_START()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_149

    .line 124
    invoke-virtual {p2}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;->getSERVER_EVENT_TEXT_DATA()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_149

    .line 127
    invoke-virtual {p2}, Lcom/codemao/toolssdk/aikids/socket/AIKidsSocketIOManager$Companion;->getSERVER_EVENT_TEXT_END()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_149
    :goto_149
    return-void
.end method
