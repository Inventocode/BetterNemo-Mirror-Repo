.class public final Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;
.super Landroidx/fragment/app/Fragment;
.source "CTCameraCaptureFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCTCameraCaptureFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CTCameraCaptureFragment.kt\ncom/codemao/toolssdk/page/camera/CTCameraCaptureFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,171:1\n78#2,3:172\n*S KotlinDebug\n*F\n+ 1 CTCameraCaptureFragment.kt\ncom/codemao/toolssdk/page/camera/CTCameraCaptureFragment\n*L\n34#1:172,3\n*E\n"
.end annotation


# instance fields
.field private binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

.field private cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

.field private final cameraVM$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$6Jw-e4UdAfC2EUdJ5f5Yr3X7skI(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->viewClick$lambda$1(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7AIt-IZffaFa-hi4R8gFU1gmh-w(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->viewClick$lambda$2(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Aj2rMWP3g1mtgrE8vpbYOYOa2Dc(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->viewClick$lambda$4(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BSM8LNFLuFnzdkXWzW8SedUTTaE(Lkotlin/jvm/internal/Ref$IntRef;Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->viewClick$lambda$3(Lkotlin/jvm/internal/Ref$IntRef;Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aQ6pI5Z0jSOIgE2jJYLysDIzDec(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->onViewCreated$lambda$0(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 79
    const-class v0, Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 80
    new-instance v2, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 79
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraVM$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$compress(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/net/Uri;)Z
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->compress(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCameraManager$p(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)Lcom/codemao/toolssdk/func/camera/CameraManager;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    return-object p0
.end method

.method private final compress(Landroid/net/Uri;)Z
    .registers 16

    .line 120
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->getOptionData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    .line 122
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->isScene()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->getMaxSize()I

    move-result v1

    goto :goto_26

    :cond_22
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->getMiniSize()I

    move-result v1

    .line 124
    :goto_26
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->isScene()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->getMaxSize()I

    move-result v0

    goto :goto_3b

    :cond_37
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->getMiniSize()I

    move-result v0

    .line 125
    :goto_3b
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "web返回的size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    const v3, 0x44778000  # 990.0f

    int-to-float v1, v1

    div-float v4, v3, v1

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 129
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 130
    new-instance v13, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;

    mul-float v1, v1, v3

    float-to-int v5, v1

    mul-float v0, v0, v3

    float-to-int v6, v0

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x28

    const/4 v12, 0x0

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;-><init>(IIIIZLandroid/graphics/Bitmap$CompressFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    sget-object v0, Lcom/codemao/toolssdk/func/camera/CTCameraUtils;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CTCameraUtils;

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "requireContext()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    const/4 v4, 0x1

    if-eqz v3, :cond_8e

    invoke-virtual {v3}, Lcom/codemao/toolssdk/func/camera/CameraManager;->getLensFacing()I

    move-result v3

    goto :goto_8f

    :cond_8e
    const/4 v3, 0x1

    .line 136
    :goto_8f
    invoke-virtual {v0, v1, p1, v3}, Lcom/codemao/toolssdk/func/camera/CTCameraUtils;->processAndOverwriteImageFromUri(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "拍照文件方向处理结果："

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 142
    sget-object v5, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/ImageCompressUtils;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v13}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->compressFile(Ljava/io/File;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_12a

    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_12a

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/kn_add_material"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f1

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_f1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v7, v1

    invoke-static/range {v5 .. v10}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->saveCompressedImage$default(Lcom/codemao/toolssdk/utils/ImageCompressUtils;Landroid/graphics/Bitmap;Ljava/io/File;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12a

    .line 152
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveFile.path"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->setCaptureFileResult(Ljava/lang/String;)V

    return v4

    :cond_12a
    const/4 p1, 0x0

    return p1
.end method

.method private final getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraVM$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    return-object v0
.end method

.method private static final onViewCreated$lambda$0(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->coverView:Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->getOptionData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->setOptions(Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;)V

    .line 56
    :cond_1e
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    if-eqz p0, :cond_29

    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->coverView:Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_29
    return-void
.end method

.method private final viewClick()V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->cameraCapture:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_10
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    if-eqz v0, :cond_20

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->cameraSwitch:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_20
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    if-eqz v0, :cond_27

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->cameraRotation:Landroid/widget/ImageView;

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-nez v0, :cond_2b

    goto :goto_43

    .line 104
    :cond_2b
    sget-object v1, Lcom/codemao/toolssdk/utils/DeviceUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/DeviceUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/DeviceUtils;->isXiaomiPad6(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    goto :goto_40

    :cond_3e
    const/16 v1, 0x8

    .line 103
    :goto_40
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    :goto_43
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 106
    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    if-eqz v1, :cond_5b

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->cameraRotation:Landroid/widget/ImageView;

    if-eqz v1, :cond_5b

    new-instance v2, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_5b
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    if-eqz v0, :cond_6b

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->cameraClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_6b

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6b
    return-void
.end method

.method private static final viewClick$lambda$1(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$1$1;-><init>(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraManager;->captureBackFile(Landroid/content/Context;Lkotlin/jvm/functions/Function3;)V

    :cond_1a
    return-void
.end method

.method private static final viewClick$lambda$2(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    if-eqz p0, :cond_e

    sget-object p1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$2$1;->INSTANCE:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$2$1;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/func/camera/CameraManager;->switch(Lkotlin/jvm/functions/Function3;)V

    :cond_e
    return-void
.end method

.method private static final viewClick$lambda$3(Lkotlin/jvm/internal/Ref$IntRef;Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V
    .registers 5

    const-string p2, "$defaultRotation"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget p2, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v1, 0x4

    if-le p2, v1, :cond_14

    goto :goto_15

    :cond_14
    move v0, p2

    .line 108
    :goto_15
    iput v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 109
    iget-object p0, p1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    if-eqz p0, :cond_23

    int-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/func/camera/CameraManager;->setRotation(Ljava/lang/Float;)V

    :cond_23
    return-void
.end method

.method private static final viewClick$lambda$4(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/codemao/toolssdk/func/camera/CameraManager;->destroy()V

    :cond_c
    const-wide/16 v0, 0x64

    .line 113
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object p3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "创建拍照界面"

    invoke-virtual {p3, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 43
    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    if-eqz p1, :cond_1a

    .line 44
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 167
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 168
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "拍照fragment销毁"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 160
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 161
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/camera/CameraManager;->destroy()V

    :cond_a
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    .line 163
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "拍照界面销毁"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    if-nez p1, :cond_13

    new-instance p1, Lcom/codemao/toolssdk/func/camera/CameraManager;

    const-string p2, "KN"

    invoke-direct {p1, p2}, Lcom/codemao/toolssdk/func/camera/CameraManager;-><init>(Ljava/lang/String;)V

    :cond_13
    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    .line 50
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    if-eqz p1, :cond_25

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->coverView:Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;

    if-eqz p1, :cond_25

    new-instance p2, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_25
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "启动摄像头:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->cameraManager:Lcom/codemao/toolssdk/func/camera/CameraManager;

    if-eqz p1, :cond_5b

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "requireActivity()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnCaptureBinding;->previewView:Landroidx/camera/view/PreviewView;

    const-string v1, "binding!!.previewView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$onViewCreated$2;->INSTANCE:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$onViewCreated$2;

    invoke-virtual {p1, p2, v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraManager;->startOnActivity(Landroidx/activity/ComponentActivity;Landroidx/camera/view/PreviewView;Lkotlin/jvm/functions/Function3;)V

    .line 65
    :cond_5b
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->viewClick()V

    return-void
.end method
