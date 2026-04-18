.class public final Lcom/codemao/toolssdk/jsapi/DeviceJsApi;
.super Ljava/lang/Object;
.source "DeviceJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/jsapi/DeviceJsApi$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/jsapi/DeviceJsApi$Companion;

.field private static isWebViewRenderGone:Z


# instance fields
.field private cameraPrepareListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private clipboardManager:Landroid/content/ClipboardManager;

.field private final gson:Lcom/google/gson/Gson;

.field private lastPostEventMills:J

.field private manager:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;

.field private final toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method public static synthetic $r8$lambda$M6lzsCMqfJs-cMSj1bpxzxomwRI(Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->getCameraPermission$lambda$2(Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rfLKgUzomauv1OzaICuhG3ZRNnw(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->setInterfaceOrientation$lambda$1(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zc5yw-C87MWlt_c9KRNj84c2QAU(Landroid/content/Context;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->getSafeAreaTopBarHeight$lambda$0(Landroid/content/Context;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/DeviceJsApi$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 4

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    .line 42
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device类初始化,renderGone值:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->isWebViewRenderGone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "摄像头"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 52
    new-instance v0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->manager:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;

    .line 53
    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->setSensorChangedListener(Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;)V

    :cond_39
    return-void
.end method

.method public static final synthetic access$getCameraPermission$executeSuccess(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;)V
    .registers 2

    .line 34
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->getCameraPermission$executeSuccess(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;)V

    return-void
.end method

.method public static final synthetic access$getCameraPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;)V
    .registers 2

    .line 34
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->getCameraPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;)V

    return-void
.end method

.method public static final synthetic access$getCameraPermission$success(Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 34
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->getCameraPermission$success(Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$setWebViewRenderGone$cp(Z)V
    .registers 1

    .line 34
    sput-boolean p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->isWebViewRenderGone:Z

    return-void
.end method

.method private static final getCameraPermission$executeSuccess(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/DeviceJsApi;",
            ")V"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    iget-object p1, p1, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 127
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p1, "原生通知web摄像头权限成功"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    return-void
.end method

.method private static final getCameraPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/DeviceJsApi;",
            ")V"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 133
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    sget-object v2, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    const/16 v3, 0x1bef

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-direct {v0, v3, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 135
    iget-object p1, p1, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 136
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p1, "原生通知web摄像头权限失败"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    return-void
.end method

.method private static final getCameraPermission$lambda$2(Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    new-instance v4, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$getCameraPermission$1$1;

    invoke-direct {v4, p0, p1}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$getCameraPermission$1$1;-><init>(Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestCameraPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getCameraPermission$success(Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/DeviceJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_f

    if-eqz v0, :cond_12

    .line 141
    new-instance v1, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$getCameraPermission$success$1;

    invoke-direct {v1, p1, p0}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$getCameraPermission$success$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 150
    :cond_f
    invoke-static {p1, p0}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->getCameraPermission$executeSuccess(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;)V

    :cond_12
    :goto_12
    return-void
.end method

.method private static final getSafeAreaTopBarHeight$lambda$0(Landroid/content/Context;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 8

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_14

    .line 79
    iget-boolean v2, p3, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->hasNotch:Z

    if-ne v2, v0, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_1c

    iget-object v2, p3, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const-string v2, "刘海"

    if-eqz v0, :cond_5d

    .line 81
    iget-object v0, p3, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "所有值:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p3, p3, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 84
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/CMToolsScreenUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget p3, p3, Landroid/graphics/Rect;->right:I

    goto :goto_56

    :cond_54
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    :goto_56
    int-to-float p3, p3

    .line 85
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0, p3}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->setNotchMargin(F)V

    goto :goto_5e

    :cond_5d
    const/4 p3, 0x0

    .line 89
    :goto_5e
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    invoke-static {p0, p3}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->px2dp(Landroid/content/Context;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "检测完后,返回结果:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p2, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private final sendTiltEvent(Lcom/codemao/toolssdk/view/ToolsWebView;FFF)V
    .registers 7

    .line 234
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    .line 235
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;

    invoke-direct {v1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;-><init>(FFF)V

    const-string p2, "receiveTilt"

    .line 234
    invoke-direct {v0, p2, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    sget-object p2, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    .line 239
    new-instance p3, Lorg/json/JSONObject;

    iget-object p4, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    sget-object p4, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$sendTiltEvent$1;->INSTANCE:Lcom/codemao/toolssdk/jsapi/DeviceJsApi$sendTiltEvent$1;

    sget-object v0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$sendTiltEvent$2;->INSTANCE:Lcom/codemao/toolssdk/jsapi/DeviceJsApi$sendTiltEvent$2;

    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/view/ToolsWebView;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final setInterfaceOrientation$lambda$1(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V
    .registers 4

    const-string v0, "$handler"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$iResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p1, p1, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->manager:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->stopSensor()V

    :cond_7
    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    .line 259
    iput-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final disableTiltDetection(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->manager:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->stopSensor()V

    .line 117
    :cond_11
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final enableTiltDetection(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    .line 109
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->manager:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->startSensor()V

    .line 110
    :cond_11
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCameraPermission(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
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

    .line 123
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生获取摄像头权限"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 154
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_2e

    .line 155
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_31

    new-instance v0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .line 165
    :cond_2e
    invoke-static {p0, p2}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->getCameraPermission$success(Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public final getDeviceInfo(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
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

    .line 172
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "toolsWebView.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->getDeviceInfo(Landroid/content/Context;)Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final getNetworkState(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生获取当前网络状态"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    .line 219
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 221
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 222
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/WebGetNetworkStatusResult;

    sget-object v2, Lcom/codemao/toolssdk/utils/NetWorkHelper;->INSTANCE:Lcom/codemao/toolssdk/utils/NetWorkHelper;

    invoke-virtual {v2, v0}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->getDeviceJsApiNetworkStatus(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/WebGetNetworkStatusResult;-><init>(Ljava/lang/Integer;)V

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    .line 224
    :goto_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "原生通知web当前网络状态："

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(IResult(CMTStatus.success, data))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getSafeAreaTopBarHeight(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->isToolTypePlayer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 61
    :goto_1d
    sget-object v2, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getNotchMargin()F

    move-result v3

    const/16 v4, 0x7d0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_5a

    .line 62
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 63
    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getNotchMargin()F

    move-result v1

    invoke-static {p1, v1}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->px2dp(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 62
    invoke-direct {v0, v4, p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "已经有值,返回结果:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "刘海"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void

    :cond_5a
    const/4 v0, 0x0

    .line 71
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_62

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :cond_62
    if-eqz v0, :cond_71

    .line 75
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, p0}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;)V

    invoke-virtual {v1, v0, v2}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    goto :goto_83

    .line 94
    :cond_71
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_83
    return-void
.end method

.method public final isWebViewRenderGone(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "js询问render结果:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->isWebViewRenderGone:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "摄像头"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    .line 207
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 208
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/DeviceWebViewRenderGone;

    .line 209
    sget-boolean v2, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->isWebViewRenderGone:Z

    .line 208
    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/DeviceWebViewRenderGone;-><init>(Z)V

    const/16 v2, 0x7d0

    .line 207
    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 206
    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public onSensorChanged(FFF)V
    .registers 11

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 246
    iget-wide v2, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->lastPostEventMills:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_14

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1b

    .line 247
    :cond_14
    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->sendTiltEvent(Lcom/codemao/toolssdk/view/ToolsWebView;FFF)V

    .line 248
    iput-wide v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->lastPostEventMills:J

    :cond_1b
    return-void
.end method

.method public final readText(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
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

    .line 177
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    if-nez p1, :cond_23

    .line 179
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/ClipboardManager;

    .line 178
    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    .line 181
    :cond_23
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    move-object p1, v0

    :goto_2e
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    .line 183
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    if-lez v2, :cond_48

    .line 184
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_48
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/ClipboardInfo;

    invoke-direct {v3, v0}, Lcom/codemao/toolssdk/model/dsbridge/ClipboardInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setInterfaceOrientation(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;

    .line 102
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->changePageOrientation(Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;)V

    .line 103
    :cond_25
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p0, p1}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final writeText(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    .line 191
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 192
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    if-nez v0, :cond_27

    .line 194
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ClipboardManager;

    .line 193
    iput-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    .line 196
    :cond_27
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 197
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 198
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    invoke-direct {v1, v2, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_46
    return-void
.end method
