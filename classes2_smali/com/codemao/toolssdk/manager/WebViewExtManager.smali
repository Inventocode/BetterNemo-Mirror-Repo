.class public final Lcom/codemao/toolssdk/manager/WebViewExtManager;
.super Ljava/lang/Object;
.source "WebViewExtManager.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

.field private static handler:Landroid/os/Handler;

.field private static isSuccessful:Z

.field private static preloadResultCallback:Lkotlin/jvm/functions/Function1;
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

.field private static preloadUrl:Ljava/lang/String;

.field private static timeoutMilli:J

.field private static timeoutMilliDefault:J

.field private static webView:Lcom/codemao/toolssdk/view/preload/PreloadToolsWebView;


# direct methods
.method public static synthetic $r8$lambda$L-STxV5tbeUbRoTO0u9rQhlmZtc()V
    .registers 0

    invoke-static {}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->isPreloadFinish$lambda$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$LEl_9ulKgAc5b5UTRFNEqtnUnOQ()V
    .registers 0

    invoke-static {}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->timeoutHandle$lambda$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$dIwGmv9o8nHapOV-Qr7JgHHWWug(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->loadUrl$lambda$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    const-wide/32 v0, 0xea60

    .line 30
    sput-wide v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->timeoutMilliDefault:J

    .line 31
    sput-wide v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->timeoutMilli:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$changePreloadStatus(Lcom/codemao/toolssdk/manager/WebViewExtManager;I)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->changePreloadStatus(I)V

    return-void
.end method

.method public static final synthetic access$getPreloadUrl$p()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->preloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$loadUrl(Lcom/codemao/toolssdk/manager/WebViewExtManager;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->loadUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setPreloadUrl$p(Ljava/lang/String;)V
    .registers 1

    .line 23
    sput-object p0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->preloadUrl:Ljava/lang/String;

    return-void
.end method

.method private final changePreloadStatus(I)V
    .registers 4

    .line 142
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->preloadResultCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_b
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->setAiCameraAvailable(I)V

    .line 144
    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getAiCameraAvailableListener()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method private final cleanPreload()V
    .registers 3

    .line 175
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    :cond_8
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->webView:Lcom/codemao/toolssdk/view/preload/PreloadToolsWebView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->onDestroy()V

    :cond_f
    return-void
.end method

.method public static final dWebViewCallIntercept(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 104
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callNative,方法:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",参数:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dPreLoad(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->isPreloadFinish(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    const-string p0, "预加载完成了"

    .line 106
    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dPreLoad(Ljava/lang/String;)V

    return v3

    .line 108
    :cond_2d
    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->isAiCameraAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_39

    const-string p0, "AI摄像头检测完成了"

    .line 109
    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dPreLoad(Ljava/lang/String;)V

    return v3

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method private final getAiCameraResult(Lcom/codemao/toolssdk/model/dsbridge/AiCameraAvailableResponse;)I
    .registers 4

    if-eqz p1, :cond_7

    .line 130
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/AiCameraAvailableResponse;->getData()Lcom/codemao/toolssdk/model/dsbridge/AiCameraAvailableResult;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v1, -0x1

    if-eqz v0, :cond_26

    .line 131
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/AiCameraAvailableResponse;->getData()Lcom/codemao/toolssdk/model/dsbridge/AiCameraAvailableResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/AiCameraAvailableResult;->getAvailable()Ljava/lang/Boolean;

    move-result-object p1

    .line 132
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    goto :goto_26

    .line 133
    :cond_1d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 v1, 0x2

    :cond_26
    :goto_26
    return v1
.end method

.method private final isAiCameraAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "application.aiCameraAvailable"

    .line 116
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    if-eqz p2, :cond_2f

    .line 118
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/codemao/toolssdk/model/dsbridge/AiCameraAvailableResponse;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/AiCameraAvailableResponse;

    .line 119
    sget-object p2, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-direct {p2, p1}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->getAiCameraResult(Lcom/codemao/toolssdk/model/dsbridge/AiCameraAvailableResponse;)I

    move-result p1

    .line 120
    sget-object p2, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->setAiCameraAvailable(I)V

    .line 121
    invoke-virtual {p2}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getAiCameraAvailableListener()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_2f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_2f
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "AI摄像头可用"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dPreLoad(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_38
    const/4 p1, 0x0

    return p1
.end method

.method private final isPreloadFinish(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "application.finish"

    .line 148
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 149
    sget-object p1, Lcom/codemao/toolssdk/manager/WebViewExtManager;->preloadResultCallback:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    if-eqz p1, :cond_14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_14
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, Lcom/codemao/toolssdk/manager/WebViewExtManager$$ExternalSyntheticLambda1;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    sput-boolean v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->isSuccessful:Z

    return v0

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method private static final isPreloadFinish$lambda$2()V
    .registers 1

    .line 151
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->destroy()V

    return-void
.end method

.method private final loadUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 90
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->handler:Landroid/os/Handler;

    if-nez v0, :cond_d

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_d
    sput-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->handler:Landroid/os/Handler;

    .line 91
    new-instance v1, Lcom/codemao/toolssdk/manager/WebViewExtManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/codemao/toolssdk/manager/WebViewExtManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final loadUrl$lambda$0(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->cleanPreload()V

    .line 93
    new-instance v1, Lcom/codemao/toolssdk/view/preload/PreloadToolsWebView;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/preload/PreloadToolsWebView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/codemao/toolssdk/manager/WebViewExtManager;->webView:Lcom/codemao/toolssdk/view/preload/PreloadToolsWebView;

    .line 96
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "执行预加载:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dPreLoad(Ljava/lang/String;)V

    .line 97
    sget-object p0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->webView:Lcom/codemao/toolssdk/view/preload/PreloadToolsWebView;

    if-eqz p0, :cond_33

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->loadFinalUrl(Ljava/lang/String;)V

    .line 98
    :cond_33
    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->timeoutHandle()V

    return-void
.end method

.method private final timeoutHandle()V
    .registers 5

    .line 166
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    sget-object v1, Lcom/codemao/toolssdk/manager/WebViewExtManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager$$ExternalSyntheticLambda2;

    .line 171
    sget-wide v2, Lcom/codemao/toolssdk/manager/WebViewExtManager;->timeoutMilli:J

    .line 166
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void
.end method

.method private static final timeoutHandle$lambda$3()V
    .registers 2

    .line 167
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->destroy()V

    .line 168
    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->preloadSuccess()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, -0x1

    .line 169
    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->changePreloadStatus(I)V

    :cond_f
    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    .line 180
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "销毁预加载"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dPreLoad(Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->webView:Lcom/codemao/toolssdk/view/preload/PreloadToolsWebView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBiz;->onDestroy()V

    .line 182
    :cond_e
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    :cond_16
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->preloadResultCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->preloadSuccess()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 184
    sput-object v1, Lcom/codemao/toolssdk/manager/WebViewExtManager;->preloadResultCallback:Lkotlin/jvm/functions/Function1;

    .line 186
    :cond_22
    sput-object v1, Lcom/codemao/toolssdk/manager/WebViewExtManager;->handler:Landroid/os/Handler;

    .line 187
    sput-object v1, Lcom/codemao/toolssdk/manager/WebViewExtManager;->webView:Lcom/codemao/toolssdk/view/preload/PreloadToolsWebView;

    return-void
.end method

.method public final preload(Landroid/content/Context;Ljava/lang/String;JLkotlin/jvm/functions/Function1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "获取预加载的链接"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dPreLoad(Ljava/lang/String;)V

    .line 57
    sput-wide p3, Lcom/codemao/toolssdk/manager/WebViewExtManager;->timeoutMilli:J

    .line 58
    sput-object p5, Lcom/codemao/toolssdk/manager/WebViewExtManager;->preloadResultCallback:Lkotlin/jvm/functions/Function1;

    const/4 p3, 0x3

    .line 59
    invoke-direct {p0, p3}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->changePreloadStatus(I)V

    .line 60
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {p4}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getCreationAPIHost()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/neko/config/preload-tools-sdk"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 62
    new-instance p5, Lokhttp3/Request$Builder;

    invoke-direct {p5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p5, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p5

    invoke-virtual {p5}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p5

    invoke-virtual {p4}, Lcom/codemao/toolssdk/manager/HttpClientManager;->normalHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p5, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p5

    invoke-virtual {p5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p5

    .line 63
    invoke-virtual {p4}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p4

    invoke-virtual {p4, p5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p4

    .line 64
    new-instance p5, Lcom/codemao/toolssdk/manager/WebViewExtManager$preload$1;

    invoke-direct {p5, p3, p2, p1}, Lcom/codemao/toolssdk/manager/WebViewExtManager$preload$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {p4, p5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public final preloadSuccess()Z
    .registers 2

    .line 162
    sget-boolean v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->isSuccessful:Z

    return v0
.end method
