.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;
.source "WoodCameraJsApiX.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$Companion;
    }
.end annotation


# instance fields
.field private cameraCloseCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private cameraInited:Z

.field private final cameraManager$delegate:Lkotlin/Lazy;

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

.field private isLaunchSuccess:Z

.field private isSwitching:Z

.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method public static synthetic $r8$lambda$FzyQ7HeUBYaulI8O6J3p1TZlE4k(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraRotation;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->setRotation$lambda$7(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraRotation;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bmbjXTKvCV6EeGCRXtWJ01MFH6I(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/os/Handler;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->switchOrientation$lambda$2$lambda$1(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/os/Handler;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lZec5hToLacntO3t6YQqECpBlyY(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->start$execute$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oxZOm_aBnKcpIFoqbE2jNjAyXMM(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->capture$lambda$4$lambda$3(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wuRSGNtgl4eZe1JhlgpaNZkopYs(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->close$lambda$6$lambda$5(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    .line 25
    new-instance p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->cameraManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCameraCloseCallback$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->cameraCloseCallback:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$nullFail(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;ILcom/codemao/toolssdk/dsbridge/CompletionHandler;)Z
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->nullFail(ILcom/codemao/toolssdk/dsbridge/CompletionHandler;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setCameraInited$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Z)V
    .registers 2

    .line 18
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->cameraInited:Z

    return-void
.end method

.method public static final synthetic access$setLaunchSuccess$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Z)V
    .registers 2

    .line 18
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->isLaunchSuccess:Z

    return-void
.end method

.method public static final synthetic access$setSwitching$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Z)V
    .registers 2

    .line 18
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->isSwitching:Z

    return-void
.end method

.method public static final synthetic access$start$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;)V
    .registers 5

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->start$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;)V

    return-void
.end method

.method private static final capture$lambda$4$lambda$3(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->getCameraManager()Lcom/codemao/toolssdk/func/camera/CameraManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$capture$1$1$1;

    invoke-direct {v1, p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$capture$1$1$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraManager;->captureRotation(Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method private static final close$lambda$6$lambda$5(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->getCameraManager()Lcom/codemao/toolssdk/func/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/camera/CameraManager;->close()Z

    .line 163
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->cameraCloseCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 164
    :cond_18
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 166
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "通知web关闭摄像头结果:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    return-void
.end method

.method private final getCameraManager()Lcom/codemao/toolssdk/func/camera/CameraManager;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->cameraManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/func/camera/CameraManager;

    return-object v0
.end method

.method private final nullFail(ILcom/codemao/toolssdk/dsbridge/CompletionHandler;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-nez v0, :cond_43

    .line 188
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v0, p1, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 189
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 190
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null,通知web执行失败:+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_43
    const/4 p1, 0x0

    return p1
.end method

.method private static final setRotation$lambda$7(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraRotation;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->getCameraManager()Lcom/codemao/toolssdk/func/camera/CameraManager;

    move-result-object v0

    sget-object v1, Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraRotation;->getOrientation()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;->webRotation2PreviewRotation(Ljava/lang/Float;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/func/camera/CameraManager;->setRotation2(F)V

    .line 178
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final start$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x1bf0

    .line 65
    invoke-direct {p0, v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->nullFail(ILcom/codemao/toolssdk/dsbridge/CompletionHandler;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 68
    :cond_9
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v7, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    return-void
.end method

.method private static final start$execute$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->getCameraManager()Lcom/codemao/toolssdk/func/camera/CameraManager;

    move-result-object v0

    const-string v1, "option"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$execute$1$1;

    invoke-direct {v1, p0, p4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$execute$1$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/codemao/toolssdk/func/camera/CameraManager;->start(Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final switchOrientation$lambda$2$lambda$1(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/os/Handler;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->getCameraManager()Lcom/codemao/toolssdk/func/camera/CameraManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1;-><init>(Landroid/os/Handler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraManager;->switch(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method


# virtual methods
.method public final capture(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    .line 132
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "执行拍照操作"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    const/16 p1, 0x1bf1

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->nullFail(ILcom/codemao/toolssdk/dsbridge/CompletionHandler;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return-void

    .line 137
    :cond_1a
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p1, :cond_32

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_32

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 138
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_32
    return-void
.end method

.method public final close(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    .line 155
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生关闭摄像头"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    const/16 p1, 0x1bf3

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->nullFail(ILcom/codemao/toolssdk/dsbridge/CompletionHandler;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return-void

    .line 160
    :cond_1a
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p1, :cond_32

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_32

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 161
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_32
    return-void
.end method

.method public final getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .line 205
    invoke-super {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->onDestroy()V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    .line 207
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->cameraCloseCallback:Lkotlin/jvm/functions/Function0;

    .line 208
    iget-boolean v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->cameraInited:Z

    if-eqz v0, :cond_1a

    .line 209
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->getCameraManager()Lcom/codemao/toolssdk/func/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/camera/CameraManager;->destroy()V

    .line 210
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行销毁"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public final setCameraCloseCallback(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->cameraCloseCallback:Lkotlin/jvm/functions/Function0;

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

    .line 197
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setRotation(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    .line 173
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraRotation;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraRotation;

    .line 174
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web通知原生旋转摄像头:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4b

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraRotation;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4b
    return-void
.end method

.method public final start(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 10
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

    .line 53
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    .line 54
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "启动摄像头，参数："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getW()Ljava/lang/Float;

    move-result-object v0

    .line 58
    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getH()Ljava/lang/Float;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "web返回的w,h宽高: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x78

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v0, 0x0

    if-eqz p1, :cond_63

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object p1

    move-object v3, p1

    goto :goto_64

    :cond_63
    move-object v3, v0

    .line 62
    :goto_64
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p1, :cond_6e

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getCurrentView()Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    goto :goto_6f

    :cond_6e
    move-object v4, v0

    .line 80
    :goto_6f
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_81

    if-eqz p1, :cond_84

    .line 81
    new-instance v6, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;)V

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_84

    .line 90
    :cond_81
    invoke-static {p0, p2, v3, v4, v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->start$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;)V

    :cond_84
    :goto_84
    return-void
.end method

.method public final switchOrientation(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    .line 98
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraOrientation;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraOrientation;

    .line 99
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "切换摄像头方向，参数："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 101
    iget-boolean p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->isLaunchSuccess:Z

    if-nez p1, :cond_38

    return-void

    .line 105
    :cond_38
    iget-boolean p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->isSwitching:Z

    if-eqz p1, :cond_55

    .line 106
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const-string p1, "摄像头在切换中,不响应"

    .line 108
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    return-void

    :cond_55
    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->isSwitching:Z

    const/16 p1, 0x1bf2

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->nullFail(ILcom/codemao/toolssdk/dsbridge/CompletionHandler;)Z

    move-result p1

    if-eqz p1, :cond_61

    return-void

    .line 116
    :cond_61
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p1, :cond_79

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_79

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_79

    .line 117
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/os/Handler;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_79
    return-void
.end method
