.class Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$2;
.super Ljava/lang/Object;
.source "LatestOtherWorkItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;Lcom/codemao/nemo/bean/LatestWorkInfo;)V
    .registers 3

    .line 108
    iput-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$2;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$2;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 112
    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$2;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->access$100(Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;)Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$2;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$2;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getUser_id()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$2;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "最新页"

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
