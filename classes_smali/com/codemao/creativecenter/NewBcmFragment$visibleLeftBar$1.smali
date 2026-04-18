.class final Lcom/codemao/creativecenter/NewBcmFragment$visibleLeftBar$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->visibleLeftBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $visible:Z

.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;Z)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$visibleLeftBar$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$visibleLeftBar$1;->$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 3413
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 3414
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$visibleLeftBar$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    goto :goto_12

    :cond_11
    move-object v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3415
    sget v1, Lcom/codemao/creativecenter/R$id;->left:I

    iget-boolean v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$visibleLeftBar$1;->$visible:Z

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    goto :goto_22

    :cond_20
    const/16 v3, 0x8

    :goto_22
    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 3417
    sget v1, Lcom/codemao/creativecenter/R$id;->bluetooth_close_layout:I

    .line 3418
    iget-boolean v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$visibleLeftBar$1;->$visible:Z

    if-eqz v3, :cond_2d

    const/16 v4, 0x8

    .line 3416
    :cond_2d
    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 3420
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$visibleLeftBar$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    :cond_3a
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
