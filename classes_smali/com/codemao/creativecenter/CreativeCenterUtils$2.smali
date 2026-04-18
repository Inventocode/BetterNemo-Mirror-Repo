.class Lcom/codemao/creativecenter/CreativeCenterUtils$2;
.super Ljava/lang/Object;
.source "CreativeCenterUtils.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/CreativeCenterUtils;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;)Lcom/codemao/creativecenter/CreativeCenterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/CreativeCenterUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/CreativeCenterUtils;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/codemao/creativecenter/CreativeCenterUtils$2;->this$0:Lcom/codemao/creativecenter/CreativeCenterUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    return-void
.end method

.method public onError(Lcom/codemao/creativecenter/utils/down/MaterialTask;Ljava/lang/Exception;)V
    .registers 3

    .line 207
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/creativecenter/event/ThemeMaterialDownloadErrorEvent;

    invoke-direct {p2}, Lcom/codemao/creativecenter/event/ThemeMaterialDownloadErrorEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
    .registers 3

    .line 202
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSingleTaskCompleted(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils$2;->this$0:Lcom/codemao/creativecenter/CreativeCenterUtils;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->access$100(Lcom/codemao/creativecenter/CreativeCenterUtils;Lcom/codemao/creativecenter/utils/down/MaterialTask;)V

    return-void
.end method

.method public onStart(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
    .registers 3

    .line 191
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/event/ThemeMaterialDownloadStartEvent;

    invoke-direct {v0}, Lcom/codemao/creativecenter/event/ThemeMaterialDownloadStartEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
