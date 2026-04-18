.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$11;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 2

    .line 499
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$11;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7

    if-eqz p2, :cond_51

    .line 502
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$11;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$200(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$11;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const-string/jumbo p2, "发布作品页-点击输入标题"

    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$11;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    :cond_51
    return-void
.end method
