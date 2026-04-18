.class public final Lcom/codemao/creativecenter/customview/CmStageDashboardView;
.super Landroid/widget/FrameLayout;
.source "CmStageDashboardView.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCmStageDashboardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CmStageDashboardView.kt\ncom/codemao/creativecenter/customview/CmStageDashboardView\n*L\n1#1,826:1\n*E\n"
.end annotation


# instance fields
.field private arrow:Landroid/widget/ImageView;

.field private bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

.field private final binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

.field private ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

.field private clRoot:Landroid/widget/FrameLayout;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private currentActor:Lcom/codemao/creativestore/bean/ActorVO;

.field private dp12:I

.field private dp210:I

.field private isBindData:Z

.field private lastGuideView:Landroid/widget/TextView;

.field private lastString:Ljava/lang/String;

.field private onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private resetRotateText:Z

.field private resetScaleText:Z

.field private resetTranXText:Z

.field private resetTranyText:Z

.field private sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

.field private stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetRotateText:Z

    .line 61
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetScaleText:Z

    .line 62
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranXText:Z

    .line 63
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranyText:Z

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 84
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_layout_stage_dashboard:I

    .line 82
    invoke-static {p2, v0, p0, p1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(… this,\n        true\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    .line 90
    invoke-virtual {p1, p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->setSelf(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)V

    .line 91
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p2

    iget-boolean p2, p2, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->setIsPadMode(Ljava/lang/Boolean;)V

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41400000  # 12.0f

    invoke-static {p2, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->dp12:I

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x43520000  # 210.0f

    invoke-static {p2, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->dp210:I

    .line 94
    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 527
    new-instance p1, Lcom/codemao/creativecenter/customview/CmStageDashboardView$onPropertyChangedCallback$1;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView$onPropertyChangedCallback$1;-><init>(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetRotateText:Z

    .line 61
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetScaleText:Z

    .line 62
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranXText:Z

    .line 63
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranyText:Z

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 84
    sget p3, Lcom/codemao/creativecenter/R$layout;->creative_layout_stage_dashboard:I

    .line 82
    invoke-static {p2, p3, p0, p1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(… this,\n        true\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    .line 90
    invoke-virtual {p1, p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->setSelf(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)V

    .line 91
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p2

    iget-boolean p2, p2, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->setIsPadMode(Ljava/lang/Boolean;)V

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41400000  # 12.0f

    invoke-static {p2, p3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->dp12:I

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x43520000  # 210.0f

    invoke-static {p2, p3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->dp210:I

    .line 94
    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 527
    new-instance p1, Lcom/codemao/creativecenter/customview/CmStageDashboardView$onPropertyChangedCallback$1;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView$onPropertyChangedCallback$1;-><init>(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method public static final synthetic access$getCurrentActor$p(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)Lcom/codemao/creativestore/bean/ActorVO;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object p0
.end method

.method public static final synthetic access$refreshStatus(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->refreshStatus()V

    return-void
.end method

.method private final addRevert()V
    .registers 15

    .line 356
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-nez v0, :cond_5

    return-void

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v2, :cond_5a

    const/16 v3, 0xe

    const-string v0, "binding.tvRotate"

    .line 363
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1a8

    .line 367
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseRotationValue(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb4

    const/16 v2, -0xb4

    if-lt v0, v2, :cond_46

    if-le v0, v1, :cond_50

    .line 370
    :cond_46
    rem-int/lit16 v0, v0, 0x168

    if-le v0, v1, :cond_4c

    add-int/lit16 v0, v0, -0x168

    :cond_4c
    if-ge v0, v2, :cond_50

    add-int/lit16 v0, v0, 0x168

    .line 378
    :cond_50
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v1, :cond_1a8

    int-to-double v6, v0

    invoke-virtual {v1, v6, v7}, Lcom/codemao/creativestore/bean/ActorVO;->setRotation(D)V

    goto/16 :goto_1a8

    .line 380
    :cond_5a
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    if-ne v0, v2, :cond_113

    const/16 v3, 0xf

    const-string v0, "binding.tvScale"

    .line 382
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1a8

    .line 384
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseScaleValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8d

    goto :goto_8e

    :cond_8d
    move v6, v0

    .line 388
    :goto_8e
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v0

    goto :goto_98

    :cond_97
    move-object v0, v5

    :goto_98
    if-eqz v0, :cond_109

    .line 390
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 391
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 393
    iget-object v7, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v7, :cond_c2

    invoke-virtual {v7, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v7

    if-eqz v7, :cond_c2

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v7

    goto :goto_c3

    :cond_c2
    move-object v7, v5

    :goto_c3
    if-eqz v7, :cond_e5

    .line 395
    iget-object v8, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v8, :cond_ce

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v8

    goto :goto_d0

    :cond_ce
    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    .line 396
    :goto_d0
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v10

    mul-double v10, v10, v8

    int-to-double v12, v6

    div-double/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Lcom/codemao/creativestore/bean/CenterPoint;->setX(D)V

    .line 397
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v10

    mul-double v10, v10, v8

    div-double/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Lcom/codemao/creativestore/bean/CenterPoint;->setY(D)V

    :cond_e5
    const-string v8, "style"

    .line 399
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a7

    .line 401
    :cond_ee
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_f7

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0, v2, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeAllCenterPbyActor(Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;)V

    .line 402
    :cond_f7
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_109

    .line 403
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v2, :cond_104

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_105

    :cond_104
    move-object v2, v5

    :goto_105
    int-to-double v7, v6

    .line 402
    invoke-virtual {v0, v2, v7, v8, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorScale(Ljava/lang/String;DLjava/util/HashMap;)V

    .line 408
    :cond_109
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_1a8

    int-to-double v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/bean/ActorVO;->setScale(D)V

    goto/16 :goto_1a8

    .line 410
    :cond_113
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    const-string/jumbo v7, "坐标数值过大，角色已超出舞台外"

    if-ne v0, v2, :cond_15f

    const-string v0, "binding.tvTranX"

    .line 412
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_15d

    .line 414
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 415
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v2, :cond_14b

    int-to-double v8, v0

    invoke-virtual {v2, v8, v9}, Lcom/codemao/creativestore/bean/ActorVO;->setX(D)V

    :cond_14b
    const/16 v2, 0x190

    if-gt v0, v2, :cond_153

    const/16 v2, -0x190

    if-ge v0, v2, :cond_154

    :cond_153
    const/4 v4, 0x1

    :cond_154
    if-eqz v4, :cond_15d

    .line 421
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_15d
    :goto_15d
    move v4, v1

    goto :goto_1a8

    .line 424
    :cond_15f
    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    if-ne v0, v1, :cond_1a7

    const-string v0, "binding.tvTranY"

    .line 426
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_15d

    .line 428
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 429
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v2, :cond_194

    int-to-double v8, v0

    invoke-virtual {v2, v8, v9}, Lcom/codemao/creativestore/bean/ActorVO;->setY(D)V

    :cond_194
    const/16 v2, 0xc8

    if-gt v0, v2, :cond_19c

    const/16 v2, -0xc8

    if-ge v0, v2, :cond_19d

    :cond_19c
    const/4 v4, 0x1

    :cond_19d
    if-eqz v4, :cond_15d

    .line 435
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_15d

    :cond_1a7
    const/4 v3, 0x0

    :cond_1a8
    :goto_1a8
    if-eqz v4, :cond_1cb

    .line 441
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    if-eqz v0, :cond_1b3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1b4

    :cond_1b3
    move-object v0, v5

    :goto_1b4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastString:Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_1c2

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v5

    .line 443
    :cond_1c2
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_1cb

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0, v3, v5, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->addActorPropertyRevoke(ILcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V

    :cond_1cb
    return-void
.end method

.method private final dismissPop()V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 348
    :cond_a
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->addRevert()V

    .line 350
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_16

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method private final rebuildLayout()V
    .registers 4

    .line 471
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_11

    goto :goto_67

    .line 472
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_67

    .line 473
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_26

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 474
    :cond_26
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setCenterPEnableTrue()V

    .line 475
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_38

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 476
    :cond_38
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_47

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 477
    :cond_47
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_56

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 478
    :cond_56
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_1f0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_1f0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto/16 :goto_1f0

    :cond_67
    :goto_67
    const/4 v1, 0x1

    if-nez v0, :cond_6b

    goto :goto_cd

    .line 480
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_cd

    .line 481
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_80

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 482
    :cond_80
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_8f

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 483
    :cond_8f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_9e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 484
    :cond_9e
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_ad

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_ad

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 485
    :cond_ad
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_bc

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 486
    :cond_bc
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_1f0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_1f0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto/16 :goto_1f0

    :cond_cd
    :goto_cd
    const/4 v1, 0x2

    if-nez v0, :cond_d1

    goto :goto_127

    .line 488
    :cond_d1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_127

    .line 489
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_e6

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 490
    :cond_e6
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setCenterPEnableTrue()V

    .line 491
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_f8

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_f8

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 492
    :cond_f8
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_107

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_107

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 493
    :cond_107
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_116

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_116

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 494
    :cond_116
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_1f0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_1f0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto/16 :goto_1f0

    :cond_127
    :goto_127
    const/4 v1, 0x3

    if-nez v0, :cond_12b

    goto :goto_18c

    .line 496
    :cond_12b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_18c

    .line 497
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_140

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_140

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 498
    :cond_140
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_14f

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_14f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 499
    :cond_14f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_15e

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_15e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 500
    :cond_15e
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_16d

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_16d

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 501
    :cond_16d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_17c

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_17c

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 502
    :cond_17c
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_1f0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridSelected()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_1f0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_1f0

    :cond_18c
    :goto_18c
    const/4 v1, 0x4

    if-nez v0, :cond_190

    goto :goto_1f0

    .line 504
    :cond_190
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1f0

    .line 505
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_1a5

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_1a5

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 506
    :cond_1a5
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_1b4

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_1b4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 507
    :cond_1b4
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_1c3

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_1c3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 508
    :cond_1c3
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_1d2

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_1d2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 509
    :cond_1d2
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_1e1

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_1e1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 510
    :cond_1e1
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_1f0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_1f0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_1f0
    :goto_1f0
    return-void
.end method

.method private final refreshStatus()V
    .registers 3

    .line 516
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    goto :goto_16

    :cond_12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-gez v0, :cond_25

    const/4 v0, 0x4

    .line 517
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeModel(I)V

    goto :goto_4d

    .line 520
    :cond_25
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    if-nez v0, :cond_4a

    :cond_49
    const/4 v1, 0x1

    .line 519
    :cond_4a
    invoke-virtual {p0, v1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeModel(I)V

    :goto_4d
    return-void
.end method

.method private final setCenterPEnableTrue()V
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_19

    iget-boolean v0, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 559
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_28

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_28

    .line 561
    :cond_19
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_28

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_28
    :goto_28
    return-void
.end method

.method private final sycWeb()V
    .registers 13

    .line 622
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    return-void

    .line 625
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_39

    .line 626
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_14f

    .line 627
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    .line 628
    :cond_1e
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    const-string v2, "binding.tvRotate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseRotationValue(Ljava/lang/String;)I

    move-result v1

    int-to-double v1, v1

    .line 626
    invoke-virtual {v0, v3, v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorRotation(Ljava/lang/String;D)V

    goto/16 :goto_14f

    .line 630
    :cond_39
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    if-ne v0, v2, :cond_d2

    const-string v0, "binding.tvScale"

    .line 631
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseScaleValue(Ljava/lang/String;)I

    move-result v0

    .line 632
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_59

    goto :goto_5e

    :cond_59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 633
    :goto_5e
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    if-nez v0, :cond_6f

    const-wide v4, 0x3f50624dd2f1a9fcL  # 0.001

    goto :goto_70

    :cond_6f
    int-to-double v4, v0

    .line 635
    :goto_70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_74
    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 636
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v6, :cond_8f

    invoke-virtual {v6, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v6

    if-eqz v6, :cond_8f

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v6

    goto :goto_90

    :cond_8f
    move-object v6, v3

    :goto_90
    if-eqz v6, :cond_b1

    .line 638
    iget-object v7, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v7, :cond_9b

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v7

    goto :goto_9d

    :cond_9b
    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    .line 639
    :goto_9d
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v9

    mul-double v9, v9, v7

    div-double/2addr v9, v4

    invoke-virtual {v6, v9, v10}, Lcom/codemao/creativestore/bean/CenterPoint;->setX(D)V

    .line 640
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v9

    mul-double v9, v9, v7

    div-double/2addr v9, v4

    invoke-virtual {v6, v9, v10}, Lcom/codemao/creativestore/bean/CenterPoint;->setY(D)V

    :cond_b1
    const-string v7, "style"

    .line 642
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v1, :cond_ca

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v6, :cond_c6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_c7

    :cond_c6
    move-object v6, v3

    :goto_c7
    invoke-virtual {v1, v6, v4, v5, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorScale(Ljava/lang/String;DLjava/util/HashMap;)V

    .line 644
    :cond_ca
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v1, :cond_74

    invoke-virtual {v1, v4, v5}, Lcom/codemao/creativestore/bean/ActorVO;->setScale(D)V

    goto :goto_74

    .line 646
    :cond_d2
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    const-string v4, "binding.tvTranY"

    const-string v5, "binding.tvTranX"

    if-ne v0, v2, :cond_113

    .line 647
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v6, :cond_14f

    .line 648
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    :cond_e6
    move-object v7, v3

    .line 649
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v8, v0

    .line 650
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v10, v0

    .line 647
    invoke-virtual/range {v6 .. v11}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorPosition(Ljava/lang/String;DD)V

    goto :goto_14f

    .line 652
    :cond_113
    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    if-ne v0, v1, :cond_14f

    .line 653
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v6, :cond_14f

    .line 654
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_123

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    :cond_123
    move-object v7, v3

    .line 655
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v8, v0

    .line 656
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v10, v0

    .line 653
    invoke-virtual/range {v6 .. v11}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorPosition(Ljava/lang/String;DD)V

    :cond_14f
    :goto_14f
    return-void
.end method

.method private final updateArrowLocation(Landroid/view/View;)V
    .registers 4

    .line 461
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->arrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_43

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    .line 464
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->arrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_3b

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 465
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->arrow:Landroid/widget/ImageView;

    if-nez v0, :cond_25

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_25
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 466
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->arrow:Landroid/widget/ImageView;

    if-nez p1, :cond_37

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_37
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_43

    .line 464
    :cond_3b
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_43
    :goto_43
    return-void
.end method

.method private final updateKeyboardLocation(Landroid/view/View;)V
    .registers 8

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 450
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 451
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 452
    iget v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->dp210:I

    add-int v3, p1, v2

    iget v4, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->dp12:I

    sub-int v5, v0, v4

    if-ge v3, v5, :cond_23

    if-eqz v1, :cond_29

    .line 453
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_29

    :cond_23
    if-eqz v1, :cond_29

    sub-int/2addr v0, v2

    sub-int/2addr v0, v4

    .line 455
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 457
    :cond_29
    :goto_29
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    if-eqz p1, :cond_30

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_30
    return-void
.end method

.method private final updateListener(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 4

    .line 566
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 567
    :cond_9
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz p1, :cond_12

    .line 568
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_12
    return-void
.end method

.method private final updatePopLocation(Landroid/view/View;)V
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_d

    if-eqz v0, :cond_a

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 259
    :cond_a
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->addRevert()V

    .line 261
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 262
    :cond_14
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->updateArrowLocation(Landroid/view/View;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->updateKeyboardLocation(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .registers 6

    .line 139
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 140
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

    .line 141
    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    .line 142
    iput-object p4, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->arrow:Landroid/widget/ImageView;

    .line 143
    iput-object p5, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clRoot:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_11

    .line 144
    invoke-interface {p2}, Lcom/codemao/creativecenter/view/LocalBcmView;->getSideBarVm()Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->isBindData:Z

    .line 146
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->refreshStatus()V

    .line 147
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_2a

    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    if-eqz p1, :cond_2a

    new-instance p2, Lcom/codemao/creativecenter/customview/CmStageDashboardView$bindData$1;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView$bindData$1;-><init>(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)V

    invoke-virtual {p1, p2}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_2a
    return-void
.end method

.method public final cancelAllDashBtnSelected()V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    const-string v1, "binding.tvRotate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 331
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickGuideRotate(Landroid/view/View;)V

    .line 333
    :cond_19
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    const-string v1, "binding.tvScale"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 334
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickGuideScale(Landroid/view/View;)V

    .line 336
    :cond_32
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    const-string v1, "binding.tvTranX"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 337
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickGuideX(Landroid/view/View;)V

    .line 339
    :cond_4b
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    const-string v1, "binding.tvTranY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 340
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickGuideX(Landroid/view/View;)V

    :cond_64
    return-void
.end method

.method public final changeCurrentSelectActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 5

    const-string v0, "actorVO"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->updateListener(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 540
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->setActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 541
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 543
    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    .line 544
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    const-wide/high16 v1, 0x4059000000000000L  # 100.0

    invoke-static {p1, v1, v2}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindScale(Landroid/widget/TextView;D)V

    .line 545
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setDashViewsEnable(Z)V

    .line 546
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object p1

    if-eqz p1, :cond_4f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_33
    const/4 p1, 0x1

    .line 548
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setDashViewsEnable(Z)V

    .line 549
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v1

    if-eqz v1, :cond_46

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 550
    :cond_46
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result v1

    if-ne v1, p1, :cond_4f

    .line 551
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setCurrentModel(I)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public final changeModel(I)V
    .registers 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setCurrentModel(I)V

    .line 129
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->rebuildLayout()V

    return-void
.end method

.method public final changeStatus(Landroid/view/View;)Z
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 315
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->dismissPop()V

    goto :goto_12

    .line 317
    :cond_f
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->updatePopLocation(Landroid/view/View;)V

    .line 319
    :goto_12
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    .line 320
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastString:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    if-eqz v1, :cond_2a

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_2a
    xor-int/lit8 v1, v0, 0x1

    .line 324
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    return v0
.end method

.method public final clickCenterP(Landroid/view/View;)V
    .registers 12

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_f

    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    const/4 p1, 0x3

    :goto_10
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeModel(I)V

    .line 161
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v2, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrentActorId()Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_23
    move-object p1, v2

    .line 162
    :goto_24
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v3, :cond_2d

    invoke-virtual {v3, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActorById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    goto :goto_2e

    :cond_2d
    move-object v3, v2

    .line 163
    :goto_2e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_36

    if-nez v3, :cond_61

    .line 164
    :cond_36
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    goto :goto_48

    :cond_47
    move-object p1, v2

    :goto_48
    if-eqz p1, :cond_e0

    .line 165
    iget-boolean v4, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v4, :cond_50

    goto/16 :goto_e0

    .line 168
    :cond_50
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    .line 169
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v4, :cond_61

    invoke-virtual {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v4

    if-eqz v4, :cond_61

    invoke-virtual {v4, p1}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrentActorId(Ljava/lang/String;)V

    :cond_61
    const/4 p1, 0x1

    if-eqz v3, :cond_9c

    .line 173
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v4, :cond_7d

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v4

    if-eqz v4, :cond_7d

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v4

    goto :goto_7e

    :cond_7d
    move-object v4, v2

    .line 174
    :goto_7e
    invoke-direct {p0, v3}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->updateListener(Lcom/codemao/creativestore/bean/ActorVO;)V

    if-eqz v4, :cond_98

    .line 175
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v9, v5, v7

    if-nez v9, :cond_98

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v4

    cmpg-double v6, v4, v7

    if-eqz v6, :cond_96

    goto :goto_98

    :cond_96
    const/4 v4, 0x0

    goto :goto_99

    :cond_98
    :goto_98
    const/4 v4, 0x1

    :goto_99
    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/ActorVO;->setCan_reset(Z)V

    .line 177
    :cond_9c
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result v3

    const-string/jumbo v4, "舞台编辑-全屏"

    if-ne v3, v0, :cond_b7

    .line 178
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    const-string/jumbo v5, "舞台全屏-中心点开"

    invoke-virtual {v3, v4, v5, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 179
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->showActorPivotEdit()V

    goto :goto_c8

    .line 181
    :cond_b7
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    const-string/jumbo v5, "舞台全屏-中心点关"

    invoke-virtual {v3, v4, v5, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 182
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideActorPivotEdit()V

    .line 184
    :cond_c8
    :goto_c8
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v2, :cond_e0

    invoke-virtual {v2}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPSelected()Landroidx/databinding/ObservableField;

    move-result-object v2

    if-eqz v2, :cond_e0

    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result v3

    if-ne v3, v0, :cond_d9

    const/4 v1, 0x1

    :cond_d9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_e0
    :goto_e0
    return-void
.end method

.method public final clickGuideRotate(Landroid/view/View;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeStatus(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 272
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "舞台编辑-全屏"

    const-string/jumbo v2, "舞台全屏-角度"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 273
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetRotateText:Z

    .line 274
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->changeRotateStatus()V

    :cond_23
    return-void
.end method

.method public final clickGuideScale(Landroid/view/View;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeStatus(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 283
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "舞台编辑-全屏"

    const-string/jumbo v2, "舞台全屏-角色大小"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 284
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetScaleText:Z

    .line 285
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->changeScaleStatus()V

    :cond_23
    return-void
.end method

.method public final clickGuideX(Landroid/view/View;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeStatus(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x1

    .line 294
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranXText:Z

    .line 295
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "舞台编辑-全屏"

    const-string/jumbo v2, "舞台全屏-x坐标"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->changeXtransetStatus()V

    :cond_23
    return-void
.end method

.method public final clickGuideY(Landroid/view/View;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeStatus(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 306
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "舞台编辑-全屏"

    const-string/jumbo v2, "舞台全屏-y坐标"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 307
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranyText:Z

    .line 308
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->changeYtransetStatus()V

    :cond_23
    return-void
.end method

.method public final clickGuides(Landroid/view/View;)V
    .registers 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    const/4 p1, 0x2

    :goto_10
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeModel(I)V

    .line 206
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v2, 0x1

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result v3

    if-ne v3, v1, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    invoke-virtual {p1, v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->toggleEditModel(Z)V

    .line 207
    :cond_24
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result p1

    const/4 v3, 0x0

    const-string/jumbo v4, "舞台编辑-全屏"

    if-nez p1, :cond_43

    .line 208
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

    if-eqz p1, :cond_35

    invoke-interface {p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->hideCutActorView()V

    .line 209
    :cond_35
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v5, "舞台全屏-网格关"

    invoke-virtual {p1, v4, v5, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 210
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->dismissPop()V

    goto :goto_54

    .line 212
    :cond_43
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v5, "舞台全屏-网格开"

    invoke-virtual {p1, v4, v5, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

    if-eqz p1, :cond_54

    invoke-interface {p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->refreshCutActorView()V

    .line 215
    :cond_54
    :goto_54
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridSelected()Landroidx/databinding/ObservableField;

    move-result-object p1

    if-eqz p1, :cond_6c

    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result v3

    if-ne v3, v1, :cond_65

    const/4 v0, 0x1

    :cond_65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_6c
    return-void
.end method

.method public final clickOritation()V
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    goto :goto_16

    :cond_12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2f

    .line 193
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "舞台编辑-全屏"

    const-string/jumbo v3, "舞台全屏-退出"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3c

    .line 195
    :cond_2f
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "运行状态-全屏"

    const-string/jumbo v3, "全屏运行-退出"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    :goto_3c
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/LocalBcmView;->changeScreenOrientation()V

    :cond_43
    return-void
.end method

.method public final clickRevert(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 250
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertSelected()Landroidx/databinding/ObservableField;

    move-result-object p1

    if-eqz p1, :cond_1a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 251
    :cond_1a
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->resetCenter()V

    :cond_21
    return-void
.end method

.method public final getBinding()Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    return-object v0
.end method

.method public getCurrentDegress()I
    .registers 4

    .line 733
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    const-string v1, "binding.tvRotate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v0, 0x5a

    goto :goto_30

    .line 736
    :cond_1a
    sget-object v1, Lcom/codemao/creativestore/bean/RoleNumBean;->degress:Ljava/lang/String;

    const-string v2, "RoleNumBean.degress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_30
    return v0
.end method

.method public final getCurrentModel()I
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final getOnPropertyChangedCallback()Landroidx/databinding/Observable$OnPropertyChangedCallback;
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-object v0
.end method

.method public final getStageDashboardItemVM()Lcom/codemao/creativecenter/vm/StageDashboardItemVM;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    return-object v0
.end method

.method public final isBindData()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->isBindData:Z

    return v0
.end method

.method public final isInCenterPButtonBounds(FF)Z
    .registers 5

    .line 796
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    const-string v1, "binding.ivCenterP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_44

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_44

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_44

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_44

    const/4 p1, 0x1

    return p1

    :cond_44
    const/4 p1, 0x0

    return p1
.end method

.method public final isInLlFunc(FF)Z
    .registers 5

    .line 818
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    const-string v1, "binding.llFunc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_44

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_44

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_44

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_44

    const/4 p1, 0x1

    return p1

    :cond_44
    const/4 p1, 0x0

    return p1
.end method

.method public final isInOrientationButtonBounds(FF)Z
    .registers 5

    .line 807
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    const-string v1, "binding.ivOritation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_44

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_44

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_44

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_44

    const/4 p1, 0x1

    return p1

    :cond_44
    const/4 p1, 0x0

    return p1
.end method

.method public final isInRevertButtonBounds(FF)Z
    .registers 5

    .line 785
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    const-string v1, "binding.ivRevert"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_44

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_44

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_44

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_44

    const/4 p1, 0x1

    return p1

    :cond_44
    const/4 p1, 0x0

    return p1
.end method

.method public final notifyActorRemove()V
    .registers 2

    .line 745
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 744
    :goto_19
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeModel(I)V

    return-void
.end method

.method public onClickDel()V
    .registers 9

    .line 678
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    return-void

    .line 681
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 682
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->dismissPop()V

    return-void

    .line 685
    :cond_11
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "RoleNumBean.zero"

    const-string v7, "rotateValue"

    if-ne v0, v2, :cond_86

    .line 686
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetRotateText:Z

    const-string v1, "binding.tvRotate"

    if-eqz v0, :cond_4b

    .line 687
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/codemao/creativestore/bean/RoleNumBean;->degress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_184

    .line 691
    :cond_4b
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseDelRotateValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v5, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 693
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 695
    :cond_7a
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_184

    .line 697
    :cond_86
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    if-ne v0, v2, :cond_d2

    .line 698
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetScaleText:Z

    const-string v1, "binding.tvScale"

    if-eqz v0, :cond_b7

    .line 699
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/codemao/creativestore/bean/RoleNumBean;->percent:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_184

    .line 701
    :cond_b7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseDelScaleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_184

    .line 704
    :cond_d2
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    if-ne v0, v2, :cond_12c

    .line 705
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranXText:Z

    const-string v1, "binding.tvTranX"

    if-eqz v0, :cond_f2

    .line 706
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_184

    .line 710
    :cond_f2
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseDelTransetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_121

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v5, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    .line 712
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 714
    :cond_121
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_184

    .line 716
    :cond_12c
    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    if-ne v0, v1, :cond_184

    .line 717
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranyText:Z

    const-string v2, "binding.tvTranY"

    if-eqz v0, :cond_14b

    .line 718
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_184

    .line 722
    :cond_14b
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseDelTransetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17a

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v5, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 724
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 726
    :cond_17a
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    :cond_184
    :goto_184
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->sycWeb()V

    return-void
.end method

.method public onClickMinus()V
    .registers 5

    .line 663
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    return-void

    .line 666
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 667
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->dismissPop()V

    return-void

    :cond_11
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 670
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 671
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    :cond_26
    if-eqz v1, :cond_4c

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 672
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    if-eqz v2, :cond_3b

    xor-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 673
    :cond_3b
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    if-eqz v2, :cond_48

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseMinusValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    :cond_48
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->sycWeb()V

    return-void

    .line 671
    :cond_4c
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClickNum(I)V
    .registers 8

    .line 581
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    return-void

    .line 584
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->lastGuideView:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 585
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->dismissPop()V

    return-void

    .line 588
    :cond_11
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    const/4 v4, 0x0

    if-ne v0, v2, :cond_66

    .line 589
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetRotateText:Z

    const-string v1, "binding.tvRotate"

    if-eqz v0, :cond_2a

    if-nez p1, :cond_2a

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 590
    :cond_2a
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_60

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v3, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetRotateText:Z

    .line 590
    invoke-static {v2, p1, v1, v3}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseAddRotateValue(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iput-boolean v4, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetRotateText:Z

    goto/16 :goto_154

    .line 592
    :cond_60
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 595
    :cond_66
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    if-ne v0, v2, :cond_b6

    .line 596
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetScaleText:Z

    const-string v1, "binding.tvScale"

    if-eqz v0, :cond_7a

    if-nez p1, :cond_7a

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 597
    :cond_7a
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v3, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetScaleText:Z

    .line 597
    invoke-static {v2, p1, v1, v3}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseAddScaleValue(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iput-boolean v4, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetScaleText:Z

    goto/16 :goto_154

    .line 599
    :cond_b0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 602
    :cond_b6
    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    if-ne v0, v2, :cond_105

    .line 603
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranXText:Z

    const-string v1, "binding.tvTranX"

    if-eqz v0, :cond_ca

    if-nez p1, :cond_ca

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 604
    :cond_ca
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 606
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ff

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v3, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranXText:Z

    .line 604
    invoke-static {v2, p1, v1, v3}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseAddTransetValue(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iput-boolean v4, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranXText:Z

    goto :goto_154

    .line 606
    :cond_ff
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 609
    :cond_105
    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    if-ne v0, v1, :cond_154

    .line 610
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranyText:Z

    const-string v2, "binding.tvTranY"

    if-eqz v0, :cond_119

    if-nez p1, :cond_119

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 611
    :cond_119
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 613
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14e

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-boolean v3, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranyText:Z

    .line 611
    invoke-static {v1, p1, v2, v3}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseAddTransetValue(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iput-boolean v4, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetTranyText:Z

    goto :goto_154

    .line 613
    :cond_14e
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 617
    :cond_154
    :goto_154
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->sycWeb()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onRotation(IZ)V
    .registers 6

    .line 572
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_9

    return-void

    :cond_9
    const/4 p2, 0x1

    .line 575
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->resetRotateText:Z

    .line 576
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    const-string v0, "binding.tvRotate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codemao/creativestore/bean/RoleNumBean;->degress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p2, :cond_3f

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    int-to-double v1, p1

    invoke-virtual {p2, v0, v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorRotation(Ljava/lang/String;D)V

    :cond_3f
    return-void
.end method

.method public final ready()V
    .registers 9

    .line 100
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_79

    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_79

    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    goto/16 :goto_79

    .line 103
    :cond_17
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v0

    goto :goto_28

    :cond_27
    move-object v0, v1

    :goto_28
    const/4 v2, 0x0

    if-eqz v0, :cond_30

    .line 104
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    const/4 v4, 0x1

    if-nez v3, :cond_38

    .line 105
    invoke-virtual {p0, v4}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setCurrentModel(I)V

    goto :goto_79

    .line 108
    :cond_38
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideEnable()Z

    move-result v3

    if-ne v3, v4, :cond_6a

    if-eqz v0, :cond_6a

    .line 110
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :cond_49
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 111
    iget-object v7, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v7, :cond_5e

    invoke-virtual {v7, v6}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActorById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v6

    goto :goto_5f

    :cond_5e
    move-object v6, v1

    :goto_5f
    if-eqz v6, :cond_49

    .line 112
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->isHidden_in_edit()Z

    move-result v6

    if-ne v6, v4, :cond_49

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_6a
    const/4 v5, 0x0

    :cond_6b
    if-eqz v0, :cond_72

    .line 118
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_73

    :cond_72
    const/4 v0, 0x0

    :goto_73
    if-ne v5, v0, :cond_76

    const/4 v2, 0x1

    :cond_76
    invoke-virtual {p0, v2}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setCurrentModel(I)V

    :cond_79
    :goto_79
    return-void
.end method

.method public final setBindData(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->isBindData:Z

    return-void
.end method

.method public final setCurrentModel(I)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->setCurrentModel(I)V

    :cond_7
    return-void
.end method

.method public final setDashViewsEnable(Z)V
    .registers 7

    const-string v0, "binding.tvTranY"

    const-string v1, "binding.tvTranX"

    const-string v2, "binding.tvScale"

    const-string v3, "binding.tvRotate"

    if-eqz p1, :cond_5e

    .line 761
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 762
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 763
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 764
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 765
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 766
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 767
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 768
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_b2

    .line 770
    :cond_5e
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x3e99999a  # 0.3f

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 771
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 772
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 773
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 774
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 775
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 776
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 777
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_b2
    return-void
.end method

.method public final setOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method public final setStageDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V
    .registers 3

    .line 70
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    .line 71
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->setDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V

    return-void
.end method
