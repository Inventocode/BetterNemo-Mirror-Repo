.class Lcom/codemao/creativestore/presenter/CreateUtils$10$1;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils$10;->run()V
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
.field final synthetic this$1:Lcom/codemao/creativestore/presenter/CreateUtils$10;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils$10;)V
    .registers 2

    .line 1651
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadBcmSuccess()V
    .registers 3

    .line 1677
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$10;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1000(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    .line 1678
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$10;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$202(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 1679
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$10;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$700(Lcom/codemao/creativestore/presenter/CreateUtils;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$10$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$10$1$1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$10$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 4

    .line 1654
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_23

    .line 1655
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1656
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils$10$1;->loadBcmSuccess()V

    goto :goto_60

    .line 1658
    :cond_10
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$10;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TYPE_LOAD_BCM 返回 false"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/codemao/creativestore/view/NewBcmView;->onLoadBcmError(Ljava/lang/Exception;)V

    goto :goto_60

    .line 1662
    :cond_23
    :try_start_23
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1663
    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/codemao/creativestore/bean/LoadBcmResult;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/LoadBcmResult;

    .line 1664
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/LoadBcmResult;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1665
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils$10$1;->loadBcmSuccess()V

    goto :goto_60

    .line 1667
    :cond_3c
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$10;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/LoadBcmResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/codemao/creativestore/view/NewBcmView;->onLoadBcmError(Ljava/lang/Exception;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_50} :catch_51

    goto :goto_60

    :catch_51
    move-exception p1

    .line 1670
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1671
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$10;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->onLoadBcmError(Ljava/lang/Exception;)V

    :goto_60
    return-void
.end method
