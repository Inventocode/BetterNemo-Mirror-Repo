.class public final Lcom/codemao/toolssdk/func/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.kt"


# instance fields
.field private cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

.field private closeListener:Landroid/view/View$OnClickListener;

.field private container:Landroid/view/ViewGroup;

.field private showView:Lcom/codemao/toolssdk/func/camera/CameraPreviewView;


# direct methods
.method public static synthetic $r8$lambda$3948v9SPu5NF0JiLKikPSgUcMGM(Lcom/codemao/toolssdk/func/camera/CameraManager;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/func/camera/CameraManager;->createShowView$lambda$0(Lcom/codemao/toolssdk/func/camera/CameraManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4ZVq51o7_fRKyhCcryxtku3yw8Y(Lcom/codemao/toolssdk/func/camera/CameraManager;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Lkotlin/jvm/functions/Function3;Landroid/content/Context;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/func/camera/CameraManager;->start$lambda$1(Lcom/codemao/toolssdk/func/camera/CameraManager;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Lkotlin/jvm/functions/Function3;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCameraHelper$p(Lcom/codemao/toolssdk/func/camera/CameraManager;)Lcom/codemao/toolssdk/func/camera/CameraHelper;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    return-object p0
.end method

.method public static final synthetic access$getShowView$p(Lcom/codemao/toolssdk/func/camera/CameraManager;)Lcom/codemao/toolssdk/func/camera/CameraPreviewView;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->showView:Lcom/codemao/toolssdk/func/camera/CameraPreviewView;

    return-object p0
.end method

.method private final addShowView(Landroid/widget/FrameLayout;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;)Landroidx/camera/view/PreviewView;
    .registers 7

    const-string v0, "container.context"

    .line 47
    sget v1, Lcom/codemao/toolssdk/R$id;->toolsdk_camera_preview_layout:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 49
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "摄像头布局已存在,不需要再添加"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->showView:Lcom/codemao/toolssdk/func/camera/CameraPreviewView;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->getPreviewView()Landroidx/camera/view/PreviewView;

    move-result-object v2

    :cond_1f
    return-object v2

    .line 53
    :cond_20
    :try_start_20
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lcom/codemao/toolssdk/func/camera/CameraManager;->createShowView(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;)Lcom/codemao/toolssdk/func/camera/CameraPreviewView;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->showView:Lcom/codemao/toolssdk/func/camera/CameraPreviewView;

    if-eqz v1, :cond_34

    .line 54
    iget-object v3, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_34
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getFrameLayoutParams(Landroid/content/Context;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 56
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->showView:Lcom/codemao/toolssdk/func/camera/CameraPreviewView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->showView:Lcom/codemao/toolssdk/func/camera/CameraPreviewView;

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->getPreviewView()Landroidx/camera/view/PreviewView;

    move-result-object v2
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4c} :catch_4d

    :cond_4c
    return-object v2

    :catch_4d
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "添加摄像头布局异常:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    return-object v2
.end method

.method private final createShowView(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;)Lcom/codemao/toolssdk/func/camera/CameraPreviewView;
    .registers 5

    .line 28
    new-instance v0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;

    iget-object v1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->closeListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;-><init>(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Landroid/view/View$OnClickListener;)V

    .line 29
    sget p1, Lcom/codemao/toolssdk/R$id;->camera_rotation:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/codemao/toolssdk/func/camera/CameraManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/func/camera/CameraManager$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/func/camera/CameraManager;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final createShowView$lambda$0(Lcom/codemao/toolssdk/func/camera/CameraManager;Landroid/view/View;)V
    .registers 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->getCurrentRotation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_14

    :cond_13
    move-object p1, v0

    :goto_14
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez p1, :cond_1a

    goto :goto_25

    .line 32
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_46

    :cond_25
    :goto_25
    if-nez p1, :cond_28

    goto :goto_33

    .line 33
    :cond_28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_33

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_46

    :cond_33
    :goto_33
    if-nez p1, :cond_36

    goto :goto_42

    .line 34
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_42

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_46

    .line 35
    :cond_42
    :goto_42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 37
    :goto_46
    iget-object p0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-eqz p0, :cond_51

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, v1, v3, v0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->changeRotation$default(Lcom/codemao/toolssdk/func/camera/CameraHelper;IIILjava/lang/Object;)V

    :cond_51
    return-void
.end method

.method private static final start$lambda$1(Lcom/codemao/toolssdk/func/camera/CameraManager;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Lkotlin/jvm/functions/Function3;Landroid/content/Context;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, p2}, Lcom/codemao/toolssdk/func/camera/CameraManager;->addShowView(Landroid/widget/FrameLayout;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;)Landroidx/camera/view/PreviewView;

    move-result-object p2

    if-nez p2, :cond_26

    .line 82
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 p1, 0x1bf0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "添加摄像头布局异常"

    invoke-interface {p3, p0, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 84
    :cond_26
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->container:Landroid/view/ViewGroup;

    .line 85
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-nez p1, :cond_3b

    new-instance p1, Lcom/codemao/toolssdk/func/camera/CameraHelper;

    move-object v0, p4

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v1, Lcom/codemao/toolssdk/func/camera/CameraManager$start$1$1;

    invoke-direct {v1, p0, p3}, Lcom/codemao/toolssdk/func/camera/CameraManager$start$1$1;-><init>(Lcom/codemao/toolssdk/func/camera/CameraManager;Lkotlin/jvm/functions/Function3;)V

    invoke-direct {p1, p4, v0, p2, v1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/view/PreviewView;Lkotlin/jvm/functions/Function0;)V

    :cond_3b
    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    :goto_3d
    return-void
.end method


# virtual methods
.method public final captureBackFile(Landroid/content/Context;Lkotlin/jvm/functions/Function3;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/codemao/toolssdk/func/camera/CameraManager$captureBackFile$1;

    invoke-direct {v1, p2}, Lcom/codemao/toolssdk/func/camera/CameraManager$captureBackFile$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, p1, v1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->captureFile(Landroid/content/Context;Lkotlin/jvm/functions/Function3;)V

    :cond_16
    return-void
.end method

.method public final captureRotation(Lkotlin/jvm/functions/Function4;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeOptInUsageError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "通过view.rotation处理照片方向"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-eqz v0, :cond_18

    new-instance v1, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/func/camera/CameraManager$captureRotation$1;-><init>(Lcom/codemao/toolssdk/func/camera/CameraManager;Lkotlin/jvm/functions/Function4;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->capture(Lkotlin/jvm/functions/Function3;)V

    :cond_18
    return-void
.end method

.method public final close()Z
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->close()V

    .line 219
    :cond_7
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->showView:Lcom/codemao/toolssdk/func/camera/CameraPreviewView;

    if-eqz v0, :cond_19

    .line 220
    iget-object v1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->container:Landroid/view/ViewGroup;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 221
    :cond_12
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "移除摄像头布局"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 223
    :cond_19
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->destroy()V

    :cond_20
    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public final destroy()V
    .registers 2

    .line 237
    invoke-virtual {p0}, Lcom/codemao/toolssdk/func/camera/CameraManager;->close()Z

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->closeListener:Landroid/view/View$OnClickListener;

    .line 239
    iput-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->container:Landroid/view/ViewGroup;

    return-void
.end method

.method public final getLensFacing()I
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->getCurrentLensFacing()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public final setCloseClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->closeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setRotation(Ljava/lang/Float;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->getCurrentRotation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 183
    :goto_11
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "当前方向："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",要修改的方向:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->isFrontFacing()Z

    move-result v0

    if-ne v0, v1, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x2

    const/high16 v6, 0x40000000  # 2.0f

    const/high16 v7, 0x40400000  # 3.0f

    if-eqz v0, :cond_64

    .line 186
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_52

    :goto_50
    const/4 v1, 0x0

    goto :goto_81

    .line 187
    :cond_52
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_5b

    goto :goto_76

    .line 188
    :cond_5b
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_81

    goto :goto_6c

    .line 193
    :cond_64
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_6e

    :goto_6c
    const/4 v1, 0x2

    goto :goto_81

    .line 194
    :cond_6e
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_78

    :goto_76
    const/4 v1, 0x3

    goto :goto_81

    .line 195
    :cond_78
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_81

    goto :goto_50

    .line 206
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-eqz v0, :cond_8d

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1, v1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->changeRotation(II)V

    :cond_8d
    return-void
.end method

.method public final setRotation2(F)V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->changeRotation2(F)V

    :cond_7
    return-void
.end method

.method public final start(Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Lkotlin/jvm/functions/Function3;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "option"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    instance-of v0, p1, Landroidx/activity/ComponentActivity;

    const/16 v1, 0x1bf0

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_2b

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activity不对:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, v1, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 75
    :cond_2b
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-nez v0, :cond_46

    .line 76
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "父容器类型不对:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, v1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 79
    :cond_46
    move-object v0, p2

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v7, Lcom/codemao/toolssdk/func/camera/CameraManager$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/func/camera/CameraManager$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/func/camera/CameraManager;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Lkotlin/jvm/functions/Function3;Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startOnActivity(Landroidx/activity/ComponentActivity;Landroidx/camera/view/PreviewView;Lkotlin/jvm/functions/Function3;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Landroidx/camera/view/PreviewView;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/codemao/toolssdk/func/camera/CameraHelper;

    new-instance v1, Lcom/codemao/toolssdk/func/camera/CameraManager$startOnActivity$1;

    invoke-direct {v1, p0, p3}, Lcom/codemao/toolssdk/func/camera/CameraManager$startOnActivity$1;-><init>(Lcom/codemao/toolssdk/func/camera/CameraManager;Lkotlin/jvm/functions/Function3;)V

    invoke-direct {v0, p1, p1, p2, v1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/view/PreviewView;Lkotlin/jvm/functions/Function0;)V

    :cond_1d
    iput-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    return-void
.end method

.method public final stopPreview()V
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->stopPreview()V

    :cond_7
    return-void
.end method

.method public final switch(Lkotlin/jvm/functions/Function3;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager;->cameraHelper:Lcom/codemao/toolssdk/func/camera/CameraHelper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->switch()Z

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_22

    .line 116
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 118
    :cond_22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v1, 0x1bf2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "切换摄像头失败"

    invoke-interface {p1, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    return-void
.end method
