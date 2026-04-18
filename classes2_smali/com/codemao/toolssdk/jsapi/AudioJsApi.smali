.class public final Lcom/codemao/toolssdk/jsapi/AudioJsApi;
.super Ljava/lang/Object;
.source "AudioJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/jsapi/AudioJsApi$Companion;
    }
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final intervalTime:J

.field private final toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/jsapi/AudioJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 4

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    .line 36
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->gson:Lcom/google/gson/Gson;

    const-wide/16 v0, 0x1f4

    .line 37
    iput-wide v0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->intervalTime:J

    return-void
.end method

.method public static final synthetic access$editAudio$cancel(Lcom/codemao/toolssdk/jsapi/AudioJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->editAudio$cancel(Lcom/codemao/toolssdk/jsapi/AudioJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/jsapi/AudioJsApi;)Lcom/google/gson/Gson;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$getIntervalTime$p(Lcom/codemao/toolssdk/jsapi/AudioJsApi;)J
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->intervalTime:J

    return-wide v0
.end method

.method public static final synthetic access$sendCurrentPlayingProgress(Lcom/codemao/toolssdk/jsapi/AudioJsApi;Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->sendCurrentPlayingProgress(Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method private static final editAudio$cancel(Lcom/codemao/toolssdk/jsapi/AudioJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/AudioJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ICancelBody;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/ICancelBody;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private final sendCurrentPlayingProgress(Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/AudioOption;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/codemao/toolssdk/jsapi/AudioJsApi$sendCurrentPlayingProgress$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/AudioJsApi$sendCurrentPlayingProgress$1;-><init>(Lcom/codemao/toolssdk/jsapi/AudioJsApi;Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->singlePost(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final editAudio(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "web通知原生编辑音频"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/codemao/utils/util/CuActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    if-eqz v1, :cond_22

    const-string p1, "顶部已经是音频页,不能再打开了"

    .line 147
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 148
    invoke-static {p0, p2}, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->editAudio$cancel(Lcom/codemao/toolssdk/jsapi/AudioJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void

    .line 152
    :cond_22
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/EditAudioOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/EditAudioOptions;

    .line 153
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3f

    check-cast v0, Landroid/app/Activity;

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    if-nez v0, :cond_46

    .line 155
    invoke-static {p0, p2}, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->editAudio$cancel(Lcom/codemao/toolssdk/jsapi/AudioJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_64

    .line 157
    :cond_46
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v1

    if-nez v1, :cond_4f

    goto :goto_57

    .line 158
    :cond_4f
    new-instance v2, Lcom/codemao/toolssdk/jsapi/AudioJsApi$editAudio$1;

    invoke-direct {v2, p2, p0}, Lcom/codemao/toolssdk/jsapi/AudioJsApi$editAudio$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/AudioJsApi;)V

    .line 157
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setOnActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    .line 179
    :goto_57
    sget-object p2, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    .line 181
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/EditAudioOptions;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/EditAudioOptions;->getName()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p2, v0, v1, p1}, Lcom/codemao/toolssdk/manager/PermissionManager;->toEditMusicPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_64
    return-void
.end method

.method public final play(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    .line 42
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web通知原生播放音频:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getId()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 47
    new-instance v4, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;

    invoke-direct {v4, p1, p2, p0}, Lcom/codemao/toolssdk/jsapi/AudioJsApi$play$1;-><init>(Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/AudioJsApi;)V

    .line 43
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->addPlayAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    return-void
.end method

.method public final stop(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/AudioStopOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/AudioStopOption;

    .line 125
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web通知原生停止音频:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/AudioStopOption;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->addStopAction(Ljava/lang/String;)V

    .line 127
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final stopAll(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生停止所有音频"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->addStopAction(Ljava/lang/String;)V

    .line 135
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    invoke-direct {p1, v1, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AudioJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method
