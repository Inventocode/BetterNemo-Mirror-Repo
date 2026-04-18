.class Lcom/codemao/creativestore/presenter/CreateUtils$14;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->revoke()V
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
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

.field final synthetic val$sceneDelete:Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;)V
    .registers 3

    .line 1964
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$14;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iput-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$14;->val$sceneDelete:Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 5

    .line 1967
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$14;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$14;->val$sceneDelete:Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;->getPostion()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$14;->val$sceneDelete:Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;->getLastPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectScene(IIZZ)V

    .line 1968
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$14;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    .line 1969
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$14;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actorNameList:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_3e
    return-void
.end method
