.class public final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "VCSAssistInfoPop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->download(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Lcom/codemao/creativecenter/vcs/bean/RecoverInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ")V"
        }
    .end annotation

    .line 369
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 403
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMRecoverProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string/jumbo p2, "恢复最初作品版本失败"

    const-string/jumbo v0, "重试"

    invoke-virtual {p1, p2, v0}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 407
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/creativecenter/vcs/bean/RecoverInfoBean;)V
    .registers 10

    if-nez p1, :cond_14

    .line 372
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMRecoverProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string/jumbo v0, "恢复最初作品版本失败"

    const-string/jumbo v1, "重试"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void

    .line 375
    :cond_14
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/RecoverInfoBean;->getWorkUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 382
    iget-object v5, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v6, 0x0

    .line 384
    new-instance v7, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1$onSuccess$1;

    invoke-direct {v7, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1$onSuccess$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;)V

    const-string v4, ""

    .line 377
    invoke-static/range {v1 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 369
    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/RecoverInfoBean;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;->onSuccess(Lcom/codemao/creativecenter/vcs/bean/RecoverInfoBean;)V

    return-void
.end method
