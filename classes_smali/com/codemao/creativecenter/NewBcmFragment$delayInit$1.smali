.class final Lcom/codemao/creativecenter/NewBcmFragment$delayInit$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->delayInit()V
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

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 624
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_22

    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getSideBarInterface()Lcom/codemao/creativecenter/view/SideBarInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/SideBarInterface;->getWidth()I

    move-result v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    rsub-int/lit8 v0, v0, 0x0

    :goto_22
    if-gtz v0, :cond_4b

    .line 626
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    .line 628
    sget v1, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    if-nez v1, :cond_38

    .line 629
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->getViewContext()Landroid/content/Context;

    move-result-object v1

    .line 628
    invoke-static {v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 631
    :cond_38
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/NewBcmFragment;->getViewContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_43

    const/high16 v0, 0x42a80000  # 84.0f

    goto :goto_45

    :cond_43
    const/high16 v0, 0x42780000  # 62.0f

    :goto_45
    invoke-static {v2, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sub-int v0, v1, v0

    .line 633
    :cond_4b
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flBlockActor:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    if-eqz v1, :cond_5c

    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v1, v0, v2}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->init(ILcom/codemao/creativecenter/view/LocalBcmView;)V

    :cond_5c
    return-void
.end method
