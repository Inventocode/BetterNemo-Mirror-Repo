.class Lcom/codemao/creativestore/presenter/CreateUtils$7;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->initLocalStyleImg()V
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

    .line 1067
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$7;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1070
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$7;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$100(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->addLocalImgs(Ljava/util/List;)V

    .line 1071
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$7;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$700(Lcom/codemao/creativestore/presenter/CreateUtils;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$7$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$7$1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
