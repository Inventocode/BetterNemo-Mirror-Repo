.class Lcom/codemao/creativestore/presenter/CreateUtils$7$1;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativestore/presenter/CreateUtils$7;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils$7;)V
    .registers 2

    .line 1071
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$7$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1074
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$7$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$7;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$7;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$7$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$7;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$7;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeBgStyle(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$7$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$7;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$7;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->updateUserList()V

    return-void
.end method
