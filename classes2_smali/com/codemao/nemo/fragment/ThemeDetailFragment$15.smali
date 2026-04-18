.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;
.super Ljava/lang/Object;
.source "ThemeDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V
    .registers 2

    .line 439
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 442
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$1000(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I

    move-result v0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget v2, v2, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    new-instance v3, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;)V

    const/16 v4, 0xf

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getSubjectDetailList(IIILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method
