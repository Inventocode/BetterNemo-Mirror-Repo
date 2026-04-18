.class Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$2;
.super Ljava/lang/Object;
.source "LatestOtherWorkDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;Lcom/codemao/nemo/bean/LatestWorkInfo;)V
    .registers 3

    .line 98
    iput-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$2;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 102
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->access$100(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/LatestWorkDetailListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$2;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "作品"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$2;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherType()I

    move-result v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->access$100(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
