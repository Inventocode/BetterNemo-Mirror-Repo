.class public Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CmFullScreenBottomView.java"

# interfaces
.implements Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private arrow:Landroid/widget/ImageView;

.field private bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

.field private ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

.field private clRoot:Landroid/widget/FrameLayout;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private currentActor:Lcom/codemao/creativestore/bean/ActorVO;

.field private dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

.field private dp12:I

.field private dp210:I

.field private isLandscapeMode:Z

.field private ivCenterP:Landroid/widget/ImageView;

.field private ivOritation:Landroid/widget/ImageView;

.field private ivRevert:Landroid/widget/ImageView;

.field private ivUpload:Landroid/widget/ImageView;

.field private landscapeInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;

.field private lastGuideView:Landroid/widget/TextView;

.field private lastString:Ljava/lang/String;

.field private llFunc:Landroid/widget/LinearLayout;

.field onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private portraitInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;

.field private resetRotateText:Z

.field private resetScaleText:Z

.field private resetTranXText:Z

.field private resetTranyText:Z

.field private run:Landroid/widget/ImageView;

.field private showUpload:Z

.field private sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

.field private tvRotate:Landroid/widget/TextView;

.field private tvScale:Landroid/widget/TextView;

.field private tvTranX:Landroid/widget/TextView;

.field private tvTranY:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetRotateText:Z

    .line 69
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetScaleText:Z

    .line 70
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranXText:Z

    .line 71
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranyText:Z

    .line 74
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->showUpload:Z

    .line 90
    new-instance p1, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$1;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$1;-><init>(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)Lcom/codemao/creativestore/bean/ActorVO;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)Lcom/codemao/creativecenter/vm/StageDashboardItemVM;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->refreshStatus()V

    return-void
.end method

.method private addRevert()V
    .registers 15

    .line 399
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-nez v0, :cond_5

    return-void

    .line 403
    :cond_5
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_4f

    const/16 v3, 0xe

    .line 407
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_17f

    .line 411
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseRotationValue(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb4

    const/16 v5, -0xb4

    if-lt v1, v5, :cond_3d

    if-le v1, v2, :cond_47

    .line 414
    :cond_3d
    rem-int/lit16 v1, v1, 0x168

    if-le v1, v2, :cond_43

    add-int/lit16 v1, v1, -0x168

    :cond_43
    if-ge v1, v5, :cond_47

    add-int/lit16 v1, v1, 0x168

    .line 424
    :cond_47
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    int-to-double v5, v1

    invoke-virtual {v2, v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setRotation(D)V

    goto/16 :goto_17f

    .line 426
    :cond_4f
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    if-ne v1, v2, :cond_f0

    const/16 v3, 0xf

    .line 428
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_17f

    .line 431
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseScaleValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_78

    goto :goto_79

    :cond_78
    move v5, v1

    .line 435
    :goto_79
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_e8

    .line 436
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 437
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 438
    iget-object v7, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v7, v6}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v7

    .line 440
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v8

    iget-object v10, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v10

    mul-double v8, v8, v10

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/codemao/creativestore/bean/CenterPoint;->setX(D)V

    .line 441
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v8

    iget-object v12, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v12}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v12

    mul-double v8, v8, v12

    div-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/codemao/creativestore/bean/CenterPoint;->setY(D)V

    .line 442
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 444
    :cond_d5
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v2, v6, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeAllCenterPbyActor(Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;)V

    .line 445
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v6

    int-to-double v7, v5

    invoke-virtual {v2, v6, v7, v8, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorScale(Ljava/lang/String;DLjava/util/HashMap;)V

    .line 448
    :cond_e8
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    int-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setScale(D)V

    goto/16 :goto_17f

    .line 450
    :cond_f0
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    const-string/jumbo v6, "坐标数值过大，角色已超出舞台外"

    const/16 v7, -0x1f4

    const/16 v8, -0x12c

    const/16 v9, 0x1f4

    const/16 v10, 0x12c

    if-ne v1, v2, :cond_13d

    .line 452
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_13b

    .line 454
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 455
    iget-object v11, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    int-to-double v12, v2

    invoke-virtual {v11, v12, v13}, Lcom/codemao/creativestore/bean/ActorVO;->setX(D)V

    .line 457
    iget-boolean v11, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isLandscapeMode:Z

    if-eqz v11, :cond_12d

    if-gt v2, v9, :cond_131

    if-ge v2, v7, :cond_132

    goto :goto_131

    :cond_12d
    if-gt v2, v10, :cond_131

    if-ge v2, v8, :cond_132

    :cond_131
    :goto_131
    const/4 v4, 0x1

    :cond_132
    if-eqz v4, :cond_13b

    .line 467
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_13b
    :goto_13b
    move v4, v1

    goto :goto_17f

    .line 470
    :cond_13d
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    if-ne v1, v2, :cond_17e

    .line 472
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_13b

    .line 474
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 475
    iget-object v11, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    int-to-double v12, v2

    invoke-virtual {v11, v12, v13}, Lcom/codemao/creativestore/bean/ActorVO;->setY(D)V

    .line 477
    iget-boolean v11, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isLandscapeMode:Z

    if-eqz v11, :cond_16f

    if-gt v2, v10, :cond_173

    if-ge v2, v8, :cond_174

    goto :goto_173

    :cond_16f
    if-gt v2, v9, :cond_173

    if-ge v2, v7, :cond_174

    :cond_173
    :goto_173
    const/4 v4, 0x1

    :cond_174
    if-eqz v4, :cond_13b

    .line 487
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_13b

    :cond_17e
    const/4 v3, 0x0

    :cond_17f
    :goto_17f
    if-eqz v4, :cond_194

    .line 495
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastString:Ljava/lang/String;

    .line 497
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v1, v3, v0, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->addActorPropertyRevoke(ILcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V

    :cond_194
    return-void
.end method

.method private dismissPop()V
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 390
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 391
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->addRevert()V

    .line 394
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private isNoActors()Z
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private notifyLlFuncVisible()V
    .registers 5

    .line 673
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    iget-boolean v0, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v0, :cond_b

    goto :goto_44

    .line 689
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v0

    if-ne v0, v1, :cond_8f

    .line 690
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 691
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 692
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 693
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 694
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 695
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 696
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 697
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 698
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8f

    .line 674
    :cond_44
    :goto_44
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isLandscapeMode:Z

    if-eqz v0, :cond_50

    .line 675
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8f

    .line 676
    :cond_50
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v0

    if-ne v0, v1, :cond_8f

    .line 677
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    const v1, 0x3e99999a  # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 679
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 680
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 681
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 683
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 684
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 685
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 686
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method private rebuildLayout()V
    .registers 6

    .line 528
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivUpload:Landroid/widget/ImageView;

    if-eqz v0, :cond_27

    .line 533
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    :cond_27
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 539
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 540
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v0

    if-eqz v0, :cond_15f

    const/4 v3, 0x1

    if-eq v0, v3, :cond_133

    const/4 v4, 0x2

    if-eq v0, v4, :cond_fd

    const/4 v4, 0x3

    if-eq v0, v4, :cond_ba

    const/4 v4, 0x4

    if-eq v0, v4, :cond_67

    goto/16 :goto_18d

    .line 579
    :cond_67
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 581
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->showUpload:Z

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivUpload:Landroid/widget/ImageView;

    if-eqz v0, :cond_82

    .line 582
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    :cond_82
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 585
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isLandscapeMode:Z

    if-eqz v0, :cond_18d

    .line 586
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 587
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 588
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 590
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto/16 :goto_18d

    .line 568
    :cond_ba
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 570
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 572
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 573
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isLandscapeMode:Z

    if-eqz v0, :cond_18d

    .line 574
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 575
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridSelected()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto/16 :goto_18d

    .line 557
    :cond_fd
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->notifyLlFuncVisible()V

    .line 558
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 560
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isLandscapeMode:Z

    if-eqz v0, :cond_18d

    .line 561
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 563
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->setCenterPEnableTure()V

    .line 564
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18d

    .line 550
    :cond_133
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 552
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_18d

    .line 542
    :cond_15f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->setCenterPEnableTure()V

    .line 544
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_18d
    :goto_18d
    return-void
.end method

.method private refreshStatus()V
    .registers 3

    .line 641
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_15

    const/4 v0, 0x4

    .line 642
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeModel(I)V

    goto :goto_1c

    .line 644
    :cond_15
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isNoActors()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeModel(I)V

    .line 647
    :goto_1c
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object v1, v1, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private setCenterPEnableTure()V
    .registers 3

    .line 597
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_14

    iget-boolean v0, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v0, :cond_14

    .line 598
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_1f

    .line 600
    :cond_14
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :goto_1f
    return-void
.end method

.method private sycWeb()V
    .registers 11

    .line 771
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    if-ne v0, v1, :cond_22

    .line 772
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseRotationValue(Ljava/lang/String;)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorRotation(Ljava/lang/String;D)V

    goto/16 :goto_fa

    .line 773
    :cond_22
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    if-ne v0, v1, :cond_9f

    .line 775
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseScaleValue(Ljava/lang/String;)I

    move-result v0

    .line 776
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    if-nez v0, :cond_49

    const-wide v2, 0x3f50624dd2f1a9fcL  # 0.001

    goto :goto_4a

    :cond_49
    int-to-double v2, v0

    .line 778
    :goto_4a
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 779
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v5, v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v5

    .line 781
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v6

    iget-object v8, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v8

    mul-double v6, v6, v8

    div-double/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/codemao/creativestore/bean/CenterPoint;->setX(D)V

    .line 782
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v6

    iget-object v8, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v8

    mul-double v6, v6, v8

    div-double/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/codemao/creativestore/bean/CenterPoint;->setY(D)V

    .line 783
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 785
    :cond_8e
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorScale(Ljava/lang/String;DLjava/util/HashMap;)V

    .line 786
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0, v2, v3}, Lcom/codemao/creativestore/bean/ActorVO;->setScale(D)V

    goto :goto_fa

    .line 788
    :cond_9f
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    if-ne v0, v1, :cond_cd

    .line 789
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v4, v0

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorPosition(Ljava/lang/String;DD)V

    goto :goto_fa

    .line 790
    :cond_cd
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    if-ne v0, v1, :cond_fa

    .line 791
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v4, v0

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorPosition(Ljava/lang/String;DD)V

    :cond_fa
    :goto_fa
    return-void
.end method

.method private updateArrowLocation(Landroid/view/View;)V
    .registers 4

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    .line 522
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 523
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 524
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateKeyboardLocation(Landroid/view/View;)V
    .registers 8

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 503
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    .line 504
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 505
    iget v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dp210:I

    add-int v3, p1, v2

    iget v4, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dp12:I

    sub-int v5, v0, v4

    if-ge v3, v5, :cond_1f

    .line 506
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_24

    :cond_1f
    sub-int p1, v0, v2

    sub-int/2addr p1, v4

    .line 508
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 510
    :goto_24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateKeyboardLocation: leftMargin: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , totalWidth: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateListener(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 4

    .line 704
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_9

    .line 705
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 707
    :cond_9
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 708
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method private updatePopLocation(Landroid/view/View;)V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    if-eq v0, p1, :cond_d

    .line 309
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 310
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->addRevert()V

    .line 312
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 314
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->updateArrowLocation(Landroid/view/View;)V

    .line 315
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->updateKeyboardLocation(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .registers 6

    .line 616
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 617
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

    .line 618
    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    .line 619
    iput-object p4, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->arrow:Landroid/widget/ImageView;

    .line 620
    iput-object p5, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clRoot:Landroid/widget/FrameLayout;

    .line 621
    invoke-interface {p2}, Lcom/codemao/creativecenter/view/LocalBcmView;->getSideBarVm()Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    .line 623
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->isLandModel:Landroidx/databinding/ObservableField;

    new-instance p2, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$2;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$2;-><init>(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V

    invoke-virtual {p1, p2}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 630
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->refreshStatus()V

    .line 631
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    new-instance p2, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$3;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$3;-><init>(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V

    invoke-virtual {p1, p2}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public cancelAllDashBtnSelected()V
    .registers 2

    .line 897
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 898
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideRotate(Landroid/view/View;)V

    .line 900
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 901
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideScale(Landroid/view/View;)V

    .line 903
    :cond_1a
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 904
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideX(Landroid/view/View;)V

    .line 906
    :cond_27
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 907
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideX(Landroid/view/View;)V

    :cond_34
    return-void
.end method

.method public changeCurrentSelectActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 4

    .line 655
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->updateListener(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 656
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isLandscapeMode:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->landscapeInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;

    if-eqz v0, :cond_14

    .line 657
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->setActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 658
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->landscapeInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    goto :goto_20

    .line 659
    :cond_14
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->portraitInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;

    if-eqz v0, :cond_20

    .line 660
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->setActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 661
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->portraitInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 663
    :cond_20
    :goto_20
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->notifyLlFuncVisible()V

    .line 664
    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz p1, :cond_3a

    .line 665
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    const-wide/high16 v0, 0x4059000000000000L  # 100.0

    invoke-static {p1, v0, v1}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindScale(Landroid/widget/TextView;D)V

    .line 666
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_45

    .line 668
    :cond_3a
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :goto_45
    return-void
.end method

.method public changeModel(I)V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->setCurrentModel(I)V

    .line 199
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->rebuildLayout()V

    return-void
.end method

.method public changeStatus(Landroid/view/View;)Z
    .registers 5

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 369
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dismissPop()V

    goto :goto_d

    .line 371
    :cond_a
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->updatePopLocation(Landroid/view/View;)V

    .line 375
    :goto_d
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    .line 376
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastString:Ljava/lang/String;

    .line 379
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    xor-int/lit8 v1, v0, 0x1

    .line 382
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    return v0
.end method

.method public clickCenterP(Landroid/view/View;)V
    .registers 11

    .line 207
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    const/4 p1, 0x3

    :goto_d
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeModel(I)V

    .line 209
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrentActorId()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v2, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActorById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    if-nez v2, :cond_4a

    .line 211
    :cond_29
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    .line 212
    iget-boolean v2, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v2, :cond_3d

    .line 213
    invoke-virtual {p0, v3}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeModel(I)V

    return-void

    .line 216
    :cond_3d
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrentActorId(Ljava/lang/String;)V

    .line 219
    :cond_4a
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v2, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActorById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    .line 222
    :try_start_50
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-nez v8, :cond_76

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v4
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_72} :catch_78

    cmpl-double v2, v4, v6

    if-eqz v2, :cond_7c

    :cond_76
    const/4 v2, 0x1

    goto :goto_7d

    :catch_78
    move-exception v2

    .line 225
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7c
    const/4 v2, 0x0

    .line 227
    :goto_7d
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->updateListener(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 228
    invoke-virtual {p1, v2}, Lcom/codemao/creativestore/bean/ActorVO;->setCan_reset(Z)V

    .line 230
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result p1

    const/4 v2, 0x0

    const-string/jumbo v4, "舞台编辑-全屏"

    if-ne p1, v0, :cond_9f

    .line 231
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v5, "舞台全屏-中心点开"

    invoke-virtual {p1, v4, v5, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->showActorPivotEdit()V

    goto :goto_ae

    .line 234
    :cond_9f
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v5, "舞台全屏-中心点关"

    invoke-virtual {p1, v4, v5, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 235
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideActorPivotEdit()V

    .line 237
    :goto_ae
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPSelected()Landroidx/databinding/ObservableField;

    move-result-object p1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v2

    if-ne v2, v0, :cond_bd

    const/4 v1, 0x1

    :cond_bd
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 238
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->hideCutActorView()V

    return-void
.end method

.method public clickGuideRotate(Landroid/view/View;)V
    .registers 5

    .line 323
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeStatus(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 324
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "舞台编辑-全屏"

    const-string/jumbo v2, "舞台全屏-角度"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 325
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetRotateText:Z

    .line 326
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->changeRotateStatus()V

    :cond_1c
    return-void
.end method

.method public clickGuideScale(Landroid/view/View;)V
    .registers 5

    .line 336
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeStatus(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 337
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "舞台编辑-全屏"

    const-string/jumbo v2, "舞台全屏-角色大小"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 338
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetScaleText:Z

    .line 339
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->changeScaleStatus()V

    :cond_1c
    return-void
.end method

.method public clickGuideX(Landroid/view/View;)V
    .registers 5

    .line 347
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeStatus(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    .line 348
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranXText:Z

    .line 349
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "舞台编辑-全屏"

    const-string/jumbo v2, "舞台全屏-x坐标"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 351
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->changeXtransetStatus()V

    :cond_1c
    return-void
.end method

.method public clickGuideY(Landroid/view/View;)V
    .registers 5

    .line 359
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeStatus(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 360
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "舞台编辑-全屏"

    const-string/jumbo v2, "舞台全屏-y坐标"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 361
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranyText:Z

    .line 362
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ckdv:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->changeYtransetStatus()V

    :cond_1c
    return-void
.end method

.method public clickGuides(Landroid/view/View;)V
    .registers 7

    .line 257
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result p1

    const/4 v0, 0x0

    const-string/jumbo v1, "舞台编辑-全屏"

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result p1

    if-ne p1, v2, :cond_17

    goto :goto_31

    .line 262
    :cond_17
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->hideCutActorView()V

    .line 263
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v4, "舞台全屏-网格关"

    invoke-virtual {p1, v1, v4, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dismissPop()V

    .line 265
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isNoActors()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeModel(I)V

    goto :goto_43

    .line 258
    :cond_31
    :goto_31
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v4, "舞台全屏-网格开"

    invoke-virtual {p1, v1, v4, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 259
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->refreshCutActorView()V

    .line 260
    invoke-virtual {p0, v3}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeModel(I)V

    .line 267
    :goto_43
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->toggleEditModel(Z)V

    .line 268
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridSelected()Landroidx/databinding/ObservableField;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v0

    if-ne v0, v3, :cond_63

    goto :goto_64

    :cond_63
    const/4 v2, 0x0

    :goto_64
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public clickOritation()V
    .registers 5

    .line 245
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1f

    .line 246
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "舞台编辑-全屏"

    const-string/jumbo v3, "舞台全屏-退出"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2c

    .line 248
    :cond_1f
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "运行状态-全屏"

    const-string/jumbo v3, "全屏运行-退出"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 250
    :goto_2c
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/LocalBcmView;->changeScreenOrientation()V

    return-void
.end method

.method public clickRevert(Landroid/view/View;)V
    .registers 3

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 301
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertSelected()Landroidx/databinding/ObservableField;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 302
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->resetCenter()V

    :cond_16
    return-void
.end method

.method public clickRun(Landroid/view/View;)V
    .registers 5

    .line 275
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_19

    .line 276
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideActorPivotEdit()V

    .line 277
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPSelected()Landroidx/databinding/ObservableField;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 279
    :cond_19
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_38

    .line 280
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v1, "舞台编辑-全屏"

    const-string/jumbo v2, "舞台全屏-运行"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_45

    .line 282
    :cond_38
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v1, "运行状态-全屏"

    const-string/jumbo v2, "全屏运行-停止"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 284
    :goto_45
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->sideBarVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/SidebarVM;->runOrStop()V

    return-void
.end method

.method public clickUpload(Landroid/view/View;)V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->bcmActivity:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->clickBottomUpload(Landroid/view/View;)V

    return-void
.end method

.method public getCurrentDegress()I
    .registers 4

    .line 877
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 878
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0x5a

    return v0

    .line 881
    :cond_13
    sget-object v1, Lcom/codemao/creativestore/bean/RoleNumBean;->degress:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLlFunc()Landroid/widget/LinearLayout;
    .registers 2

    .line 912
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public isInCenterPButtonBounds(FF)Z
    .registers 4

    .line 930
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2e

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivCenterP:Landroid/widget/ImageView;

    .line 931
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2e

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivCenterP:Landroid/widget/ImageView;

    .line 932
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_2e

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivCenterP:Landroid/widget/ImageView;

    .line 933
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method

.method public isInLlFunc(FF)Z
    .registers 4

    .line 916
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2e

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    .line 917
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2e

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    .line 918
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_2e

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    .line 919
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method

.method public isInOrientationButtonBounds(FF)Z
    .registers 4

    .line 937
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2e

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivOritation:Landroid/widget/ImageView;

    .line 938
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2e

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivOritation:Landroid/widget/ImageView;

    .line 939
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_2e

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivOritation:Landroid/widget/ImageView;

    .line 940
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method

.method public isInRevertButtonBounds(FF)Z
    .registers 4

    .line 923
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2e

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivRevert:Landroid/widget/ImageView;

    .line 924
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2e

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivRevert:Landroid/widget/ImageView;

    .line 925
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_2e

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivRevert:Landroid/widget/ImageView;

    .line 926
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method

.method public notifyActorRemove()V
    .registers 2

    .line 888
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeModel(I)V

    return-void
.end method

.method public onClickDel()V
    .registers 4

    .line 820
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    return-void

    .line 823
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    if-nez v0, :cond_15

    .line 824
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dismissPop()V

    return-void

    .line 828
    :cond_15
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    if-ne v0, v1, :cond_64

    .line 829
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetRotateText:Z

    if-eqz v0, :cond_3c

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/codemao/creativestore/bean/RoleNumBean;->degress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_113

    .line 833
    :cond_3c
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseDelRotateValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    sget-object v1, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 835
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 837
    :cond_5d
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_113

    .line 841
    :cond_64
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    if-ne v0, v1, :cond_9c

    .line 842
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetScaleText:Z

    if-eqz v0, :cond_8b

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/codemao/creativestore/bean/RoleNumBean;->percent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_113

    .line 846
    :cond_8b
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseDelScaleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_113

    .line 848
    :cond_9c
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    if-ne v0, v1, :cond_d8

    .line 850
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranXText:Z

    if-eqz v0, :cond_b1

    .line 851
    sget-object v0, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_113

    .line 854
    :cond_b1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseDelTransetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d2

    sget-object v1, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 856
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 858
    :cond_d2
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_113

    .line 860
    :cond_d8
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    if-ne v0, v1, :cond_113

    .line 861
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranyText:Z

    if-eqz v0, :cond_ed

    .line 862
    sget-object v0, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_113

    .line 865
    :cond_ed
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseDelTransetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10e

    sget-object v1, Lcom/codemao/creativestore/bean/RoleNumBean;->zero:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 867
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 869
    :cond_10e
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    :cond_113
    :goto_113
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->sycWeb()V

    return-void
.end method

.method public onClickMinus()V
    .registers 5

    .line 799
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    return-void

    .line 802
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    if-nez v0, :cond_15

    .line 803
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dismissPop()V

    return-void

    .line 807
    :cond_15
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 811
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    xor-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 813
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseMinusValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->sycWeb()V

    return-void
.end method

.method public onClickNum(I)V
    .registers 7

    .line 725
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    return-void

    .line 728
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->lastGuideView:Landroid/widget/TextView;

    if-nez v0, :cond_15

    .line 729
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dismissPop()V

    return-void

    .line 734
    :cond_15
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_48

    .line 735
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetRotateText:Z

    if-eqz v0, :cond_25

    if-nez p1, :cond_25

    .line 736
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 737
    :cond_25
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-boolean v4, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetRotateText:Z

    invoke-static {v1, p1, v3, v4}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseAddRotateValue(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iput-boolean v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetRotateText:Z

    goto/16 :goto_da

    .line 739
    :cond_48
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    if-ne v0, v1, :cond_79

    .line 740
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetScaleText:Z

    if-eqz v0, :cond_57

    if-nez p1, :cond_57

    .line 741
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 743
    :cond_57
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-boolean v4, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetScaleText:Z

    invoke-static {v1, p1, v3, v4}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseAddScaleValue(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iput-boolean v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetScaleText:Z

    goto :goto_da

    .line 746
    :cond_79
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    if-ne v0, v1, :cond_aa

    .line 748
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranXText:Z

    if-eqz v0, :cond_88

    if-nez p1, :cond_88

    .line 749
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 751
    :cond_88
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-boolean v4, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranXText:Z

    invoke-static {v1, p1, v3, v4}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseAddTransetValue(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iput-boolean v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranXText:Z

    goto :goto_da

    .line 756
    :cond_aa
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    if-ne v0, v1, :cond_da

    .line 757
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranyText:Z

    if-eqz v0, :cond_b9

    if-nez p1, :cond_b9

    .line 758
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 760
    :cond_b9
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-boolean v4, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranyText:Z

    invoke-static {v1, p1, v3, v4}, Lcom/codemao/creativestore/bean/RoleNumBean;->parseAddTransetValue(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iput-boolean v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetTranyText:Z

    .line 764
    :cond_da
    :goto_da
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->sycWeb()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onRotation(IZ)V
    .registers 6

    .line 714
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-nez p2, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_d

    return-void

    :cond_d
    const/4 p2, 0x1

    .line 717
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->resetRotateText:Z

    .line 718
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codemao/creativestore/bean/RoleNumBean;->degress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v0

    int-to-double v1, p1

    invoke-virtual {p2, v0, v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorRotation(Ljava/lang/String;D)V

    return-void
.end method

.method public ready(Z)V
    .registers 8

    .line 163
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->showUpload:Z

    .line 164
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_85

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_16

    goto/16 :goto_85

    .line 166
    :cond_16
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_29

    .line 167
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 168
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->rebuildLayout()V

    return-void

    .line 172
    :cond_29
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 174
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 175
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_43

    .line 176
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->setCurrentModel(I)V

    goto :goto_82

    :cond_43
    const/4 v0, 0x0

    if-eqz p1, :cond_6e

    .line 179
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideEnable()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 180
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_53
    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 181
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v5, v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActorById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    .line 182
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->isHidden_in_edit()Z

    move-result v4

    if-eqz v4, :cond_53

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_6e
    const/4 v3, 0x0

    :cond_6f
    if-eqz p1, :cond_7d

    .line 187
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ne v3, p1, :cond_7d

    .line 188
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->setCurrentModel(I)V

    goto :goto_82

    .line 190
    :cond_7d
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->setCurrentModel(I)V

    .line 194
    :cond_82
    :goto_82
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->rebuildLayout()V

    :cond_85
    :goto_85
    return-void
.end method

.method public setBindingView(Z)V
    .registers 4

    .line 112
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 113
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isLandscapeMode:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_60

    .line 115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_view_fullscreen_left:I

    invoke-static {p1, v1, p0, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->landscapeInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;

    .line 116
    invoke-virtual {p1, p0}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->setSelf(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V

    .line 117
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->landscapeInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->setIsPadMode(Ljava/lang/Boolean;)V

    .line 118
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->landscapeInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->landscapeInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;

    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->run:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivCenterP:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivOritation:Landroid/widget/ImageView;

    .line 123
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivRevert:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    .line 125
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    .line 126
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    .line 127
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    .line 128
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    .line 129
    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivUpload:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivUpload:Landroid/widget/ImageView;

    goto :goto_b7

    .line 131
    :cond_60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_view_fullscreen_bottom:I

    invoke-static {p1, v1, p0, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->portraitInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;

    .line 132
    invoke-virtual {p1, p0}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->setSelf(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V

    .line 133
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->portraitInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->setIsPadMode(Ljava/lang/Boolean;)V

    .line 134
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->portraitInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 135
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->portraitInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;

    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->run:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivCenterP:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivUpload:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivOritation:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivRevert:Landroid/widget/ImageView;

    .line 141
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvRotate:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvRotate:Landroid/widget/TextView;

    .line 142
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvScale:Landroid/widget/TextView;

    .line 143
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranX:Landroid/widget/TextView;

    .line 144
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->tvTranY:Landroid/widget/TextView;

    .line 145
    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->llFunc:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->llFunc:Landroid/widget/LinearLayout;

    .line 147
    :goto_b7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41400000  # 12.0f

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dp12:I

    .line 148
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x43520000  # 210.0f

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dp210:I

    return-void
.end method

.method public setShowUpload(Z)V
    .registers 2

    .line 605
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->showUpload:Z

    return-void
.end method

.method public setStageDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->landscapeInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;

    if-eqz v0, :cond_7

    .line 153
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->setDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->portraitInflate:Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;

    if-eqz v0, :cond_e

    .line 156
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->setDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V

    .line 158
    :cond_e
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->dashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    return-void
.end method

.method public showUploadButton(Z)V
    .registers 3

    .line 609
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->showUpload:Z

    .line 610
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ivUpload:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    .line 611
    :goto_c
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    return-void
.end method
