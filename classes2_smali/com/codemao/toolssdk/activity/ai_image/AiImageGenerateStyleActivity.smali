.class public final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AiImageGenerateStyleActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAiImageGenerateStyleActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiImageGenerateStyleActivity.kt\ncom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,519:1\n1851#2,2:520\n1851#2,2:522\n1851#2,2:524\n*S KotlinDebug\n*F\n+ 1 AiImageGenerateStyleActivity.kt\ncom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity\n*L\n185#1:520,2\n250#1:522,2\n232#1:524,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$Companion;


# instance fields
.field private aiGenerateProgressPop:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;

.field private final aiImageGenerateManager:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

.field private binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

.field private commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

.field private currentImageUrl:Ljava/lang/String;

.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;",
            ">;"
        }
    .end annotation
.end field

.field private imgPath:Ljava/lang/String;

.field private isCancelClick:Z

.field private isScene:Z

.field private stageSize:Lcom/codemao/toolssdk/model/dsbridge/StageSize;

.field private styleAdapter:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

.field private valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$CY_nLK-GBAPB9IFcbMzBfR5yrrY(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initListener$lambda$4(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dl7b5VaY-VX0FzhKO-iBZ1TAMZg(Lkotlin/jvm/functions/Function0;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->showLoadingPop$lambda$11$lambda$10(Lkotlin/jvm/functions/Function0;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fvx4uC6ZnIdQmx-psWwo1KVNE2w(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initContentWH$lambda$2(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gFCb_SDAmwQu5HGb9f4CNK00RRY(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initListener$lambda$5(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hkii7SCmn2Qf49xFP4ugICmKaEo(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function0;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->showLoadingPop$lambda$11(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rSbJzm_pzMSk7lVYDIXlW-1hQ2I(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->setNotchMargin$lambda$1(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zOkyuV1YdCbbkkj1uFFnNAQ8Udc(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initListener$lambda$7(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->Companion:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->dataList:Ljava/util/List;

    .line 71
    new-instance v0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->aiImageGenerateManager:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    return-void
.end method

.method public static final synthetic access$checkItemRound(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;ILcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)I
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->checkItemRound(ILcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$dismissLoadingPop(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->dismissLoadingPop()V

    return-void
.end method

.method public static final synthetic access$getAiImageGenerateManager$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)Lcom/codemao/toolssdk/manager/AiImageGenerateManager;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->aiImageGenerateManager:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    return-object p0
.end method

.method public static final synthetic access$getCommonConfirmPop$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    return-object p0
.end method

.method public static final synthetic access$getValueAnimator$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$hideErrorView(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->hideErrorView()V

    return-void
.end method

.method public static final synthetic access$loadResultImageView(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->loadResultImageView(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$refreshNewImage(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->refreshNewImage(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$setCancelClick$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->isCancelClick:Z

    return-void
.end method

.method public static final synthetic access$setCurrentImageUrl$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->currentImageUrl:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$showErrorToast(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->showErrorToast()V

    return-void
.end method

.method public static final synthetic access$showErrorView(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->showErrorView()V

    return-void
.end method

.method public static final synthetic access$showNextImg(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->showNextImg(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final checkItemRound(ILcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)I
    .registers 4

    .line 388
    invoke-virtual {p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1a

    .line 389
    invoke-virtual {p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    rem-int/2addr p1, p2

    return p1

    :cond_1a
    if-gez p1, :cond_29

    .line 391
    invoke-virtual {p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_29
    return p1
.end method

.method private final disableConfirmBtn()V
    .registers 5

    .line 500
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgAiConfirmCanvas:Landroid/view/View;

    const v3, 0x3e23d70a  # 0.16f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 501
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v0, :cond_1b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    :goto_1c
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgAiConfirmCanvas:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private final dismissLoadingPop()V
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 471
    :cond_7
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->aiGenerateProgressPop:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_e
    return-void
.end method

.method private final enableConfirmBtn()V
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgAiConfirmCanvas:Landroid/view/View;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 512
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v0, :cond_1a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1b

    :cond_1a
    move-object v1, v0

    :goto_1b
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgAiConfirmCanvas:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private final fullScreen()V
    .registers 3

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_f

    goto :goto_14

    :cond_f
    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_14
    return-void
.end method

.method private final hideBottomUIMenu()V
    .registers 5

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 88
    :goto_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_34

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 90
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    :cond_23
    if-eqz v1, :cond_2c

    .line 92
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    :cond_2c
    if-nez v1, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v3, 0x2

    .line 93
    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_3b

    :cond_34
    if-nez v0, :cond_37

    goto :goto_3b

    :cond_37
    const/16 v1, 0x1002

    .line 96
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :goto_3b
    const/16 v1, 0x1c

    if-lt v2, v1, :cond_45

    if-nez v0, :cond_42

    goto :goto_45

    :cond_42
    const/4 v1, 0x1

    .line 100
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 103
    :cond_45
    :goto_45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_4c

    goto :goto_4f

    :cond_4c
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_4f
    return-void
.end method

.method private final hideErrorView()V
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v0, :cond_a

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->ivResult:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->enableConfirmBtn()V

    return-void
.end method

.method private final initAdapter()V
    .registers 14

    .line 250
    sget-object v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->Companion:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;->getSelectStyles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/http/Style;

    if-eqz v1, :cond_c

    .line 252
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->dataList:Ljava/util/List;

    .line 253
    new-instance v12, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    .line 254
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/Style;->getStyle_name()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/Style;->getStyle_url()Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/Style;->getStyle_id()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v3, v12

    .line 253
    invoke-direct/range {v3 .. v11}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 252
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 262
    :cond_38
    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->dataList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->styleAdapter:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

    .line 263
    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_header_ai_img_generate_style:I

    invoke-virtual {v0, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->setHeaderView(I)Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_51

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_51
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->rvStyle:Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 264
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 266
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v0, :cond_65

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_65
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->rvStyle:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->styleAdapter:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

    const-string v4, "styleAdapter"

    if-nez v3, :cond_71

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_71
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 267
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v0, :cond_7c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7c
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->rvStyle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 268
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v0, :cond_89

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_89
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->rvStyle:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 291
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->styleAdapter:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

    if-nez v0, :cond_9b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9c

    :cond_9b
    move-object v2, v0

    :goto_9c
    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$3;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$3;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    invoke-virtual {v2, v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;->setItemClickListener(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$ItemClickListener;)V

    return-void
.end method

.method private final initCommonConfirmPop()V
    .registers 8

    .line 476
    new-instance v6, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    const-string v2, "是否退出？"

    const-string v3, "退出后，当前内容不会被保留"

    const-string v4, "留下"

    const-string v5, "退出"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iput-object v6, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    .line 477
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    const/4 v2, 0x0

    const-string v3, "commonConfirmPop"

    if-nez v1, :cond_2d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2d
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 479
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    if-nez v0, :cond_38

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_39

    :cond_38
    move-object v2, v0

    :goto_39
    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initCommonConfirmPop$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initCommonConfirmPop$1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    invoke-virtual {v2, v0}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->setListener(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;)V

    return-void
.end method

.method private final initContentWH()V
    .registers 5

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "stage_size"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    goto :goto_13

    :cond_12
    move-object v0, v2

    :goto_13
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "isScene"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->isScene:Z

    if-eqz v0, :cond_3d

    .line 151
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    if-eqz v0, :cond_3d

    .line 152
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v0, :cond_32

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_33

    :cond_32
    move-object v2, v0

    :goto_33
    iget-object v0, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3d
    return-void
.end method

.method private static final initContentWH$lambda$2(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x42580000  # 54.0f

    .line 153
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_16

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_16
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 155
    iget-object v4, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v4, :cond_24

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_24
    iget-object v4, v4, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    const v5, 0x3f48f5c3  # 0.785f

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 157
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v0, :cond_38

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_38
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgCanvasTools:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v4

    mul-float v4, v0, v5

    .line 159
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 160
    iget-object v7, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v7, :cond_4f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    :cond_4f
    iget-object v7, v7, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/16 v7, 0x20a

    int-to-float v7, v7

    mul-float v4, v4, v7

    const/16 v7, 0x146

    int-to-float v7, v7

    div-float/2addr v4, v7

    int-to-float v1, v1

    cmpl-float v4, v4, v1

    if-lez v4, :cond_71

    .line 163
    sget v4, Lcom/codemao/toolssdk/R$id;->v_edit_list_bg:I

    const v5, 0x44028000  # 522.0f

    div-float/2addr v1, v5

    const/high16 v5, 0x43a30000  # 326.0f

    mul-float v1, v1, v5

    div-float/2addr v1, v0

    .line 162
    invoke-virtual {v6, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentHeight(IF)V

    goto :goto_76

    .line 167
    :cond_71
    sget v0, Lcom/codemao/toolssdk/R$id;->v_edit_list_bg:I

    invoke-virtual {v6, v0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentHeight(IF)V

    .line 169
    :goto_76
    sget v0, Lcom/codemao/toolssdk/R$id;->v_edit_list_bg:I

    const-string v1, "522:326"

    invoke-virtual {v6, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setDimensionRatio(ILjava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez p0, :cond_85

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_86

    :cond_85
    move-object v2, p0

    :goto_86
    iget-object p0, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private final initData()V
    .registers 8

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->imgPath:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_path_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_39

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 186
    new-instance v5, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

    const/4 v6, 0x2

    invoke-direct {v5, v4, v3, v6, v2}, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 189
    :cond_39
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->disableConfirmBtn()V

    .line 190
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    if-eqz v0, :cond_8a

    .line 191
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->dataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    .line 192
    invoke-virtual {v0, v4}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->setSelect(Z)V

    .line 193
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->setImgList(Ljava/util/List;)V

    .line 194
    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-ne v1, v4, :cond_63

    const/4 v1, 0x1

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    :goto_64
    if-eqz v1, :cond_8a

    .line 195
    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->setCurrentImgIndex(I)V

    .line 196
    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

    if-nez v1, :cond_79

    goto :goto_7c

    .line 197
    :cond_79
    invoke-virtual {v1, v4}, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;->setShowed(Z)V

    :goto_7c
    if-eqz v1, :cond_82

    .line 198
    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    .line 199
    :cond_82
    new-instance v3, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initData$2;

    invoke-direct {v3, v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initData$2;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;)V

    invoke-direct {p0, v2, v3}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->loadResultImageView(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_8a
    return-void
.end method

.method private final initListener()V
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->ivClosePage:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v0, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1d
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgAiConfirmCanvas:Landroid/view/View;

    new-instance v3, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v0, :cond_2f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_30

    :cond_2f
    move-object v1, v0

    :goto_30
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgAiImageRefresh:Landroid/view/View;

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initListener$lambda$4(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    if-nez p0, :cond_f

    const-string p0, "commonConfirmPop"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private static final initListener$lambda$5(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 221
    sget p1, Lcom/codemao/toolssdk/R$string;->toolsdk_internet_error:I

    const/4 v0, 0x0

    .line 219
    invoke-static {p0, p1, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;II)V

    return-void

    .line 226
    :cond_12
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 227
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->currentImageUrl:Ljava/lang/String;

    const-string v1, "img_path"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 228
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final initListener$lambda$7(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->dataList:Ljava/util/List;

    .line 1851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    .line 233
    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getSelect()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 234
    sget-object v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initListener$3$1$1;->INSTANCE:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initListener$3$1$1;

    invoke-direct {p0, v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->refreshNewImage(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V

    goto :goto_b

    :cond_23
    return-void
.end method

.method private final isInactive()Z
    .registers 2

    .line 516
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private final loadResultImageView(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->isInactive()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 400
    :cond_7
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 402
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 403
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 404
    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private final refreshNewImage(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 315
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->isInactive()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 318
    :cond_7
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    if-nez v0, :cond_4a

    .line 319
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getCurrentImgIndex()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;->isShowed()Z

    move-result v0

    if-ne v0, v2, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    if-eqz v0, :cond_4a

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->showNextImg(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 324
    :cond_4a
    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$2;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    invoke-direct {p0, v0, v3}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->showLoadingPop(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 332
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    :cond_65
    :goto_65
    if-nez v2, :cond_68

    return-void

    .line 335
    :cond_68
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->imgPath:Ljava/lang/String;

    if-nez v0, :cond_6d

    return-void

    .line 336
    :cond_6d
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getId()I

    move-result v0

    .line 337
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->aiImageGenerateManager:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    .line 338
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->imgPath:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 340
    sget-object v4, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->Companion:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;->getModeId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_84

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 337
    :cond_84
    new-instance v4, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3;

    invoke-direct {v4, p0, p2, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$3;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->uploadImageFile(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final setNotchMargin()V
    .registers 3

    .line 107
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    return-void
.end method

.method private static final setNotchMargin$lambda$1(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 111
    iget-boolean v2, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->hasNotch:Z

    if-ne v2, v0, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_17

    iget-object v2, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_7e

    .line 113
    iget-object v0, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7e

    .line 114
    iget-object p1, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    .line 117
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_38

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_38
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->ivClosePage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 118
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    float-to-int p1, p1

    add-int/2addr v4, p1

    .line 119
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 122
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez v0, :cond_53

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_53
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgAiImageRefresh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v3

    .line 124
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 126
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez p1, :cond_6b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_6b
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->ivClosePage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 127
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez p0, :cond_78

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_79

    :cond_78
    move-object v1, p0

    :goto_79
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgAiImageRefresh:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_7e
    return-void
.end method

.method private final showErrorToast()V
    .registers 3

    .line 431
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->isCancelClick:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->isCancelClick:Z

    const-string v1, "生成失败，请重试"

    .line 433
    invoke-static {p0, v1, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_c
    return-void
.end method

.method private final showErrorView()V
    .registers 1

    return-void
.end method

.method private final showLoadingPop(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 443
    :cond_7
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->aiGenerateProgressPop:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 446
    :cond_e
    sget-object v0, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;->Companion:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$Companion;

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$Companion;->generateXPop(Landroid/content/Context;)Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;

    move-result-object v0

    .line 445
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->aiGenerateProgressPop:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;

    if-nez v0, :cond_19

    goto :goto_21

    .line 447
    :cond_19
    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showLoadingPop$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showLoadingPop$1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;->setBtnClickListener(Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$BtnClickListener;)V

    .line 454
    :goto_21
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->aiGenerateProgressPop:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 455
    :cond_28
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->aiGenerateProgressPop:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;

    if-eqz p2, :cond_34

    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_34
    return-void
.end method

.method private static final showLoadingPop$lambda$11(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function0;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$finishCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 456
    fill-array-data v0, :array_32

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_19

    goto :goto_1e

    :cond_19
    const-wide/16 v1, 0x3e8

    .line 457
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 458
    :goto_1e
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2a

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 465
    :cond_2a
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_31
    return-void

    :array_32
    .array-data 4
        0x0
        0x5a
    .end array-data
.end method

.method private static final showLoadingPop$lambda$11$lambda$10(Lkotlin/jvm/functions/Function0;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$finishCallback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    check-cast p2, Ljava/lang/Integer;

    goto :goto_1b

    :cond_1a
    const/4 p2, 0x0

    :goto_1b
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    :goto_23
    const/16 v0, 0x5a

    if-ne p2, v0, :cond_2a

    .line 461
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 463
    :cond_2a
    iget-object p0, p1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->aiGenerateProgressPop:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;

    if-eqz p0, :cond_31

    invoke-virtual {p0, p2}, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;->setProgress(I)V

    :cond_31
    return-void
.end method

.method private final showNextImg(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->isInactive()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 363
    :cond_7
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz v0, :cond_21

    goto :goto_64

    .line 365
    :cond_21
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getCurrentImgIndex()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 366
    invoke-direct {p0, v0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->checkItemRound(ILcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)I

    move-result v0

    iput v0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 367
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_64

    .line 368
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

    if-eqz v4, :cond_57

    .line 369
    invoke-virtual {v4}, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    .line 370
    :goto_58
    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;

    move-object v2, v1

    move-object v3, p1

    move-object v5, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->loadResultImageView(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_64
    :goto_64
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 134
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->hideBottomUIMenu()V

    .line 136
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->fullScreen()V

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    if-nez p1, :cond_20

    const-string p1, "binding"

    .line 138
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_20
    invoke-virtual {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 139
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->setNotchMargin()V

    .line 140
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initCommonConfirmPop()V

    .line 141
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initContentWH()V

    .line 142
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initAdapter()V

    .line 143
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initListener()V

    .line 144
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 176
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 177
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->aiImageGenerateManager:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->destroy()V

    return-void
.end method
