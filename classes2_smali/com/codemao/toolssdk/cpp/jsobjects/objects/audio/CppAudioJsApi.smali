.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApiAi;
.source "CppAudioJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final audioPlayer$delegate:Lcom/codemao/toolssdk/common/LazyDelegate;

.field private final gson:Lcom/google/gson/Gson;

.field private final intervalTime:J

.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 39
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;

    const-string v3, "audioPlayer"

    const-string v4, "getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApiAi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    .line 36
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->gson:Lcom/google/gson/Gson;

    const-wide/16 v0, 0x1f4

    .line 37
    iput-wide v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->intervalTime:J

    .line 39
    new-instance p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$audioPlayer$2;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$audioPlayer$2;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)V

    invoke-static {p1}, Lcom/codemao/toolssdk/common/LazyDelegateKt;->lazyDelegate(Lkotlin/jvm/functions/Function0;)Lcom/codemao/toolssdk/common/LazyDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->audioPlayer$delegate:Lcom/codemao/toolssdk/common/LazyDelegate;

    return-void
.end method

.method public static final synthetic access$editAudio$cancel(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 29
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->editAudio$cancel(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$getAudioPlayer(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)Lcom/google/gson/Gson;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$getIntervalTime$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)J
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->intervalTime:J

    return-wide v0
.end method

.method public static final synthetic access$sendCurrentPlayingProgress(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->sendCurrentPlayingProgress(Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method private static final editAudio$cancel(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ICancelBody;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/ICancelBody;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private final getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->audioPlayer$delegate:Lcom/codemao/toolssdk/common/LazyDelegate;

    sget-object v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/codemao/toolssdk/common/LazyDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    return-object v0
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

    .line 91
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

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

    .line 151
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "web通知原生编辑音频"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/codemao/utils/util/CuActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    if-eqz v1, :cond_22

    const-string p1, "顶部已经是音频页,不能再打开了"

    .line 157
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 158
    invoke-static {p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->editAudio$cancel(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void

    .line 162
    :cond_22
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/EditAudioOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/EditAudioOptions;

    .line 163
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_3d

    :cond_3c
    move-object v0, v1

    :goto_3d
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_44

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    :cond_44
    if-nez v1, :cond_4a

    .line 165
    invoke-static {p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->editAudio$cancel(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_69

    .line 167
    :cond_4a
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_5c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 168
    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$editAudio$1;

    invoke-direct {v2, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$editAudio$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)V

    .line 167
    invoke-interface {v0, v2}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->setActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    .line 189
    :cond_5c
    sget-object p2, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    .line 191
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/EditAudioOptions;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/EditAudioOptions;->getName()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-virtual {p2, v1, v0, p1}, Lcom/codemao/toolssdk/manager/PermissionManager;->toEditMusicPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    return-void
.end method

.method public final getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    return-object v0
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

    .line 47
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    .line 48
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web通知原生播放音频:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 50
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v1, :cond_3f

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    .line 51
    :goto_40
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getId()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 53
    new-instance v4, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$play$1;

    invoke-direct {v4, p1, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$play$1;-><init>(Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)V

    .line 49
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->addPlayAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    :cond_50
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

    .line 131
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/AudioStopOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/AudioStopOption;

    .line 132
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web通知原生停止音频播放："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;->isWorkAIKids()Z

    move-result v0

    if-ne v0, v1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    if-eqz v1, :cond_4b

    const-wide/16 v0, 0xc8

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 136
    :cond_4b
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/AudioStopOption;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->addStopAction(Ljava/lang/String;)V

    .line 137
    :cond_58
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->gson:Lcom/google/gson/Gson;

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

    .line 143
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生停止所有音频播放"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->addStopAction(Ljava/lang/String;)V

    .line 145
    :cond_1b
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    invoke-direct {p1, v1, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method
