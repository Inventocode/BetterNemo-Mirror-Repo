.class final Lcom/codemao/creativecenter/NewBcmFragment$initView$3;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->initView()V
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

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$initView$3;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$initView$3;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_14

    sget v2, Lcom/codemao/creativecenter/R$id;->tv_add_role:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, v1

    .line 399
    :goto_15
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment$initView$3;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v2}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getFlRevokeRedo$p(Lcom/codemao/creativecenter/NewBcmFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$initView$3;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v4

    if-eqz v4, :cond_35

    iget-object v4, v4, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->leftGuideLine:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_36

    :cond_35
    const/4 v4, 0x0

    :goto_36
    sub-int/2addr v2, v4

    if-eqz v0, :cond_3d

    .line 400
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    :cond_3d
    sub-int/2addr v2, v3

    if-lez v2, :cond_64

    const/high16 v3, 0x41c00000  # 24.0f

    .line 402
    invoke-static {v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v3

    add-int/2addr v2, v3

    if-eqz v0, :cond_4d

    .line 403
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :cond_4d
    if-eqz v1, :cond_58

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 404
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 405
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_64

    .line 403
    :cond_58
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_60

    :catch_60
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_64
    :goto_64
    return-void
.end method
