.class Lcom/codemao/creativestore/presenter/CreateUtils$15;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->redo()V
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

.field final synthetic val$sceneAdd:Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;)V
    .registers 3

    .line 2148
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$15;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iput-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$15;->val$sceneAdd:Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 5

    .line 2151
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$15;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$15;->val$sceneAdd:Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->getLastPosition()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$15;->val$sceneAdd:Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->getPostion()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectScene(IIZZ)V

    return-void
.end method
