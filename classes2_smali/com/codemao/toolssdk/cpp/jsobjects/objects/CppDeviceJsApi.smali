.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;
.source "CppDeviceJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$Companion;

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

.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method public static synthetic $r8$lambda$AWzy29JK0Mj-cHlUYOfXHQlx_bc(Landroid/content/Context;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->getSafeAreaTopBarHeight$lambda$0(Landroid/content/Context;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LZA3mYw6zLB_GzJ-e6HvF7whl50(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->setInterfaceOrientation$lambda$1(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fEbUt2yrxr0cuBIslzLCDEGlAK0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->getCameraPermission$lambda$2(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    .line 44
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device类初始化,renderGone值:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->isWebViewRenderGone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "摄像头"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2b

    .line 56
    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    if-eqz p1, :cond_38

    .line 58
    new-instance v0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->manager:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;

    .line 59
    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->setSensorChangedListener(Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;)V

    :cond_38
    return-void
.end method

.method public static final synthetic access$getCameraPermission$executeSuccess(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V
    .registers 2

    .line 36
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->getCameraPermission$executeSuccess(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V

    return-void
.end method

.method public static final synthetic access$getCameraPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V
    .registers 2

    .line 36
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->getCameraPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V

    return-void
.end method

.method public static final synthetic access$getCameraPermission$success(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 36
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->getCameraPermission$success(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$setWebViewRenderGone$cp(Z)V
    .registers 1

    .line 36
    sput-boolean p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->isWebViewRenderGone:Z

    return-void
.end method

.method private static final getCameraPermission$executeSuccess(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;",
            ")V"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 143
    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 144
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p1, "获取相机权限成功"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    return-void
.end method

.method private static final getCameraPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;",
            ")V"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 150
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    sget-object v2, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    const/16 v3, 0x1bef

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-direct {v0, v3, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 152
    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 153
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p1, "获取相机权限失败"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    return-void
.end method

.method private static final getCameraPermission$lambda$2(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$1$1;

    invoke-direct {v5, p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$1$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestCameraPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getCameraPermission$success(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_f

    if-eqz v0, :cond_12

    .line 158
    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$success$1;

    invoke-direct {v1, p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$success$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 167
    :cond_f
    invoke-static {p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->getCameraPermission$executeSuccess(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V

    :cond_12
    :goto_12
    return-void
.end method

.method private static final getSafeAreaTopBarHeight$lambda$0(Landroid/content/Context;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 9

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_14

    .line 93
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

    .line 94
    :goto_1d
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "根据activity返回值判断是否有刘海:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppJsDevice(Ljava/lang/String;)V

    if-eqz v0, :cond_57

    .line 96
    iget-object v0, p3, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_57

    .line 97
    iget-object p3, p3, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 99
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/CMToolsScreenUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget p3, p3, Landroid/graphics/Rect;->right:I

    goto :goto_50

    :cond_4e
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    :goto_50
    int-to-float p3, p3

    .line 100
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v0, p3}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->setNotchMargin(F)V

    goto :goto_58

    :cond_57
    const/4 p3, 0x0

    .line 104
    :goto_58
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    invoke-static {p0, p3}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->px2dp(Landroid/content/Context;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 105
    iget-object p0, p2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "返回activity获取的刘海:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppJsDevice(Ljava/lang/String;)V

    return-void
.end method

.method private final sendTiltEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;FFF)V
    .registers 7

    .line 264
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    .line 265
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;

    invoke-direct {v1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;-><init>(FFF)V

    const-string p2, "receiveTilt"

    .line 264
    invoke-direct {v0, p2, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    sget-object p2, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    .line 269
    new-instance p3, Lorg/json/JSONObject;

    iget-object p4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    sget-object p4, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$sendTiltEvent$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$sendTiltEvent$1;

    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$sendTiltEvent$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$sendTiltEvent$2;

    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final setInterfaceOrientation$lambda$1(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V
    .registers 4

    const-string v0, "$handler"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$iResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->manager:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->stopSensor()V

    :cond_7
    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    .line 289
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

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

    .line 133
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->manager:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->stopSensor()V

    .line 134
    :cond_11
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

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

    .line 126
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->manager:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->startSensor()V

    .line 127
    :cond_11
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

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

    .line 140
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "获取相机权限"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 171
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_30

    .line 172
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p1, :cond_33

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_33

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_33

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_33

    .line 182
    :cond_30
    invoke-static {p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->getCameraPermission$success(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public final getDeviceInfo(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 9
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

    .line 189
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生获取设备信息"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppRun(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_49

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 192
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    .line 193
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v3, 0x7d0

    .line 195
    sget-object v4, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    invoke-virtual {v4, v0}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->getDeviceInfo(Landroid/content/Context;)Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;

    move-result-object v5

    .line 193
    invoke-direct {v2, v3, v5}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 192
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-interface {p2, v1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "原生给web的设备信息:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->getDeviceInfo(Landroid/content/Context;)Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppRun(Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method public final getNetworkState(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生获取当前网络状态"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    .line 249
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 251
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 252
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

    .line 254
    :goto_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "原生通知web当前网络状态："

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

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
    .registers 11
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

    .line 65
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_15

    :cond_14
    move-object p1, v0

    .line 66
    :goto_15
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerBizConfig;->isEnableSafeAreaTopBarHeight()Z

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x1

    :goto_26
    const/4 v3, 0x0

    const/16 v4, 0x7d0

    if-nez v1, :cond_54

    .line 68
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 70
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "未开启刘海判断,直接返回0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppJsDevice(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_54
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v5, 0x0

    if-eqz v1, :cond_60

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;->isToolTypePlayer()Z

    move-result v1

    if-ne v1, v2, :cond_60

    goto :goto_61

    :cond_60
    const/4 v2, 0x0

    :goto_61
    if-eqz v2, :cond_66

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_67

    :cond_66
    const/4 v1, 0x0

    .line 74
    :goto_67
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "刘海判断基准:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ",刘海值:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v6}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getNotchMargin()F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppJsDevice(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v6}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getNotchMargin()F

    move-result v5

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_c2

    .line 76
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 77
    invoke-virtual {v6}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getNotchMargin()F

    move-result v1

    invoke-static {p1, v1}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->px2dp(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 76
    invoke-direct {v0, v4, p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "返回之前已经存在刘海:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppJsDevice(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_c2
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_c9

    .line 86
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :cond_c9
    if-eqz v0, :cond_d8

    .line 89
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V

    invoke-virtual {v1, v0, v2}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    goto :goto_fe

    .line 109
    :cond_d8
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activity为空直接返回0:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppJsDevice(Ljava/lang/String;)V

    :goto_fe
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

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "js询问render结果:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->isWebViewRenderGone:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "摄像头"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    .line 237
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 238
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/DeviceWebViewRenderGone;

    .line 239
    sget-boolean v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->isWebViewRenderGone:Z

    .line 238
    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/DeviceWebViewRenderGone;-><init>(Z)V

    const/16 v2, 0x7d0

    .line 237
    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 236
    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public onSensorChanged(FFF)V
    .registers 11

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 276
    iget-wide v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->lastPostEventMills:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_14

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1b

    .line 277
    :cond_14
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->sendTiltEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;FFF)V

    .line 278
    iput-wide v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->lastPostEventMills:J

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

    .line 205
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    if-nez p1, :cond_2a

    .line 207
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p1, :cond_20

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_20

    const-string v1, "clipboard"

    .line 208
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_21

    :cond_20
    move-object p1, v0

    :goto_21
    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    .line 207
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/ClipboardManager;

    .line 206
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    .line 210
    :cond_2a
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    goto :goto_34

    :cond_33
    move-object p1, v0

    :goto_34
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    .line 212
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    if-lez v2, :cond_4e

    .line 213
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_4e
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

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

    .line 283
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

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

    .line 117
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;

    .line 118
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerKnWork;->changePageOrientation(Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;)V

    .line 119
    :cond_27
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 121
    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_43
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

    .line 220
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 221
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 223
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string v2, "clipboard"

    .line 224
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_25

    :cond_24
    move-object v0, v1

    :goto_25
    const-string v2, "null cannot be cast to non-null type android.content.ClipboardManager"

    .line 223
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ClipboardManager;

    .line 222
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    .line 226
    :cond_2e
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 228
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_4c
    return-void
.end method
