.class final Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CameraManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/func/camera/CameraManager;->captureRotation(Lkotlin/jvm/functions/Function4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Landroidx/camera/core/ImageProxy;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/func/camera/CameraManager;


# direct methods
.method public static synthetic $r8$lambda$SCMvqis3Tkx3hjvSIQR-sMzhpzs(Lcom/codemao/toolssdk/func/camera/CameraManager;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;->invoke$lambda$0(Lcom/codemao/toolssdk/func/camera/CameraManager;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/func/camera/CameraManager;Lkotlin/jvm/functions/Function4;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/func/camera/CameraManager;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;->this$0:Lcom/codemao/toolssdk/func/camera/CameraManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;->$callback:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/codemao/toolssdk/func/camera/CameraManager;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "停止预览"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/codemao/toolssdk/func/camera/CameraManager;->stopPreview()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 143
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroidx/camera/core/ImageProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;->invoke(ZLjava/lang/String;Landroidx/camera/core/ImageProxy;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZLjava/lang/String;Landroidx/camera/core/ImageProxy;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    .line 144
    invoke-interface {p3}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz p1, :cond_5c

    if-eqz v1, :cond_5c

    .line 146
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;->this$0:Lcom/codemao/toolssdk/func/camera/CameraManager;

    invoke-static {p1}, Lcom/codemao/toolssdk/func/camera/CameraManager;->access$getShowView$p(Lcom/codemao/toolssdk/func/camera/CameraManager;)Lcom/codemao/toolssdk/func/camera/CameraPreviewView;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p2, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;->this$0:Lcom/codemao/toolssdk/func/camera/CameraManager;

    new-instance v1, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/func/camera/CameraManager;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 150
    :cond_1f
    sget-object p1, Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;

    .line 152
    iget-object p2, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;->this$0:Lcom/codemao/toolssdk/func/camera/CameraManager;

    invoke-static {p2}, Lcom/codemao/toolssdk/func/camera/CameraManager;->access$getCameraHelper$p(Lcom/codemao/toolssdk/func/camera/CameraManager;)Lcom/codemao/toolssdk/func/camera/CameraHelper;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_32

    invoke-virtual {p2}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->isFrontFacing()Z

    move-result p2

    if-ne p2, v1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 153
    :goto_33
    iget-object p2, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;->this$0:Lcom/codemao/toolssdk/func/camera/CameraManager;

    invoke-static {p2}, Lcom/codemao/toolssdk/func/camera/CameraManager;->access$getCameraHelper$p(Lcom/codemao/toolssdk/func/camera/CameraManager;)Lcom/codemao/toolssdk/func/camera/CameraHelper;

    move-result-object p2

    if-eqz p2, :cond_40

    invoke-virtual {p2}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->getPreviewViewRotation()F

    move-result p2

    goto :goto_41

    :cond_40
    const/4 p2, 0x0

    .line 150
    :goto_41
    invoke-virtual {p1, p3, v1, p2}, Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;->processCaptureImageProxy(Landroidx/camera/core/ImageProxy;ZF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 156
    sget-object p2, Lcom/codemao/toolssdk/func/camera/CTCameraUtils;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CTCameraUtils;

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/func/camera/CTCameraUtils;->processImageBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 157
    iget-object p2, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;->$callback:Lkotlin/jvm/functions/Function4;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2, v0, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-interface {p3}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_69

    .line 160
    :cond_5c
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;->$callback:Lkotlin/jvm/functions/Function4;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v1, 0x1bf1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p3, v1, p2, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_69
    return-void
.end method
