.class public final Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AIImageCanvasActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAIImageCanvasActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AIImageCanvasActivity.kt\ncom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,589:1\n1851#2,2:590\n*S KotlinDebug\n*F\n+ 1 AIImageCanvasActivity.kt\ncom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity\n*L\n521#1:590,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;

.field private static modeId:Ljava/lang/Integer;

.field private static selectStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/Style;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aiImageGenerateManager:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

.field private binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

.field private drawToolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;",
            ">;"
        }
    .end annotation
.end field

.field private isCancelLoadingClicked:Z

.field private isScene:Z

.field private selectDrawToolsAdapter:Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;

.field private final selectModeDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private stageSize:Lcom/codemao/toolssdk/model/dsbridge/StageSize;

.field private valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$-2etcIMfSyiIZWmslPXVduQKf2Q(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initCanvasView$lambda$3(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1nWTWlRsb_HH9hJ_2SZ2CJ9H2lQ(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initCanvasView$lambda$5(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2OT7VkaZ39fYzhpbiBQIScnTFHk(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initSelectModeView$lambda$11(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7-e7PgmkWz0yd38dc9Szl0voBUo(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->setNotchMargin$lambda$1(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CWaEN_5w0VA8jzakkysSA9NdwrQ(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->generateAiImage$lambda$10(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CeSoY5SHV8K-NftxPHdarYlWnvk(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initCanvasView$lambda$2(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LbuE7zdGv2tajVU3cX3uQDgxIPc(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initCanvasView$lambda$6(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NmHqKSU87E4NxdtoB9okU4zwFWE(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->generateAiImage$lambda$7(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QndbxMvxzUxmSMqrtOyU18D5GGg(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->generateAiImage$lambda$10$lambda$9(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TfzYtPaZ-vhQHEt_zVyjF95JMzw(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->generateAiImage$lambda$8(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nLfB1PTYRii9f522ws9RiuVA6tg(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initCanvasView$lambda$4(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yGIp8LqMyRHOIE_Mi30k7F2JwcE(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initSelectModeView$lambda$13(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->Companion:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->aiImageGenerateManager:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->selectModeDataList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$changeLoadingView(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Z)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->changeLoadingView(Z)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    return-object p0
.end method

.method public static final synthetic access$getDrawToolList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->drawToolList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getModeId$cp()Ljava/lang/Integer;
    .registers 1

    .line 48
    sget-object v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->modeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public static final synthetic access$getSelectModeDataList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->selectModeDataList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSelectStyles$cp()Ljava/util/List;
    .registers 1

    .line 48
    sget-object v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->selectStyles:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getStageSize$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/model/dsbridge/StageSize;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    return-object p0
.end method

.method public static final synthetic access$getValueAnimator$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$isCancelLoadingClicked$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->isCancelLoadingClicked:Z

    return p0
.end method

.method public static final synthetic access$isScene$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->isScene:Z

    return p0
.end method

.method private final changeLoadingView(Z)V
    .registers 7

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    const-string v2, "binding"

    const/4 v3, 0x0

    if-nez v1, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_10
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivOpenSelectImageMode:Landroid/widget/ImageView;

    const-string v4, "binding.ivOpenSelectImageMode"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_22

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_22
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivBgOpenSelectImageMode:Landroid/widget/ImageView;

    const-string v4, "binding.ivBgOpenSelectImageMode"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_34

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_34
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvDrawTools:Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "binding.rvDrawTools"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_46

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_46
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->bgCanvasTools:Landroid/view/View;

    const-string v4, "binding.bgCanvasTools"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_58

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_58
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->bgAiImageClearCanvas:Landroid/view/View;

    const-string v4, "binding.bgAiImageClearCanvas"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_6a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_6a
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivAiImageClearCanvas:Landroid/widget/ImageView;

    const-string v4, "binding.ivAiImageClearCanvas"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_7c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_7c
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvAiImageClearCanvas:Landroid/widget/TextView;

    const-string v4, "binding.tvAiImageClearCanvas"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_8e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_8e
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvConfirmCanvas:Landroid/widget/TextView;

    const-string v4, "binding.tvConfirmCanvas"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_c4

    .line 413
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v4, 0x3e4ccccd  # 0.2f

    .line 414
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 415
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_9e

    .line 417
    :cond_b5
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez p1, :cond_bd

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_be

    :cond_bd
    move-object v3, p1

    :goto_be
    iget-object p1, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->groupLoading:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_fb

    .line 419
    :cond_c4
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez p1, :cond_cc

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_cc
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->groupLoading:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->aiImageGenerateManager:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->destroy()V

    .line 421
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_dc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000  # 1.0f

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x1

    .line 423
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_dc

    .line 425
    :cond_f2
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_f9

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 426
    :cond_f9
    iput-object v3, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    :goto_fb
    return-void
.end method

.method private final confirmModeItem(Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;)V
    .registers 3

    .line 531
    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final fullScreen()V
    .registers 3

    .line 82
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

.method private final generateAiImage()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 310
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_progress_loading_gif:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_19

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_19
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const/4 v0, 0x1

    .line 312
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->changeLoadingView(Z)V

    .line 313
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_2a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2b

    :cond_2a
    move-object v2, v0

    :goto_2b
    iget-object v0, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvLoadingCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 319
    fill-array-data v0, :array_68

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_44

    goto :goto_49

    :cond_44
    const-wide/16 v1, 0x3e8

    .line 320
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 321
    :goto_49
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_55

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 325
    :cond_55
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5c
    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->isCancelLoadingClicked:Z

    .line 329
    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda9;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void

    :array_68
    .array-data 4
        0x0
        0x5a
    .end array-data
.end method

.method private static final generateAiImage$lambda$10(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_f

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->aiImageEditCanvasView:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->generateNewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getImageCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-static {v2}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getRandomImageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {v0, v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, v1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda11;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final generateAiImage$lambda$10$lambda$9(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/lang/String;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->selectModeDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    .line 335
    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getSelect()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 336
    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getStyles()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->selectStyles:Ljava/util/List;

    .line 337
    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getTemplateId()Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->modeId:Ljava/lang/Integer;

    goto :goto_10

    .line 340
    :cond_2f
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->aiImageGenerateManager:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    .line 342
    sget-object v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->selectStyles:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/http/Style;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/Style;->getStyle_id()I

    move-result v1

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    .line 343
    :goto_44
    sget-object v3, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->modeId:Ljava/lang/Integer;

    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 340
    :cond_4c
    new-instance v3, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1;

    invoke-direct {v3, p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->uploadImageFile(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final generateAiImage$lambda$7(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->isCancelLoadingClicked:Z

    const/4 p1, 0x0

    .line 315
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->changeLoadingView(Z)V

    return-void
.end method

.method private static final generateAiImage$lambda$8(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    check-cast p1, Ljava/lang/Integer;

    goto :goto_17

    :cond_16
    move-object p1, v1

    :goto_17
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 323
    :goto_1f
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez p0, :cond_29

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2a

    :cond_29
    move-object v1, p0

    :goto_2a
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvProgress:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x25

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final hideBottomUIMenu()V
    .registers 5

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 89
    :goto_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_34

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 91
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    :cond_23
    if-eqz v1, :cond_2c

    .line 93
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    :cond_2c
    if-nez v1, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v3, 0x2

    .line 94
    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_3b

    :cond_34
    if-nez v0, :cond_37

    goto :goto_3b

    :cond_37
    const/16 v1, 0x1002

    .line 97
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :goto_3b
    const/16 v1, 0x1c

    if-lt v2, v1, :cond_45

    if-nez v0, :cond_42

    goto :goto_45

    :cond_42
    const/4 v1, 0x1

    .line 101
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 104
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

.method private final initCanvasView()V
    .registers 22

    move-object/from16 v0, p0

    .line 177
    iget-boolean v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->isScene:Z

    const-string v2, "binding"

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    if-eqz v1, :cond_1f

    .line 178
    iget-object v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_15

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_15
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v4, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda10;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 200
    :cond_1f
    iget-object v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_27

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_27
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivOpenSelectImageMode:Landroid/widget/ImageView;

    new-instance v4, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_39

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_39
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivClosePage:Landroid/widget/ImageView;

    new-instance v4, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_4b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_4b
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvDrawTools:Landroidx/recyclerview/widget/RecyclerView;

    .line 208
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v0, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 207
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    .line 210
    new-instance v4, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 212
    sget v7, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_pencil:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v7, v4

    .line 210
    invoke-direct/range {v7 .. v13}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v4, v1, v6

    .line 215
    new-instance v4, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 217
    sget v6, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_eraser:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0xa

    const/16 v20, 0x0

    move-object v14, v4

    .line 215
    invoke-direct/range {v14 .. v20}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v4, v1, v5

    const/4 v4, 0x2

    .line 219
    new-instance v12, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    const/4 v6, 0x2

    const-string v5, "#FC5247"

    .line 221
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v5, v12

    .line 219
    invoke-direct/range {v5 .. v11}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v12, v1, v4

    const/4 v4, 0x3

    .line 224
    new-instance v12, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    const-string v5, "#F3A948"

    .line 226
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    const/16 v10, 0xc

    move-object v5, v12

    .line 224
    invoke-direct/range {v5 .. v11}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v12, v1, v4

    const/4 v4, 0x4

    .line 228
    new-instance v12, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    const-string v5, "#F8CE51"

    .line 230
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v5, v12

    .line 228
    invoke-direct/range {v5 .. v11}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v12, v1, v4

    const/4 v4, 0x5

    .line 232
    new-instance v12, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    const-string v5, "#50AB64"

    .line 234
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v5, v12

    .line 232
    invoke-direct/range {v5 .. v11}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v12, v1, v4

    const/4 v4, 0x6

    .line 236
    new-instance v12, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    const-string v5, "#429AF8"

    .line 238
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v5, v12

    .line 236
    invoke-direct/range {v5 .. v11}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v12, v1, v4

    const/4 v4, 0x7

    .line 240
    new-instance v12, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    const-string v5, "#8C53F6"

    .line 242
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v5, v12

    .line 240
    invoke-direct/range {v5 .. v11}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v12, v1, v4

    .line 209
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->drawToolList:Ljava/util/List;

    .line 245
    new-instance v4, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;

    if-nez v1, :cond_10f

    const-string v1, "drawToolList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_10f
    invoke-direct {v4, v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->selectDrawToolsAdapter:Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;

    .line 247
    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$4;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$4;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    .line 246
    invoke-virtual {v4, v1}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->setItemSelectListener(Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$ItemSelectListener;)V

    .line 262
    iget-object v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_124

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_124
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvDrawTools:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->selectDrawToolsAdapter:Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;

    if-nez v4, :cond_130

    const-string v4, "selectDrawToolsAdapter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_130
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 263
    iget-object v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_13b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_13b
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvDrawTools:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$5;

    invoke-direct {v4, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$5;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 288
    iget-object v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_14d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_14d
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvDrawTools:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 289
    iget-object v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_15a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_15a
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->bgAiImageClearCanvas:Landroid/view/View;

    new-instance v4, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v1, v0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v1, :cond_16c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_16d

    :cond_16c
    move-object v3, v1

    :goto_16d
    iget-object v1, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvConfirmCanvas:Landroid/widget/TextView;

    new-instance v2, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initCanvasView$lambda$2(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x42580000  # 54.0f

    .line 179
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_16

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_16
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 181
    iget-object v4, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v4, :cond_24

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_24
    iget-object v4, v4, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    const v5, 0x3f48f5c3  # 0.785f

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 183
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_38

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_38
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->bgCanvasTools:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v4

    mul-float v4, v0, v5

    .line 185
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 186
    iget-object v7, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v7, :cond_4f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    :cond_4f
    iget-object v7, v7, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

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

    .line 189
    sget v4, Lcom/codemao/toolssdk/R$id;->v_edit_list_bg:I

    const v5, 0x44028000  # 522.0f

    div-float/2addr v1, v5

    const/high16 v5, 0x43a30000  # 326.0f

    mul-float v1, v1, v5

    div-float/2addr v1, v0

    .line 188
    invoke-virtual {v6, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentHeight(IF)V

    goto :goto_76

    .line 193
    :cond_71
    sget v0, Lcom/codemao/toolssdk/R$id;->v_edit_list_bg:I

    invoke-virtual {v6, v0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentHeight(IF)V

    .line 195
    :goto_76
    sget v0, Lcom/codemao/toolssdk/R$id;->v_edit_list_bg:I

    const-string v1, "522:326"

    invoke-virtual {v6, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setDimensionRatio(ILjava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez p0, :cond_85

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_86

    :cond_85
    move-object v2, p0

    :goto_86
    iget-object p0, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private static final initCanvasView$lambda$3(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez p0, :cond_f

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->clSelectImageMode:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private static final initCanvasView$lambda$4(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 204
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->isCancelLoadingClicked:Z

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final initCanvasView$lambda$5(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez p0, :cond_f

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->aiImageEditCanvasView:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->clearDraw()V

    return-void
.end method

.method private static final initCanvasView$lambda$6(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 296
    sget p1, Lcom/codemao/toolssdk/R$string;->toolsdk_internet_error:I

    const/4 v0, 0x0

    .line 294
    invoke-static {p0, p1, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;II)V

    return-void

    .line 301
    :cond_12
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->generateAiImage()V

    return-void
.end method

.method private final initDrawToolsSelectStatus()V
    .registers 7

    .line 580
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->drawToolList:Ljava/util/List;

    const-string v1, "drawToolList"

    const/4 v2, 0x0

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    .line 581
    invoke-virtual {v3, v4}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->setSelect(Z)V

    goto :goto_f

    .line 583
    :cond_20
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->drawToolList:Ljava/util/List;

    if-nez v0, :cond_28

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_28
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->setSelect(Z)V

    .line 584
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->drawToolList:Ljava/util/List;

    if-nez v0, :cond_3a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3a
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->setSelect(Z)V

    .line 585
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->selectDrawToolsAdapter:Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;

    if-nez v0, :cond_4e

    const-string v0, "selectDrawToolsAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 586
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    const-string v3, "binding"

    if-nez v0, :cond_5b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->aiImageEditCanvasView:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;

    sget-object v5, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;->PEN:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    invoke-virtual {v0, v5}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->setCurrentDrawType(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;)V

    .line 587
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_6a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->aiImageEditCanvasView:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;

    iget-object v3, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->drawToolList:Ljava/util/List;

    if-nez v3, :cond_74

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_75

    :cond_74
    move-object v2, v3

    :goto_75
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->setCurrentColor(Ljava/lang/Integer;)V

    return-void
.end method

.method private final initIntentData()V
    .registers 4

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "stage_size"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "isScene"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->isScene:Z

    return-void
.end method

.method private final initSelectModeView()V
    .registers 7

    .line 431
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 432
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_11
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivBackground:Landroid/widget/ImageView;

    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_bg_select_mode_pad:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_28

    .line 434
    :cond_19
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_21

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_21
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivBackground:Landroid/widget/ImageView;

    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_bg_select_mode_phone:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    :goto_28
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_30

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_30
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

    .line 437
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 436
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 438
    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;

    iget-object v3, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->selectModeDataList:Ljava/util/List;

    invoke-direct {v0, p0, v3}, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 439
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->aiImageGenerateManager:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    iget-boolean v4, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->isScene:Z

    if-eqz v4, :cond_4a

    const/4 v4, 0x2

    goto :goto_4b

    :cond_4a
    const/4 v4, 0x1

    :goto_4b
    new-instance v5, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;

    invoke-direct {v5, p0, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V

    invoke-virtual {v3, v4, v5}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->getAiPaintingTemplates(ILkotlin/jvm/functions/Function1;)V

    .line 491
    iget-object v3, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v3, :cond_5b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5b
    iget-object v3, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 492
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_68

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_68
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 516
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_7a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 517
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_87

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_87
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v3, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_99

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9a

    :cond_99
    move-object v2, v0

    :goto_9a
    iget-object v0, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvConfirmMode:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initSelectModeView$lambda$11(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final initSelectModeView$lambda$13(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->selectModeDataList:Ljava/util/List;

    .line 1851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    .line 522
    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getSelect()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 523
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->confirmModeItem(Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;)V

    :cond_20
    return-void
.end method

.method private final setNotchMargin()V
    .registers 3

    .line 108
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$$ExternalSyntheticLambda8;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    return-void
.end method

.method private static final setNotchMargin$lambda$1(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 112
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
    if-eqz v0, :cond_c2

    .line 114
    iget-object v0, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c2

    .line 115
    iget-object p1, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    .line 116
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_38

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_38
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 118
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_50

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_50
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 121
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_65

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_65
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivClosePage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 122
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, p1

    .line 123
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 126
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez v0, :cond_7d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7d
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivOpenSelectImageMode:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 128
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v3

    .line 127
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 130
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez p1, :cond_95

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_95
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 131
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez p1, :cond_a2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_a2
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 132
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez p1, :cond_af

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_af
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivClosePage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 133
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez p0, :cond_bc

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_bd

    :cond_bc
    move-object v1, p0

    :goto_bd
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivOpenSelectImageMode:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_c2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 163
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_23

    const/4 p1, -0x1

    if-ne p2, p1, :cond_23

    const-string p2, "img_path"

    if-eqz p3, :cond_13

    .line 165
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_14

    :cond_13
    const/4 p3, 0x0

    .line 166
    :goto_14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2a

    :cond_23
    const/4 p1, 0x0

    .line 171
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 140
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->hideBottomUIMenu()V

    .line 142
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->fullScreen()V

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    if-nez p1, :cond_20

    const-string p1, "binding"

    .line 144
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_20
    invoke-virtual {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 145
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->setNotchMargin()V

    .line 146
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initIntentData()V

    .line 147
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initCanvasView()V

    .line 148
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initSelectModeView()V

    .line 149
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initDrawToolsSelectStatus()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 158
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->aiImageGenerateManager:Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->destroy()V

    return-void
.end method
