.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WoodCameraJsApiX.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/toolssdk/func/camera/CameraManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;


# direct methods
.method public static synthetic $r8$lambda$keKc6IjTpFLz1EkB9qfDwa5CUjc(Lcom/codemao/toolssdk/func/camera/CameraManager;Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2;->invoke$lambda$1$lambda$0(Lcom/codemao/toolssdk/func/camera/CameraManager;Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/codemao/toolssdk/func/camera/CameraManager;Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/view/View;)V
    .registers 3

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/codemao/toolssdk/func/camera/CameraManager;->close()Z

    .line 30
    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p0

    if-eqz p0, :cond_1e

    sget-object p2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2$manager$1$1$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2$manager$1$1$1;

    invoke-interface {p0, p2}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerBiz;->closeCameraDialog(Lkotlin/jvm/functions/Function1;)V

    :cond_1e
    const/4 p0, 0x0

    .line 33
    invoke-static {p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->access$setLaunchSuccess$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Z)V

    .line 34
    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->access$getCameraCloseCallback$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_2b

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2b
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/toolssdk/func/camera/CameraManager;
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->access$setCameraInited$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Z)V

    .line 27
    new-instance v0, Lcom/codemao/toolssdk/func/camera/CameraManager;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraManager;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    .line 28
    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/func/camera/CameraManager;Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;)V

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/func/camera/CameraManager;->setCloseClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2;->invoke()Lcom/codemao/toolssdk/func/camera/CameraManager;

    move-result-object v0

    return-object v0
.end method
