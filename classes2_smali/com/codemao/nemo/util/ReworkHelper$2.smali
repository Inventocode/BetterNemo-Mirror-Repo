.class Lcom/codemao/nemo/util/ReworkHelper$2;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "ReworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/ReworkHelper;->fork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/ForkWorkResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/ReworkHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ReworkHelper;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 p2, 0x0

    .line 125
    sput-boolean p2, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    const-string p2, "40101002"

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 127
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$300(Lcom/codemao/nemo/util/ReworkHelper;)V

    .line 128
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;

    move-result-object p1

    const-string p2, "作品已取消发布"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1c
    const-string p2, "40100002"

    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 132
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$300(Lcom/codemao/nemo/util/ReworkHelper;)V

    .line 133
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;

    move-result-object p1

    const-string p2, "作品已取消开源"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 136
    :cond_35
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1200(Lcom/codemao/nemo/util/ReworkHelper;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    const/4 v0, 0x0

    .line 142
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$1200(Lcom/codemao/nemo/util/ReworkHelper;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/ForkWorkResult;)V
    .registers 6

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$900(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ForkWorkResult;->getFork_times()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;->onSuccess(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$1000(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ForkWorkResult;->getBcm_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setBcm_url(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ForkWorkResult;->getWork_id()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/util/ReworkHelper;->access$1102(Lcom/codemao/nemo/util/ReworkHelper;J)J

    .line 117
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1100(Lcom/codemao/nemo/util/ReworkHelper;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1000(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_61

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$1100(Lcom/codemao/nemo/util/ReworkHelper;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$1000(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "再创作作品ID冲突"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_61
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$2;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$700(Lcom/codemao/nemo/util/ReworkHelper;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 110
    check-cast p1, Lcom/codemao/nemo/bean/ForkWorkResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/util/ReworkHelper$2;->onSuc(Lcom/codemao/nemo/bean/ForkWorkResult;)V

    return-void
.end method
