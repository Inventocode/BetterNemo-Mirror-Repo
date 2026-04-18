.class Lcom/codemao/creativestore/presenter/CreateUtils$12$2;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils$12;->onNext(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativestore/presenter/CreateUtils$12;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils$12;)V
    .registers 2

    .line 1753
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12$2;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1756
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12$2;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$12;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$12;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$12$2;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$12;

    iget v2, v1, Lcom/codemao/creativestore/presenter/CreateUtils$12;->done:I

    mul-int/lit8 v2, v2, 0x64

    iget v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$12;->total:I

    div-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/codemao/creativestore/view/NewBcmView;->onLoadCloudBaseMaterialProgress(I)V

    return-void
.end method
