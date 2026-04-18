.class Lcom/codemao/nemo/fragment/WorkDetailFragment$5;
.super Ljava/lang/Object;
.source "WorkDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkDetailFragment;->setData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V
    .registers 2

    .line 376
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$400(Lcom/codemao/nemo/fragment/WorkDetailFragment;ZLjava/lang/String;)V

    return-void
.end method
