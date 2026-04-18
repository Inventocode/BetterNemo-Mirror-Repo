.class Lcom/codemao/nemo/fragment/MineFragment$9;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MineFragment;->setDataOffline(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MineFragment;

.field final synthetic val$likes:J


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MineFragment;J)V
    .registers 4

    .line 430
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$9;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    iput-wide p2, p0, Lcom/codemao/nemo/fragment/MineFragment$9;->val$likes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 433
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment$9;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/MineFragment;->praises_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    if-eqz v0, :cond_1d

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/fragment/MineFragment$9;->val$likes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/view/ScrollNumAnimView;->setFinalNum(Ljava/lang/String;Z)V

    :cond_1d
    return-void
.end method
