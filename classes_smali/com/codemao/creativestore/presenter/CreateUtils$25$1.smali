.class Lcom/codemao/creativestore/presenter/CreateUtils$25$1;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/codemao/creativestore/dsbridge/OnReturnValue<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativestore/presenter/CreateUtils$25;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils$25;)V
    .registers 2

    .line 3251
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$25$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 4

    .line 3255
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$25$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$25;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$25;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v1

    invoke-interface {v1}, Lcom/codemao/creativestore/view/NewBcmView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/covercache/covercache.cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_37

    :catch_29
    move-exception p1

    .line 3257
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    const-string/jumbo v1, "缓存画板所需截图异常"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3258
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_37
    return-void
.end method
