.class Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$3;
.super Ljava/lang/Object;
.source "MaterialActorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->bindData(Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bean:Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;)V
    .registers 3

    .line 532
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$3;->val$bean:Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 535
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$3;->val$bean:Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->setDownlaodStatus(I)V

    .line 536
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->startTask()V

    .line 537
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->restartTask()V

    return-void
.end method
