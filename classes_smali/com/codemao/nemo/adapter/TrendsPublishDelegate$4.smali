.class Lcom/codemao/nemo/adapter/TrendsPublishDelegate$4;
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

    .line 112
    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$4;->this$0:Lcom/codemao/nemo/adapter/TrendsPublishDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$4;->val$data:Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "动态页-点击用户徽章"

    .line 115
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$4;->val$data:Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getAuthor_level()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$4;->this$0:Lcom/codemao/nemo/adapter/TrendsPublishDelegate;

    invoke-static {v1}, Lcom/codemao/nemo/adapter/TrendsPublishDelegate;->access$000(Lcom/codemao/nemo/adapter/TrendsPublishDelegate;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->showLevelDetail(ILandroid/content/Context;)V

    return-void
.end method
