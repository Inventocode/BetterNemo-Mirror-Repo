.class public final Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ISPreviewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nISPreviewActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ISPreviewActivity.kt\ncom/codemao/toolssdk/image_selector/ui/ISPreviewActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,615:1\n1851#2,2:616\n1851#2,2:619\n1#3:618\n*S KotlinDebug\n*F\n+ 1 ISPreviewActivity.kt\ncom/codemao/toolssdk/image_selector/ui/ISPreviewActivity\n*L\n585#1:616,2\n207#1:619,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$Companion;


# instance fields
.field private final aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

.field private basePopupView:Lcom/nemo/commonui/xpopup/core/BasePopupView;

.field private binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

.field private final checkMattingProgressRunnable:Ljava/lang/Runnable;

.field private currentTaskId:Ljava/lang/String;

.field private currentUndoIndex:I

.field private final cutoutImageForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;",
            ">;"
        }
    .end annotation
.end field

.field private loadingObjectAnimator:Landroid/animation/ObjectAnimator;

.field private final preImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;",
            ">;"
        }
    .end annotation
.end field

.field private previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

.field private stopMattingIfInProgressing:Z

.field private undoImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4DVNRL7spzWPwRNgWOoTskVQ0UM(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initData$lambda$4(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7UDWqhn7lSiCz3BOYlw8CSDlGY4(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView$lambda$8(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bpkt4wGN7MF_CqOfRhNFED56xs8(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initData$lambda$4$lambda$3(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LN7yqqgjphMzGwd9fkdH26V0jiY(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->checkMattingProgressRunnable$lambda$1(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R63BXFrvbP0lIfh1CTWOgAMFrQE(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView$lambda$12(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RyDXsmTR8VWuP6b6G4Z0AJdh8v4(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->showLoadingAnima$lambda$17(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TAxqXg1JIs1XxYtqZVTpMatu3hc(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView$lambda$10(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TTXkt2jCvqAWItdlY_NEiBQq75E(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView$lambda$11(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X72QIlRwS7We9JOdDpL9ROdCscQ(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView$lambda$13(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_KzDoMhV01dSBehvUO_jQxi2j5U(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView$lambda$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eafgKp-Vx4b1tI14cxbPWQhBLmA(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView$lambda$6(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gFZWkfsMD5HHTnUrl17PDMXUkJI(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView$lambda$5(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hOjIMxayNP17tzexooCVjo_oZiY(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->cutoutImageForResult$lambda$18(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oNVKlaLYDYkW8Sf3-jA1oigiJ3s(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView$lambda$8$lambda$7(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tVxEX0qE4k3nFHJvZms8w-qsR-M(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initNotchScreen$lambda$15(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->Companion:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    .line 77
    new-instance v0, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->preImageList:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda14;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->checkMattingProgressRunnable:Ljava/lang/Runnable;

    .line 442
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda9;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul…)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->cutoutImageForResult:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$addUndoPreviewImage(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->addUndoPreviewImage(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAiCutOutImageManager$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Lcom/codemao/toolssdk/manager/AiCutOutImageManager;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    return-object p0
.end method

.method public static final synthetic access$getCheckMattingProgressRunnable$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->checkMattingProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getCurrentTaskId$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentTaskId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRatio(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/graphics/Bitmap;)Ljava/lang/Float;
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->getRatio(Landroid/graphics/Bitmap;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStopMattingIfInProgressing$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->stopMattingIfInProgressing:Z

    return p0
.end method

.method public static final synthetic access$loadContentImage(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadContentImage(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$notifyConfirmText(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->notifyConfirmText()V

    return-void
.end method

.method public static final synthetic access$resetUndoImageList(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->resetUndoImageList()V

    return-void
.end method

.method public static final synthetic access$setCurrentTaskId$p(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentTaskId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$showSelectIcon(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->showSelectIcon(Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V

    return-void
.end method

.method public static final synthetic access$stopLoadingAnima(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->stopLoadingAnima()V

    return-void
.end method

.method public static final synthetic access$updateConstantImageList(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->updateConstantImageList()V

    return-void
.end method

.method private final addUndoPreviewImage(Ljava/lang/String;)V
    .registers 8

    .line 450
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 451
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->getCurrentSelectIndex()I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    .line 454
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    const/4 v3, 0x0

    iget v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 455
    iput-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    .line 457
    new-instance v2, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSrcPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v5, v3}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 458
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    .line 460
    invoke-virtual {v1, v5}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->setSelected(Z)V

    .line 461
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 462
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 463
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->notifyUndoReverseUI()V

    .line 464
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    if-nez v1, :cond_4c

    const-string v1, "previewAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_4c
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 465
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadContentImage(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0, v2}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->showSelectIcon(Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V

    .line 467
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->notifyConfirmText()V

    :cond_58
    return-void
.end method

.method private static final checkMattingProgressRunnable$lambda$1(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentTaskId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->checkTaskProcess(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private final checkUndoVisible()V
    .registers 5

    .line 411
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "binding"

    const/4 v3, 0x1

    if-gt v0, v3, :cond_2a

    .line 412
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_14

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_14
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivUndo:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_23

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_24

    :cond_23
    move-object v1, v0

    :goto_24
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivReverse:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_46

    .line 415
    :cond_2a
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_32

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_32
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivUndo:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_40

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_41

    :cond_40
    move-object v1, v0

    :goto_41
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivReverse:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_46
    return-void
.end method

.method private static final cutoutImageForResult$lambda$18(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroidx/activity/result/ActivityResult;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 444
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_19

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 445
    :goto_1a
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->addUndoPreviewImage(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method private final fullScreen()V
    .registers 3

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private final getCurrentImagePath()Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;
    .registers 4

    const/4 v0, 0x0

    .line 473
    :try_start_1
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    if-nez v1, :cond_b

    const-string v1, "previewAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_b
    invoke-virtual {v1}, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->getSelectIndex()I

    move-result v1

    .line 474
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 475
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    move-object v0, v1

    :catch_20
    :cond_20
    return-object v0
.end method

.method private final getCurrentSelectIndex()I
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    if-nez v0, :cond_a

    const-string v0, "previewAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->getSelectIndex()I

    move-result v0

    return v0
.end method

.method private final getRatio(Landroid/graphics/Bitmap;)Ljava/lang/Float;
    .registers 4

    .line 355
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x44fa0000  # 2000.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1d

    div-float/2addr v0, p1

    const p1, 0x3dcccccd  # 0.1f

    sub-float/2addr v0, p1

    .line 357
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getSelectImageCount()I
    .registers 4

    .line 510
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    .line 511
    invoke-virtual {v2}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return v1
.end method

.method private final hasCutoutImage()Z
    .registers 3

    .line 607
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->preImageList:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->preImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private final hideBottomUIMenu()V
    .registers 5

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 88
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2b

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 90
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    :cond_23
    if-nez v2, :cond_26

    goto :goto_2f

    :cond_26
    const/4 v3, 0x2

    .line 91
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_2f

    :cond_2b
    const/16 v2, 0x1002

    .line 94
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :goto_2f
    const/16 v2, 0x1c

    if-lt v1, v2, :cond_36

    const/4 v1, 0x1

    .line 98
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 101
    :cond_36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private final initData()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initData$1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->setMattingCallback(Lcom/codemao/toolssdk/manager/AiCutOutImageManager$MattingCallback;)V

    .line 190
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_14

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_14
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->btnConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 191
    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda11;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final initData$lambda$4(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    sget-object v1, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-le v1, v3, :cond_37

    .line 196
    sget-object v4, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1d

    goto :goto_37

    .line 199
    :cond_1d
    sget-object v4, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x400

    const/4 v6, 0x1

    .line 201
    invoke-static {p0, v5, v4, v2, v6}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->copyImgFromSrcPath(Landroid/content/Context;ILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 203
    new-instance v7, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    invoke-direct {v7, v5, v6, v4}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 204
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1851
    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    .line 208
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 210
    :cond_4d
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    .line 211
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->preImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->preImageList:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda13;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final initData$lambda$4$lambda$3(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->notifyConfirmText()V

    .line 215
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadContentImage(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->resetUndoImageList()V

    .line 217
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    if-nez p0, :cond_25

    const-string p0, "previewAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final initNotchScreen()V
    .registers 3

    .line 363
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda10;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    return-void
.end method

.method private static final initNotchScreen$lambda$15(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 366
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
    if-eqz v0, :cond_2e

    .line 368
    iget-object v0, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 369
    iget-object p1, p1, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    .line 372
    :goto_2f
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_3a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x41300000  # 11.0f

    .line 373
    invoke-static {p0, v3}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 374
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez p0, :cond_59

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5a

    :cond_59
    move-object v1, p0

    :goto_5a
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method private final initView()V
    .registers 11

    .line 223
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivContent:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setCanDraw(Z)V

    .line 224
    new-instance v0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-direct {v0, p0, v4}, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    .line 225
    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->setSelectIndex(I)V

    .line 226
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    const-string v4, "previewAdapter"

    if-nez v0, :cond_27

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_27
    new-instance v5, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$1;

    invoke-direct {v5, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v5}, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->setOnItemClickListener(Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$OnItemClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_37

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_37
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    if-nez v5, :cond_41

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_41
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 235
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_4c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4c
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 237
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_5f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_71

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_71
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->clickBgIvSelect:Landroid/view/View;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_83

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_83
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->btnConfirm:Landroid/widget/TextView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda12;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_97

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_97
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->clickBgAiCutout:Landroid/view/View;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_a9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a9
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->clickManualCutout:Landroid/view/View;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_bb

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_bb
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivUndo:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_cd

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_cd
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivReverse:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    new-instance v0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    const-string v6, "内容未保存，确认返回？"

    const-string v7, "返回后，已抠图的内容将删除\n确认是否返回？"

    const-string v8, "留下来"

    const-string v9, "确定"

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v3, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v3, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v3, v4}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v3

    .line 333
    invoke-virtual {v3, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v3

    .line 331
    iput-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->basePopupView:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 335
    new-instance v3, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$9;

    invoke-direct {v3, p0, v0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$9;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;)V

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->setListener(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_10d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_10e

    :cond_10d
    move-object v2, v0

    :goto_10e
    iget-object v0, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->loadingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda8;->INSTANCE:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initNotchScreen()V

    return-void
.end method

.method private static final initView$lambda$10(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 13

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_12

    .line 264
    sget p1, Lcom/codemao/toolssdk/R$string;->toolsdk_internet_error:I

    invoke-static {p0, p1, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;II)V

    return-void

    .line 267
    :cond_12
    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->stopMattingIfInProgressing:Z

    const/4 p1, 0x0

    .line 268
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentTaskId:Ljava/lang/String;

    .line 269
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->getCurrentImagePath()Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    move-result-object p1

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSrcPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 270
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 271
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 272
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$5$1$1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 285
    :cond_45
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->showLoadingAnima()V

    return-void
.end method

.method private static final initView$lambda$11(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->getCurrentImagePath()Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    if-eqz p1, :cond_1c

    .line 292
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    if-nez v0, :cond_31

    .line 293
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->cutoutImageForResult:Landroidx/activity/result/ActivityResultLauncher;

    sget-object v1, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->Companion:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$Companion;

    invoke-virtual {v1, p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$Companion;->getIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 295
    sget p1, Lcom/codemao/toolssdk/R$anim;->toolsdk_from_bottom:I

    .line 296
    sget v0, Lcom/codemao/toolssdk/R$anim;->toolsdk_material_exit_empty:I

    .line 294
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_31
    return-void
.end method

.method private static final initView$lambda$12(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    if-lez p1, :cond_4e

    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    if-le p1, v0, :cond_4e

    add-int/lit8 v0, v0, -0x1

    .line 302
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    .line 303
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    .line 304
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->getCurrentSelectIndex()I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    .line 306
    invoke-virtual {v1}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSelected()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->setSelected(Z)V

    .line 307
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 308
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    if-nez v1, :cond_41

    const-string v1, "previewAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_41
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 309
    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadContentImage(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->notifyConfirmText()V

    .line 312
    :cond_4e
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->notifyUndoReverseUI()V

    return-void
.end method

.method private static final initView$lambda$13(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    if-ltz p1, :cond_50

    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    if-le p1, v0, :cond_50

    add-int/lit8 v0, v0, 0x1

    .line 316
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    .line 317
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    .line 318
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->getCurrentSelectIndex()I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    .line 320
    invoke-virtual {v1}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSelected()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->setSelected(Z)V

    .line 321
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 322
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    if-nez v1, :cond_43

    const-string v1, "previewAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_43
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 323
    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadContentImage(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->notifyConfirmText()V

    .line 326
    :cond_50
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->notifyUndoReverseUI()V

    return-void
.end method

.method private static final initView$lambda$14(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method private static final initView$lambda$5(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->onBackPressed()V

    return-void
.end method

.method private static final initView$lambda$6(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    if-nez v0, :cond_11

    const-string v0, "previewAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_11
    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->getSelectIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->selectImage(Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V

    return-void
.end method

.method private static final initView$lambda$8(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_f

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_f
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->btnConfirm:Landroid/widget/TextView;

    const-string v1, "binding.btnConfirm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/utils/ViewUtilsKt;->setOnClickListenerWithoutShake(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initView$lambda$8$lambda$7(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 246
    sget p1, Lcom/codemao/toolssdk/R$string;->toolsdk_internet_error:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;II)V

    return-void

    .line 249
    :cond_12
    sget-object p1, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 250
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    .line 251
    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 252
    sget-object v1, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_39
    const/4 p1, -0x1

    .line 255
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 256
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->finish()V

    return-void
.end method

.method private final loadContentImage(Ljava/lang/String;)V
    .registers 4

    .line 534
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_37

    :cond_d
    if-eqz p1, :cond_37

    .line 538
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 547
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_2d

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2d
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivContent:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setGenerateBitmapCallback(Lcom/codemao/toolssdk/image_selector/widget/GenerateBitmapCallback;)V

    :cond_37
    :goto_37
    return-void
.end method

.method private final notifyConfirmText()V
    .registers 7

    .line 490
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->getSelectImageCount()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_40

    .line 492
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_11

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_11
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->btnConfirm:Landroid/widget/TextView;

    sget v3, Lcom/codemao/toolssdk/R$string;->toolsdk_add:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_24

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_24
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->btnConfirm:Landroid/widget/TextView;

    const-string v3, "#33FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_37

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_38

    :cond_37
    move-object v1, v0

    :goto_38
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->btnConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_de

    .line 496
    :cond_40
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v3, :cond_48

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_48
    iget-object v3, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->btnConfirm:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/codemao/toolssdk/R$string;->toolsdk_add:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_74

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_74
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->btnConfirm:Landroid/widget/TextView;

    const-string v3, "#FFFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_87

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_87
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->btnConfirm:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 499
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_95

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_95
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->clickBgAiCutout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 500
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_a2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_a2
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->clickManualCutout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 501
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_af

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_af
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivAiCutout:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 502
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_be

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_be
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivManualCutout:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 503
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_cb

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_cb
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->tvAiCutout:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 504
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_d8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_d9

    :cond_d8
    move-object v1, v0

    :goto_d9
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->tvManualCutout:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_de
    return-void
.end method

.method private final notifyUndoReverseUI()V
    .registers 7

    .line 421
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->checkUndoVisible()V

    .line 422
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "binding"

    if-gt v0, v2, :cond_30

    .line 423
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_1b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_1b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivReverse:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_corner_up_right_disable:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_2a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_2a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivReverse:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_4c

    .line 426
    :cond_30
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_38

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_38
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivReverse:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_corner_up_right_enable:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_47

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_47
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivReverse:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 429
    :goto_4c
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    if-gtz v0, :cond_6e

    .line 430
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_58

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_58
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivUndo:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_corner_up_left_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 431
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_67

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_68

    :cond_67
    move-object v4, v0

    :goto_68
    iget-object v0, v4, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivUndo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_8b

    .line 433
    :cond_6e
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_76

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_76
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivUndo:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_corner_up_left_enable:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 434
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_85

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_86

    :cond_85
    move-object v4, v0

    :goto_86
    iget-object v0, v4, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivUndo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_8b
    return-void
.end method

.method private final resetUndoImageList()V
    .registers 4

    .line 404
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->undoImageList:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->getCurrentSelectIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentUndoIndex:I

    .line 407
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->checkUndoVisible()V

    return-void
.end method

.method private final selectImage(Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V
    .registers 4

    .line 519
    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->setSelected(Z)V

    .line 520
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->showSelectIcon(Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V

    .line 521
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->previewAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    if-nez v0, :cond_16

    const-string v0, "previewAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_16
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 522
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->notifyConfirmText()V

    return-void
.end method

.method private final showLoadingAnima()V
    .registers 6

    .line 379
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadingObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    if-eqz v0, :cond_9

    .line 380
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 382
    :cond_9
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_14

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_14
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivLoadingAnim:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_76

    const-string v4, "rotation"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadingObjectAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_27

    goto :goto_2b

    :cond_27
    const/4 v3, 0x1

    .line 383
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 384
    :goto_2b
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadingObjectAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_30

    goto :goto_36

    :cond_30
    const v3, 0x7ffffffe

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 385
    :goto_36
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadingObjectAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_3b

    goto :goto_40

    :cond_3b
    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 386
    :goto_40
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadingObjectAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_45

    goto :goto_4d

    :cond_45
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    :goto_4d
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadingObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 388
    :cond_54
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_5c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5c
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->loadingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_6a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6b

    :cond_6a
    move-object v1, v0

    :goto_6b
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :array_76
    .array-data 4
        0x0
        0x43b40000  # 360.0f
    .end array-data
.end method

.method private static final showLoadingAnima$lambda$17(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentTaskId:Ljava/lang/String;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->aiCutOutImageManager:Lcom/codemao/toolssdk/manager/AiCutOutImageManager;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/manager/AiCutOutImageManager;->stopMatting(Ljava/lang/String;)V

    .line 391
    :cond_e
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->stopLoadingAnima()V

    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->currentTaskId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 393
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->stopMattingIfInProgressing:Z

    return-void
.end method

.method private final showSelectIcon(Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V
    .registers 4

    .line 526
    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSelected()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p1, :cond_1a

    .line 527
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez p1, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_12

    :cond_11
    move-object v0, p1

    :goto_12
    iget-object p1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivSelect:Landroid/widget/ImageView;

    sget v0, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_checked:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2a

    .line 529
    :cond_1a
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez p1, :cond_22

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_23

    :cond_22
    move-object v0, p1

    :goto_23
    iget-object p1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->ivSelect:Landroid/widget/ImageView;

    sget v0, Lcom/codemao/toolssdk/R$drawable;->toolsdk_check_cancel:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2a
    return-void
.end method

.method private final stopLoadingAnima()V
    .registers 4

    .line 398
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;->loadingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadingObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 400
    :cond_19
    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadingObjectAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private final updateConstantImageList()V
    .registers 5

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 585
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->imageList:Ljava/util/List;

    .line 1851
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    .line 586
    invoke-virtual {v2}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSrcPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v3, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v3, 0x1

    :goto_2d
    if-nez v3, :cond_b

    .line 587
    invoke-virtual {v2}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSrcPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 590
    :cond_37
    sget-object v1, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 591
    sget-object v1, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 592
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    const-string v1, "imageList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 611
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 612
    sget v0, Lcom/codemao/toolssdk/R$anim;->toolsdk_exit_right:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 596
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->hasCutoutImage()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 597
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->basePopupView:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    if-eqz v1, :cond_22

    .line 598
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->basePopupView:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    goto :goto_22

    .line 601
    :cond_1c
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->updateConstantImageList()V

    .line 602
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_22
    :goto_22
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 105
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->hideBottomUIMenu()V

    .line 107
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->fullScreen()V

    .line 108
    sget p1, Lcom/codemao/toolssdk/R$layout;->toolsdk_activity_is_preview:I

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "setContentView(this, R.l…lsdk_activity_is_preview)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    .line 109
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView()V

    .line 110
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 576
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsPreviewBinding;

    if-nez v0, :cond_a

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->checkMattingProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 577
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadingObjectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-eqz v1, :cond_2a

    .line 578
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadingObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 580
    :cond_2a
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
