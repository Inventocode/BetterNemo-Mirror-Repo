.class Lcom/codemao/nemo/adapter/TrendsPublishDelegate$2;
.super Ljava/lang/Object;
.source "TrendsPublishDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/TrendsPublishDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/TrendsPublishDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/TrendsInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/TrendsPublishDelegate;Lcom/codemao/nemo/bean/TrendsInfo;)V
    .registers 3

    .line 78
    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$2;->this$0:Lcom/codemao/nemo/adapter/TrendsPublishDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$2;->val$data:Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "动态页-点击作者头像"

    .line 81
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$2;->this$0:Lcom/codemao/nemo/adapter/TrendsPublishDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/TrendsPublishDelegate;->access$000(Lcom/codemao/nemo/adapter/TrendsPublishDelegate;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$2;->val$data:Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$2;->val$data:Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getUser_id()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$2;->val$data:Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getWork_id()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "动态页"

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
