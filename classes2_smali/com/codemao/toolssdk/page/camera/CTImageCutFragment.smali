.class public final Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;
.super Landroidx/fragment/app/Fragment;
.source "CTImageCutFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCTImageCutFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CTImageCutFragment.kt\ncom/codemao/toolssdk/page/camera/CTImageCutFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,435:1\n78#2,3:436\n1#3:439\n*S KotlinDebug\n*F\n+ 1 CTImageCutFragment.kt\ncom/codemao/toolssdk/page/camera/CTImageCutFragment\n*L\n35#1:436,3\n*E\n"
.end annotation


# instance fields
.field private final UI_STATE_CUTTING:Ljava/lang/String;

.field private final UI_STATE_CUT_FAIL:Ljava/lang/String;

.field private final UI_STATE_CUT_SUCCESS:Ljava/lang/String;

.field private final UI_STATE_DONE:Ljava/lang/String;

.field private final UI_STATE_ORIGINAL:Ljava/lang/String;

.field private final UI_STATE_SENCE:Ljava/lang/String;

.field private final aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

.field private animator:Landroid/animation/ValueAnimator;

.field private binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

.field private final cameraVM$delegate:Lkotlin/Lazy;

.field private final checkMattingProgressRunnable:Ljava/lang/Runnable;

.field private currentTaskId:Ljava/lang/String;

.field private currentUIState:Ljava/lang/String;

.field private cutPath:Ljava/lang/String;

.field private cutUrl:Ljava/lang/String;

.field private fileFinalPath:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private finalUrl:Ljava/lang/String;

.field private stopMattingIfInProgressing:Z

.field private uploadUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4-g0ovbMCqIuAh0ph3gsjiDb4mg(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->viewClick$lambda$9(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8RiHyCeMj885yte2mPpCoxk8u8M(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->observeData$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DuGAbufVrw5DekOybYTaV0uxUqo(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->viewClick$lambda$4(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nv8qy3VDMsuCmTtzZm-AqpZf5ms(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->handlerAnimator$lambda$14(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OhldWl193qc-p393D4xaIL_uyQQ(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/widget/ImageView;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->initView$lambda$3$lambda$2(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cztce7THEogeRCWEGttZhXxuiy8(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Lkotlin/jvm/internal/Ref$BooleanRef;FILandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->setupAnimator$lambda$13(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Lkotlin/jvm/internal/Ref$BooleanRef;FILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g1DAnuo-0FZdBNjsZ7-QyMS23Ic(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->viewClick$lambda$7(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lvRYbEu6P5vnenIt88HPjpDly_4(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->checkMattingProgressRunnable$lambda$1(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 79
    const-class v0, Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 80
    new-instance v2, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 79
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->cameraVM$delegate:Lkotlin/Lazy;

    .line 43
    new-instance v0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    .line 48
    new-instance v0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->checkMattingProgressRunnable:Ljava/lang/Runnable;

    const-string v0, "背景"

    .line 54
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_SENCE:Ljava/lang/String;

    const-string v0, "抠图中"

    .line 55
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUTTING:Ljava/lang/String;

    const-string v0, "抠图成功"

    .line 56
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUT_SUCCESS:Ljava/lang/String;

    const-string v0, "抠图失败"

    .line 57
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUT_FAIL:Ljava/lang/String;

    const-string v0, "恢复原图"

    .line 58
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_ORIGINAL:Ljava/lang/String;

    const-string v0, "完成"

    .line 59
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_DONE:Ljava/lang/String;

    const-string v0, "空闲"

    .line 60
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentUIState:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$changeUIState(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->changeUIState(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$compressFinalSize(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->compressFinalSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    return-object p0
.end method

.method public static final synthetic access$getCameraVM(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Lcom/codemao/toolssdk/page/camera/CameraViewModel;
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCheckMattingProgressRunnable$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->checkMattingProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getCurrentTaskId$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentTaskId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFilePath$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getStopMattingIfInProgressing$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->stopMattingIfInProgressing:Z

    return p0
.end method

.method public static final synthetic access$getUI_STATE_CUTTING$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUTTING:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUI_STATE_CUT_FAIL$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUT_FAIL:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUI_STATE_CUT_SUCCESS$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUT_SUCCESS:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUI_STATE_SENCE$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_SENCE:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isSafe(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->isSafe(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$setCurrentTaskId$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentTaskId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setCutPath$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->cutPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setCutUrl$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->cutUrl:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setFileFinalPath$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->fileFinalPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setFilePath$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->filePath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setFinalUrl$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->finalUrl:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setResult(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->setResult(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setUploadUrl$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->uploadUrl:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$showImage(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->showImage(Ljava/lang/String;)V

    return-void
.end method

.method private final addListener()V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->setMattingCallback(Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;)V

    return-void
.end method

.method private final changeUIState(Ljava/lang/String;)V
    .registers 11

    .line 356
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "切换当前状态:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUTTING:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-string v3, "重拍"

    const/4 v4, 0x0

    const-string v5, "binding"

    if-eqz v0, :cond_64

    .line 359
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_2d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_2d
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->closeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_3a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_3a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->close:Landroid/widget/LinearLayout;

    const v3, 0x3ecccccd  # 0.4f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 361
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_4a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_4a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutRevoke:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_59

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5a

    :cond_59
    move-object v4, v0

    :goto_5a
    iget-object v0, v4, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutDone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->handlerAnimator(Z)V

    goto/16 :goto_25e

    .line 366
    :cond_64
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUT_SUCCESS:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_d6

    .line 367
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_77

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_77
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->closeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_84

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_84
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->close:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 369
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_91

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_91
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->revokeImage:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_camera_revocation:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_a0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_a0
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->revokeText:Landroid/widget/TextView;

    const-string v1, "撤销"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_af

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_af
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutRevoke:Landroid/widget/LinearLayout;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_selector_button_r16_stroke_white:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 372
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_be

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_be
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutRevoke:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_cb

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_cc

    :cond_cb
    move-object v4, v0

    :goto_cc
    iget-object v0, v4, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutDone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    invoke-direct {p0, v7}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->handlerAnimator(Z)V

    goto/16 :goto_25e

    .line 377
    :cond_d6
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUT_FAIL:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "AI抠图"

    if-eqz v0, :cond_150

    .line 378
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_e8

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_e8
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->closeText:Landroid/widget/TextView;

    const-string v2, "返回拍照"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_f7

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_f7
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->close:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 380
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_104

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_104
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->revokeImage:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_kn_camera_ai_cutout:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_113

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_113
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->revokeText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_120

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_120
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutRevoke:Landroid/widget/LinearLayout;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_selector_button_r16_solid_half_transparent:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 383
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_12f

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_12f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutRevoke:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_13c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_13d

    :cond_13c
    move-object v4, v0

    :goto_13d
    iget-object v0, v4, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutDone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    invoke-direct {p0, v7}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->handlerAnimator(Z)V

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "抠图失败，请稍后重试"

    .line 386
    invoke-static {v0, v2, v1}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_25e

    .line 393
    :cond_150
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_ORIGINAL:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 394
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_160

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_160
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->closeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_16d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_16d
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->close:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 396
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_17a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_17a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->revokeImage:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_kn_camera_ai_cutout:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 397
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_189

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_189
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->revokeText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_196

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_196
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutRevoke:Landroid/widget/LinearLayout;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_selector_button_r16_solid_half_transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 399
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_1a5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_1a5
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutRevoke:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_1b2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1b3

    :cond_1b2
    move-object v4, v0

    :goto_1b3
    iget-object v0, v4, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutDone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_25e

    .line 403
    :cond_1ba
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_DONE:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_207

    .line 404
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_1ca

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_1ca
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->closeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_1d7

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_1d7
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->close:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 406
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_1e6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_1e6
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutRevoke:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 407
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_1f3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_1f3
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutDone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_200

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_201

    :cond_200
    move-object v4, v0

    :goto_201
    iget-object v0, v4, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->doneProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_25e

    .line 411
    :cond_207
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_SENCE:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25e

    .line 412
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_217

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_217
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->closeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_224

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_224
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->close:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 414
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_231

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_231
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutRevoke:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_23e

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_23e
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutDone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_24b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_24b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->doneProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_258

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_259

    :cond_258
    move-object v4, v0

    :goto_259
    iget-object v0, v4, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->imageCutScan:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    :cond_25e
    :goto_25e
    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentUIState:Ljava/lang/String;

    return-void
.end method

.method private static final checkMattingProgressRunnable$lambda$1(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentTaskId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->checkTaskProcess(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private final compressFinalSize(Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    .line 159
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->getOptionData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->getStageSize()Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->getSafeWidth()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_23

    :cond_22
    move-object v0, v2

    .line 160
    :cond_23
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->getOptionData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->getStageSize()Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->getSafeHeight()Ljava/lang/Number;

    move-result-object v3

    if-nez v3, :cond_40

    goto :goto_41

    :cond_40
    move-object v2, v3

    .line 161
    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->getOptionData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    if-eqz v3, :cond_56

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->isActor()Z

    move-result v3

    goto :goto_57

    :cond_56
    const/4 v3, 0x1

    .line 162
    :goto_57
    new-instance v13, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;

    if-eqz v3, :cond_5e

    const/16 v5, 0x200

    goto :goto_63

    .line 163
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v5, v0

    :goto_63
    if-eqz v3, :cond_68

    const/16 v6, 0x200

    goto :goto_6d

    .line 164
    :cond_68
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    move v6, v1

    :goto_6d
    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x28

    const/4 v12, 0x0

    move-object v4, v13

    .line 162
    invoke-direct/range {v4 .. v12}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;-><init>(IIIIZLandroid/graphics/Bitmap$CompressFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 168
    sget-object v0, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/ImageCompressUtils;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v13}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->compressFile(Ljava/io/File;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getSuccess()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f5

    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_f5

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/kn_add_material"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_bc

    .line 173
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 175
    :cond_bc
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x1f

    const/4 v13, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;-><init>(IIIIZLandroid/graphics/Bitmap$CompressFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 177
    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1, v3, v1}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->saveCompressedImage(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Z

    move-result p1

    if-eqz p1, :cond_f5

    .line 179
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f5
    return-object v2
.end method

.method private final getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->cameraVM$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    return-object v0
.end method

.method private final handlerAnimator(Z)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p1, :cond_19

    .line 335
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez p1, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_e

    :cond_d
    move-object v0, p1

    :goto_e
    iget-object p1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->captureImage:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4c

    .line 340
    :cond_19
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 341
    :cond_20
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez p1, :cond_28

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_28
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->imageCutScan:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v2, :cond_32

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_32
    iget-object v2, v2, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->captureImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 342
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez p1, :cond_44

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_45

    :cond_44
    move-object v0, p1

    :goto_45
    iget-object p1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->imageCutScan:Landroid/widget/ImageView;

    sget v0, Lcom/codemao/toolssdk/R$drawable;->toolsdk_image_cut_scan_up:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4c
    return-void
.end method

.method private static final handlerAnimator$lambda$14(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->setupAnimator()V

    .line 337
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->animator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_f
    return-void
.end method

.method private final initView()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_a

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->captureImage:Landroid/widget/ImageView;

    .line 81
    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final initView$lambda$3$lambda$2(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/widget/ImageView;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->getOptionData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->isScene()Z

    move-result v0

    if-ne v0, v1, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_5f

    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->getOptionData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->isLandscape()Z

    move-result v0

    if-ne v0, v1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    if-eqz v1, :cond_5f

    .line 83
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/codemao/toolssdk/R$color;->toolsdk_transparent:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_5f
    return-void
.end method

.method private final isSafe(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    if-eqz v1, :cond_19

    .line 426
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_19
    return-void
.end method

.method private final observeData()V
    .registers 5

    .line 144
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->getCameraVM()Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->getCaptureFileResult()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    new-instance v3, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final observeData$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final setResult(Ljava/lang/String;)V
    .registers 4

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    sget-object v1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->Companion:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;->getImageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final setupAnimator()V
    .registers 9

    .line 307
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    return-void

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_f

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->captureImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    const/high16 v2, 0x43480000  # 200.0f

    const/4 v3, 0x2

    new-array v4, v3, [F

    int-to-float v5, v0

    add-float/2addr v5, v2

    aput v5, v4, v1

    const/high16 v1, -0x3cb80000  # -200.0f

    const/4 v5, 0x1

    aput v1, v4, v5

    .line 312
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->animator:Landroid/animation/ValueAnimator;

    .line 313
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 314
    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 315
    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 316
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v5, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 317
    iget-object v3, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Lkotlin/jvm/internal/Ref$BooleanRef;FI)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private static final setupAnimator$lambda$13(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Lkotlin/jvm/internal/Ref$BooleanRef;FILandroid/animation/ValueAnimator;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$up"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 319
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_29

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_29
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->imageCutScan:Landroid/widget/ImageView;

    if-nez v0, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setY(F)V

    .line 320
    :goto_31
    iget-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/16 v3, 0x14

    if-eqz v0, :cond_58

    int-to-float v0, v3

    sub-float v0, p2, v0

    neg-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_58

    .line 321
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v4, "设置往下的"

    invoke-virtual {v0, v4}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_4e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4e
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->imageCutScan:Landroid/widget/ImageView;

    sget v4, Lcom/codemao/toolssdk/R$drawable;->toolsdk_image_cut_scan_down:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 325
    :cond_58
    iget-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_7e

    int-to-float p3, p3

    int-to-float v0, v3

    sub-float/2addr p2, v0

    add-float/2addr p3, p2

    cmpl-float p2, p4, p3

    if-lez p2, :cond_7e

    .line 326
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p3, "设置往上的"

    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 327
    iget-object p0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez p0, :cond_73

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_74

    :cond_73
    move-object v1, p0

    :goto_74
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->imageCutScan:Landroid/widget/ImageView;

    sget p2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_image_cut_scan_up:I

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p0, 0x1

    .line 328
    iput-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_7e
    return-void
.end method

.method private final showImage(Ljava/lang/String;)V
    .registers 3

    .line 347
    new-instance v0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$showImage$1;

    invoke-direct {v0, p1, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$showImage$1;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->isSafe(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final stopTask()V
    .registers 3

    .line 299
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "取消抠图任务"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentTaskId:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->stopMatting(Ljava/lang/String;)V

    :cond_10
    const/4 v0, 0x0

    .line 301
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->handlerAnimator(Z)V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentTaskId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->stopMattingIfInProgressing:Z

    return-void
.end method

.method private final upload(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentUIState:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUTTING:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentUIState:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_DONE:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_22

    .line 285
    :cond_15
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->changeUIState(Ljava/lang/String;)V

    .line 286
    iget-object p2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    new-instance v0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$upload$1;

    invoke-direct {v0, p0, p3}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$upload$1;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1, v0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->uploadAndMattingImageFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    :cond_22
    :goto_22
    return-void
.end method

.method static synthetic upload$default(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 277
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->upload(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final viewClick()V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->close:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1d
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutRevoke:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez v0, :cond_2f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_30

    :cond_2f
    move-object v1, v0

    :goto_30
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->cutDone:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final viewClick$lambda$4(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentUIState:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUTTING:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentUIState:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_DONE:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_23

    .line 95
    :cond_1a
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lcom/codemao/toolssdk/R$id;->action_cut_to_capture:I

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    :cond_23
    :goto_23
    return-void
.end method

.method private static final viewClick$lambda$7(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/view/View;)V
    .registers 8

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentUIState:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUT_SUCCESS:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 99
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->filePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->showImage(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_ORIGINAL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->changeUIState(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->uploadUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->finalUrl:Ljava/lang/String;

    goto :goto_5e

    .line 102
    :cond_1e
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentUIState:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_ORIGINAL:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 103
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->cutPath:Ljava/lang/String;

    if-eqz p1, :cond_39

    .line 104
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->showImage(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUT_SUCCESS:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->changeUIState(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->cutUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->finalUrl:Ljava/lang/String;

    goto :goto_5e

    .line 108
    :cond_39
    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_5e

    .line 109
    iget-object v2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUTTING:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->upload$default(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_5e

    .line 112
    :cond_47
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->currentUIState:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUT_FAIL:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 113
    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_5e

    .line 114
    iget-object v2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_CUTTING:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->upload$default(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method private static final viewClick$lambda$9(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->finalUrl:Ljava/lang/String;

    if-nez p1, :cond_21

    .line 120
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->filePath:Ljava/lang/String;

    if-eqz p1, :cond_42

    .line 121
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->fileFinalPath:Ljava/lang/String;

    if-nez v0, :cond_12

    goto :goto_13

    :cond_12
    move-object p1, v0

    .line 122
    :goto_13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_DONE:Ljava/lang/String;

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$viewClick$3$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$viewClick$3$1$1;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->upload(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_42

    .line 127
    :cond_21
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->cutPath:Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 128
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->compressFinalSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 130
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->UI_STATE_DONE:Ljava/lang/String;

    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$viewClick$3$2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$viewClick$3$2;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->upload(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_42

    .line 134
    :cond_39
    iget-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->finalUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->setResult(Ljava/lang/String;)V

    goto :goto_42

    .line 137
    :cond_3f
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->setResult(Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 67
    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    if-nez p1, :cond_19

    const-string p1, "binding"

    .line 68
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_19
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    .line 431
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->stopTask()V

    .line 432
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->initView()V

    .line 74
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->viewClick()V

    .line 75
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->addListener()V

    .line 76
    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->observeData()V

    return-void
.end method
