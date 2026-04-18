.class Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;
.super Ljava/lang/Object;
.source "JSDataStore.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->addNewScene(I)V
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
.field final synthetic this$0:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

.field final synthetic val$position:I

.field final synthetic val$sceneVO:Lcom/codemao/creativestore/bean/SceneVO;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/jsbridge/model/JSDataStore;ILcom/codemao/creativestore/bean/SceneVO;)V
    .registers 4

    .line 435
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;->this$0:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iput p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;->val$position:I

    iput-object p3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;->val$sceneVO:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 7

    .line 438
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;->this$0:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;->val$position:I

    iget-object v1, p1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectScene(IIZZ)V

    .line 439
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;->this$0:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-static {p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->access$000(Lcom/codemao/creativestore/jsbridge/model/JSDataStore;)Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    new-instance v1, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;

    iget v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;->val$position:I

    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;->this$0:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v4, v4, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;->val$sceneVO:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-direct {v1, v3, v4, v2}, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;-><init>(IILcom/codemao/creativestore/bean/SceneVO;)V

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    return-void
.end method
