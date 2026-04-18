.class Lcom/codemao/creativestore/presenter/CreateUtils$11;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->checkMaterial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 2

    .line 1725
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$11;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1728
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$11;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->onLoadCloudBaseMaterialError()V

    return-void
.end method
