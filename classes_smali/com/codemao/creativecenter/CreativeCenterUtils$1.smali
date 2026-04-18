.class Lcom/codemao/creativecenter/CreativeCenterUtils$1;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "CreativeCenterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/CreativeCenterUtils;->getBaseMaterialInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Lcom/codemao/creativestore/bean/BaseMaterialInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/CreativeCenterUtils;)V
    .registers 2

    .line 150
    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 161
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->setError(Z)V

    .line 162
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/creativecenter/event/BaseMaterialDownloadErrorEvent;

    invoke-direct {p2}, Lcom/codemao/creativecenter/event/BaseMaterialDownloadErrorEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 167
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->setError(Z)V

    .line 168
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/creativecenter/event/BaseMaterialDownloadErrorEvent;

    invoke-direct {p2}, Lcom/codemao/creativecenter/event/BaseMaterialDownloadErrorEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/creativestore/bean/BaseMaterialInfo;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 155
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->startTask(Lcom/codemao/creativestore/bean/BaseMaterialInfo;)V

    :cond_9
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 150
    check-cast p1, Lcom/codemao/creativestore/bean/BaseMaterialInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/CreativeCenterUtils$1;->onSuccess(Lcom/codemao/creativestore/bean/BaseMaterialInfo;)V

    return-void
.end method
