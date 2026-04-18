.class final Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AIImageCanvasActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initSelectModeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAIImageCanvasActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AIImageCanvasActivity.kt\ncom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,589:1\n1851#2,2:590\n1851#2,2:592\n1851#2,2:594\n*S KotlinDebug\n*F\n+ 1 AIImageCanvasActivity.kt\ncom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1\n*L\n440#1:590,2\n479#1:592,2\n471#1:594,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;


# direct methods
.method public static synthetic $r8$lambda$FkQzTT6IPRQcb8fWK5YVDo3wHX4(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;->invoke$lambda$5$lambda$4$lambda$3(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G7egqtC2L6-ShaOuOuerPr3FgNo(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;->invoke$lambda$5$lambda$4(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ty7cV1ojKVIL-D_G2YIvjiRhwIc(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;->invoke$lambda$5(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;->$adapter:Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$5(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_16
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final invoke$lambda$5$lambda$4(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x41800000  # 16.0f

    .line 456
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x40c00000  # 6.0f

    .line 457
    invoke-static {p0, v1}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 458
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "binding"

    if-nez v2, :cond_23

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_23
    iget-object v2, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->clSelectImageMode:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 460
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object v5

    if-nez v5, :cond_33

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_33
    iget-object v5, v5, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->clSelectImageMode:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {p0}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->isPad(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_44

    const v6, 0x3ec18937  # 0.378f

    goto :goto_47

    :cond_44
    const v6, 0x3f1e353f  # 0.618f

    :goto_47
    mul-float v5, v5, v6

    const/16 v6, 0xb6

    int-to-float v6, v6

    mul-float v5, v5, v6

    const/high16 v6, 0x43800000  # 256.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 463
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getSelectModeDataList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int v6, v6, v5

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v6, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getSelectModeDataList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int v1, v1, v0

    add-int/2addr v6, v1

    if-ge v6, v2, :cond_98

    .line 465
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object v0

    if-nez v0, :cond_7a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_7a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x41200000  # 10.0f

    .line 466
    invoke-static {p0, v1}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v6, v1

    .line 465
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 467
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object v0

    if-nez v0, :cond_93

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_93
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 469
    :cond_98
    invoke-virtual {p1, v5}, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->setItemWidth(I)V

    .line 470
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getSelectModeDataList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_c0

    .line 471
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getSelectModeDataList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;

    move-result-object v0

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    .line 472
    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->setSelect(Z)V

    goto :goto_b0

    .line 475
    :cond_c0
    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->setEnable(Z)V

    .line 476
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 477
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object v0

    if-nez v0, :cond_d0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_d1

    :cond_d0
    move-object v3, v0

    :goto_d1
    iget-object v0, v3, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final invoke$lambda$5$lambda$4$lambda$3(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getSelectModeDataList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 479
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getSelectModeDataList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;

    move-result-object v0

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    .line 480
    invoke-virtual {v3, v2}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->setSelect(Z)V

    goto :goto_1f

    .line 483
    :cond_2f
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getSelectModeDataList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    .line 484
    invoke-virtual {p0, v1}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->setSelect(Z)V

    .line 485
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 486
    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->setEnable(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 439
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    .line 1851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;

    .line 441
    new-instance v12, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 442
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->getTemplate_name()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    :cond_21
    move-object v3, v2

    :goto_22
    const/4 v4, 0x0

    if-eqz v1, :cond_2a

    .line 444
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->getTemplate_cover_url()Ljava/lang/String;

    move-result-object v5

    goto :goto_2b

    :cond_2a
    move-object v5, v2

    :goto_2b
    if-eqz v1, :cond_32

    .line 445
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->getTempalte_dynamic_cover_url()Ljava/lang/String;

    move-result-object v6

    goto :goto_33

    :cond_32
    move-object v6, v2

    :goto_33
    if-eqz v1, :cond_3a

    .line 446
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->getSketch_icon_url()Ljava/lang/String;

    move-result-object v7

    goto :goto_3b

    :cond_3a
    move-object v7, v2

    :goto_3b
    if-eqz v1, :cond_42

    .line 447
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->getDraft_url()Ljava/lang/String;

    move-result-object v8

    goto :goto_43

    :cond_42
    move-object v8, v2

    :goto_43
    if-eqz v1, :cond_4a

    .line 448
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->getSketch_url()Ljava/lang/String;

    move-result-object v9

    goto :goto_4b

    :cond_4a
    move-object v9, v2

    :goto_4b
    if-eqz v1, :cond_52

    .line 449
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->getStyles()Ljava/util/List;

    move-result-object v10

    goto :goto_53

    :cond_52
    move-object v10, v2

    :goto_53
    if-eqz v1, :cond_5f

    .line 450
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->getTemplate_id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v11, v1

    goto :goto_60

    :cond_5f
    move-object v11, v2

    :goto_60
    move-object v2, v12

    .line 441
    invoke-direct/range {v2 .. v11}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V

    .line 452
    invoke-static {v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getSelectModeDataList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 454
    :cond_6c
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1;->$adapter:Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$1$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
