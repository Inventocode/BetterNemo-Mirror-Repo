.class Lcom/codemao/creativestore/presenter/CreateUtils$12;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->checkMaterial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field done:I

.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

.field total:I


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 2

    .line 1733
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1100(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12;->total:I

    const/4 p1, 0x0

    .line 1736
    iput p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12;->done:I

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 1777
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$700(Lcom/codemao/creativestore/presenter/CreateUtils;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$12$4;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$12$4;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Lcom/codemao/creativecenter/utils/down/DownloadFile;Ljava/lang/Exception;)V
    .registers 3

    .line 1766
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$700(Lcom/codemao/creativestore/presenter/CreateUtils;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/codemao/creativestore/presenter/CreateUtils$12$3;

    invoke-direct {p2, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$12$3;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$12;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNext(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V
    .registers 3

    .line 1750
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/DownloadFile;->getProgress()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_20

    .line 1751
    iget p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12;->done:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12;->done:I

    .line 1752
    iget p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12;->total:I

    if-eqz p1, :cond_20

    .line 1753
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$700(Lcom/codemao/creativestore/presenter/CreateUtils;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$12$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$12$2;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$12;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

.method public onStart(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V
    .registers 3

    .line 1740
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$700(Lcom/codemao/creativestore/presenter/CreateUtils;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$12$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$12$1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$12;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
