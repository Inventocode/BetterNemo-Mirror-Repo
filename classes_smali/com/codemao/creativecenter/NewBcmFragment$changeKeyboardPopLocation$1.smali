.class final Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->changeKeyboardPopLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 1535
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 1536
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    goto :goto_12

    :cond_11
    move-object v0, v7

    :goto_12
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1537
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 1539
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getViewContext()Landroid/content/Context;

    move-result-object v0

    .line 1540
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    const/high16 v2, 0x42900000  # 72.0f

    if-eqz v1, :cond_30

    const/high16 v1, 0x42900000  # 72.0f

    goto :goto_32

    :cond_30
    const/high16 v1, 0x42800000  # 64.0f

    .line 1538
    :goto_32
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 1543
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->getViewContext()Landroid/content/Context;

    move-result-object v1

    .line 1544
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v3, :cond_45

    goto :goto_47

    :cond_45
    const/high16 v2, 0x42480000  # 50.0f

    .line 1542
    :goto_47
    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v8

    .line 1547
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->getViewContext()Landroid/content/Context;

    move-result-object v1

    .line 1548
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v2, :cond_5c

    const/high16 v2, 0x41800000  # 16.0f

    goto :goto_5e

    :cond_5c
    const/high16 v2, 0x41300000  # 11.0f

    .line 1546
    :goto_5e
    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v9

    .line 1550
    sget v1, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    .line 1551
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v2}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v2

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->getLlFunc()Landroid/widget/LinearLayout;

    move-result-object v2

    goto :goto_72

    :cond_71
    move-object v2, v7

    :goto_72
    if-eqz v2, :cond_9e

    .line 1552
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_86

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    if-eqz v1, :cond_86

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    goto :goto_87

    :cond_86
    const/4 v1, 0x0

    :goto_87
    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->getLlFunc()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    :cond_9a
    sub-int/2addr v1, v2

    .line 1553
    div-int/lit8 v1, v1, 0x2

    goto :goto_b9

    .line 1556
    :cond_9e
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/NewBcmFragment;->getViewContext()Landroid/content/Context;

    move-result-object v2

    .line 1557
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v3, :cond_af

    const/high16 v3, 0x44070000  # 540.0f

    goto :goto_b1

    :cond_af
    const/high16 v3, 0x43ac0000  # 344.0f

    .line 1555
    :goto_b1
    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    .line 1559
    div-int/lit8 v1, v1, 0x2

    :goto_b9
    move v10, v1

    .line 1562
    sget v11, Lcom/codemao/creativecenter/R$id;->cl_keyboard:I

    const/4 v2, 0x1

    .line 1564
    sget v3, Lcom/codemao/creativecenter/R$id;->left_guide_line:I

    const/4 v4, 0x2

    move-object v0, v6

    move v1, v11

    move v5, v10

    .line 1561
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1568
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x4

    const/4 v4, 0x4

    add-int v5, v9, v8

    .line 1575
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_ec

    .line 1584
    :cond_d3
    sget v8, Lcom/codemao/creativecenter/R$id;->cl_keyboard:I

    const/4 v2, 0x1

    .line 1586
    sget v9, Lcom/codemao/creativecenter/R$id;->web_bottom_tools_view:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move v1, v8

    move v3, v9

    .line 1583
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x2

    const/4 v4, 0x2

    .line 1590
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x4

    .line 1600
    sget v3, Lcom/codemao/creativecenter/R$id;->keyboard_guideline:I

    const/4 v4, 0x3

    .line 1597
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1605
    :goto_ec
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_f6

    iget-object v7, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    :cond_f6
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
