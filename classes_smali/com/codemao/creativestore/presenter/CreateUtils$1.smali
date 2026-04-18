.class Lcom/codemao/creativestore/presenter/CreateUtils$1;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;
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

    .line 239
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actorPivotCanReset(Ljava/lang/String;Z)V
    .registers 4

    .line 622
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getActorById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    .line 623
    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/ActorVO;->setCan_reset(Z)V

    return-void
.end method

.method public addBroadCast(Lcom/codemao/creativestore/bean/AddBroadcastMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddBroadcastMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->addBroadcaset(Lcom/codemao/creativestore/bean/AddBroadcastMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public addCloudVarible(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->addCloudVarible(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public addList(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->addList(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public addMidi(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/record/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$300(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3, p1}, Lcom/codemao/creativestore/view/NewBcmView;->addMidi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public addProcedureParmas(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/RenameVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->renameVariable(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public addVarible(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->addVarible(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public completeBlockGuide(Ljava/lang/String;)V
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->completeBlockGuide(Ljava/lang/String;)V

    return-void
.end method

.method public deleteActors(Lcom/codemao/creativestore/bean/ActorDeleteMsg;)V
    .registers 8

    .line 495
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    const-string/jumbo v1, "角色页面"

    const-string/jumbo v2, "删除角色成功"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 497
    :goto_15
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorDeleteMsg;->getActor_ids()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_65

    .line 498
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorDeleteMsg;->getActor_ids()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 499
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorDeleteMsg;->getActor_ids()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 503
    :cond_65
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativestore/view/NewBcmView;->isStageFullScreen()Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 504
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object p1

    const-string/jumbo v2, "舞台编辑-全屏"

    const-string/jumbo v4, "舞台全屏-快捷角色删除"

    invoke-virtual {p1, v2, v4, v3}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_8c

    .line 506
    :cond_7f
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object p1

    const-string/jumbo v2, "舞台编辑-横屏"

    const-string/jumbo v4, "舞台-快捷角色删除"

    invoke-virtual {p1, v2, v4, v3}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 508
    :goto_8c
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->deleteActorInCache(Ljava/util/List;ZZ)V

    return-void
.end method

.method public editBlockComment(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AnnotateBlockMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->annotateBlock(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public editBlockFoldName(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AnnotateBlockMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->editBlockFoldName(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public editProcedureName(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/RenameVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->renameVariable(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public editText(Lcom/codemao/creativestore/bean/CreateEditTextMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/CreateEditTextMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->showContentEdit(Lcom/codemao/creativestore/bean/CreateEditTextMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public fullScreen()V
    .registers 2

    .line 670
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->fullScreen()V

    return-void
.end method

.method public getRuntimeVariableMsg(Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;)V
    .registers 3

    .line 416
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->getRuntimeVariableMsg(Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;)V

    return-void
.end method

.method public gotoAPPSetting()V
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 291
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->goSetting(Landroidx/fragment/app/FragmentActivity;)V

    :cond_11
    return-void
.end method

.method public gotoBluetoothSetting()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/16 v2, 0x1c20

    .line 274
    invoke-virtual {v1, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1a
    return-void
.end method

.method public gotoLocationSetting()V
    .registers 4

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/16 v2, 0x1bbc

    .line 283
    invoke-virtual {v1, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1a
    return-void
.end method

.method public loadBcmDone()V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$100(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$100(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 304
    :cond_14
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$202(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 305
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->loadBcmDone()V

    :cond_23
    return-void
.end method

.method public login()V
    .registers 5

    .line 390
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    const-string v1, ""

    const-string/jumbo v2, "创作页-点击前往登录（云变量）"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 391
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->cloudClickLogin()V

    return-void
.end method

.method public newComerModeFinish()V
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->newComerBlockGuideFinish()V

    return-void
.end method

.method public onBlockError(Lcom/codemao/creativestore/bean/BlockErrorMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/BlockErrorMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->showBlcokErr(Lcom/codemao/creativestore/bean/BlockErrorMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onRecievePluginAsyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;Lcom/codemao/creativestore/jsbridge/listener/PluginMsgResultListener;)V
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->onRecievePluginAsyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;Lcom/codemao/creativestore/jsbridge/listener/PluginMsgResultListener;)V

    return-void
.end method

.method public onRecievePluginSyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;)V
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->onRecievePluginSyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;)V

    return-void
.end method

.method public onSelectEntity(Lcom/codemao/creativestore/bean/SelectEntityMsg;)V
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectEntity(Lcom/codemao/creativestore/bean/SelectEntityMsg;)V

    return-void
.end method

.method public openAudioPanel(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->showSelectSoundPop(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public openStylePanel(ILcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-interface {v0, p1, v1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->openStylePanel(ILcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public playSound(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 371
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativestore/AudioPlayer;->playMostMusic(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public playSoundWithId(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/SoundVO;

    if-eqz v0, :cond_61

    .line 378
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getMaterialAudioPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 380
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/codemao/creativestore/AudioPlayer;->playMostMusic(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto :goto_61

    .line 382
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->recordPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/record/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 383
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativestore/AudioPlayer;->playMostMusic(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    :cond_61
    :goto_61
    return-void
.end method

.method public renameVariableMsg(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/RenameVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->renameVariable(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public rootBlockVisible(Z)V
    .registers 5

    .line 446
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    const v1, 0xe89cc

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/codemao/creativestore/view/NewBcmView;->onCreateViewLevelVisibleChange(IIZ)V

    return-void
.end method

.method public selectActor(Lcom/codemao/creativestore/bean/ActorSelectMsg;)V
    .registers 4

    .line 612
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 613
    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorSelectMsg;->getActor_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x2

    .line 614
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge v0, p1, :cond_49

    .line 615
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    .line 616
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V

    :cond_49
    return-void
.end method

.method public selectExtensionsCategories(Ljava/util/List;Ljava/util/List;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/creativestore/view/NewBcmView;->selectExtensionsCategories(Ljava/util/List;Ljava/util/List;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public setActorCenterPoint(Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;)V
    .registers 3

    .line 628
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->changeActorCurStyleCenter(Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;)V

    return-void
.end method

.method public setActorProperty(Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;)Ljava/lang/String;
    .registers 16

    .line 513
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->getActor_id()Ljava/lang/String;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    const-string v1, ""

    if-nez v0, :cond_21

    return-object v1

    .line 519
    :cond_21
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    .line 522
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->getProperty_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "scale"

    const-string v7, "rotation"

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v5, :sswitch_data_22a

    goto :goto_57

    :sswitch_3b
    const-string v5, "position"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto :goto_57

    :cond_44
    const/4 v4, 0x2

    goto :goto_57

    :sswitch_46
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_57

    :cond_4d
    const/4 v4, 0x1

    goto :goto_57

    :sswitch_4f
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    goto :goto_57

    :cond_56
    const/4 v4, 0x0

    :goto_57
    const-string v3, "ACTOR_SET_PROPERTY"

    const-string/jumbo v5, "舞台编辑-全屏"

    const-string/jumbo v10, "舞台编辑-横屏"

    const/4 v11, 0x0

    packed-switch v4, :pswitch_data_238

    goto/16 :goto_226

    .line 585
    :pswitch_65  #0x2
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v4

    invoke-interface {v4}, Lcom/codemao/creativestore/view/NewBcmView;->isStageFullScreen()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 586
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v4

    const-string/jumbo v6, "舞台全屏-快捷角色移动"

    invoke-virtual {v4, v5, v6, v11}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_86

    .line 588
    :cond_7c
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v4

    const-string/jumbo v5, "舞台-快捷角色移动"

    invoke-virtual {v4, v10, v5, v11}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_86
    const/16 v4, 0x10

    .line 591
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->getValue()Ljava/util/Map;

    move-result-object v5

    const-string v6, "x"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_95

    return-object v1

    .line 593
    :cond_95
    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 594
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->getValue()Ljava/util/Map;

    move-result-object v1

    const-string v7, "y"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 595
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v12

    cmpl-double v1, v12, v5

    if-nez v1, :cond_bb

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v12

    cmpl-double v1, v12, v10

    if-eqz v1, :cond_bc

    :cond_bb
    const/4 v8, 0x1

    .line 598
    :cond_bc
    invoke-virtual {v0, v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setX(D)V

    .line 599
    invoke-virtual {v0, v10, v11}, Lcom/codemao/creativestore/bean/ActorVO;->setY(D)V

    if-eqz v8, :cond_226

    .line 601
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$500(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v1, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    new-instance v3, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;

    invoke-direct {v3, v2, v0}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V

    invoke-direct {v1, v4, v3}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    goto/16 :goto_226

    .line 524
    :pswitch_e4  #0x1
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v1

    invoke-interface {v1}, Lcom/codemao/creativestore/view/NewBcmView;->isStageFullScreen()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 525
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v1

    const-string/jumbo v4, "舞台全屏-快捷角色缩放"

    invoke-virtual {v1, v5, v4, v11}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_105

    .line 527
    :cond_fb
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v1

    const-string/jumbo v4, "舞台-快捷角色缩放"

    invoke-virtual {v1, v10, v4, v11}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_105
    const/16 v1, 0xf

    .line 530
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 531
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_114
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 532
    iget-object v10, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v10}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codemao/creativestore/bean/StyleVO;

    if-nez v10, :cond_13c

    move-object v10, v11

    goto :goto_140

    .line 533
    :cond_13c
    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v10

    :goto_140
    if-nez v10, :cond_149

    .line 535
    new-instance v10, Lcom/codemao/creativestore/bean/CenterPoint;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13, v12, v13}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    .line 537
    :cond_149
    invoke-virtual {v4, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_114

    .line 540
    :cond_14d
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->getValue()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 541
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v7

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->getValue()Ljava/util/Map;

    move-result-object v10

    const-string v11, "styles_center_point"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 542
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_226

    .line 543
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v10

    new-instance v11, Lcom/codemao/creativestore/presenter/CreateUtils$1$1;

    invoke-direct {v11, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$1$1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$1;)V

    .line 545
    invoke-virtual {v11}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 543
    invoke-virtual {v10, v7, v11}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    if-eqz v7, :cond_198

    .line 546
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_198

    .line 548
    iget-object v8, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v8}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->changeAllCenterPbyActor(Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;)V

    const/4 v8, 0x1

    .line 550
    :cond_198
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v10

    cmpl-double v12, v10, v5

    if-eqz v12, :cond_1a4

    .line 552
    invoke-virtual {v0, v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setScale(D)V

    goto :goto_1a5

    :cond_1a4
    move v9, v8

    :goto_1a5
    if-eqz v9, :cond_226

    .line 555
    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v5}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$500(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    move-result-object v5

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v3, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v3, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    new-instance v5, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;

    invoke-direct {v5, v2, v0, v4, v7}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-direct {v3, v1, v5}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    goto :goto_226

    .line 562
    :pswitch_1c6  #0x0
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v4

    invoke-interface {v4}, Lcom/codemao/creativestore/view/NewBcmView;->isStageFullScreen()Z

    move-result v4

    if-eqz v4, :cond_1dd

    .line 563
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v4

    const-string/jumbo v6, "舞台全屏-快捷角色旋转"

    invoke-virtual {v4, v5, v6, v11}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1e7

    .line 565
    :cond_1dd
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v4

    const-string/jumbo v5, "舞台-快捷角色旋转"

    invoke-virtual {v4, v10, v5, v11}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1e7
    const/16 v4, 0xe

    .line 568
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->getValue()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1f4

    return-object v1

    .line 573
    :cond_1f4
    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 574
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getRadian()D

    move-result-wide v10

    cmpl-double v1, v10, v5

    if-eqz v1, :cond_203

    const/4 v8, 0x1

    .line 577
    :cond_203
    invoke-virtual {v0, v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setRadian(D)V

    if-eqz v8, :cond_226

    .line 579
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$500(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v1, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    new-instance v3, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;

    invoke-direct {v3, v2, v0}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V

    invoke-direct {v1, v4, v3}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    :cond_226
    :goto_226
    const-string p1, "ok"

    return-object p1

    nop

    :sswitch_data_22a
    .sparse-switch
        -0x266f082 -> :sswitch_4f
        0x683094a -> :sswitch_46
        0x2c929929 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_238
    .packed-switch 0x0
        :pswitch_1c6  #00000000
        :pswitch_e4  #00000001
        :pswitch_65  #00000002
    .end packed-switch
.end method

.method public showCleanCanShu(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->showCleanCanshu(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public showClearBlocksDialog(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->showClearBlock(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public showConfirmDialog(Lcom/codemao/creativestore/bean/ConfirmDialogMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/ConfirmDialogMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->showConfirmDialog(Lcom/codemao/creativestore/bean/ConfirmDialogMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public showHelp(Ljava/lang/String;)V
    .registers 7

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_84

    goto :goto_2c

    :sswitch_c
    const-string v0, "pen_colors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "theater_coordinate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "effects_colors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    const-string/jumbo v0, "积木-键盘帮助"

    const-string/jumbo v2, "积木编辑"

    packed-switch v1, :pswitch_data_92

    goto :goto_7a

    .line 337
    :pswitch_36  #0x2
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v1

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v3

    const-string/jumbo v4, "颜色"

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setHelpType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7a

    .line 340
    :pswitch_4d  #0x1
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v1

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v3

    const-string/jumbo v4, "坐标"

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setHelpType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7a

    .line 343
    :pswitch_64  #0x0
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v1

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v3

    const-string/jumbo v4, "特效"

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setHelpType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 346
    :goto_7a
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->showBlockHelper(Ljava/lang/String;)V

    return-void

    :sswitch_data_84
    .sparse-switch
        -0x6a0984b3 -> :sswitch_22
        0xdd2ce66 -> :sswitch_17
        0x52914b56 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_64  #00000000
        :pswitch_4d  #00000001
        :pswitch_36  #00000002
    .end packed-switch
.end method

.method public showKeyboardDialog(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->showKeyboardDialog(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 675
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->showToast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showWebDialog(Ljava/lang/String;)V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->showWebDialog(Ljava/lang/String;)V

    return-void
.end method

.method public startEditProcedur()V
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->startEditProcedure()V

    return-void
.end method

.method public stopSoundPlayer(Ljava/lang/String;)V
    .registers 3

    .line 638
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/AudioPlayer;->addStopAction(Ljava/lang/String;)V

    return-void
.end method

.method public toggleAccelerometerenable(Z)V
    .registers 2

    if-eqz p1, :cond_c

    .line 644
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativestore/view/NewBcmView;->startShakeLitstener()V

    goto :goto_15

    .line 646
    :cond_c
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativestore/view/NewBcmView;->stopShakeLitstener()V

    :goto_15
    return-void
.end method

.method public toggleTiltEnable(Z)V
    .registers 2

    if-eqz p1, :cond_c

    .line 653
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativestore/view/NewBcmView;->startTiltLitstener()V

    goto :goto_15

    .line 655
    :cond_c
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativestore/view/NewBcmView;->stopTiltLitstener()V

    :goto_15
    return-void
.end method

.method public trackWeb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 351
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public updateStyleContentDone()V
    .registers 1

    return-void
.end method

.method public updateUndoStack(Lcom/codemao/creativestore/bean/BlockUpdateMsg;)V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BlockUpdateMsg;->isCan_undo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BlockUpdateMsg;->isCan_redo()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/codemao/creativestore/view/NewBcmView;->blockUndoAndRedoStatus(ZZ)V

    return-void
.end method

.method public visibleLeftBar(Z)V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->visibleLeftBar(Z)V

    return-void
.end method

.method public voiceDetectionEnable(Z)V
    .registers 2

    if-nez p1, :cond_c

    .line 662
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativestore/view/NewBcmView;->stopMic()V

    goto :goto_15

    .line 664
    :cond_c
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$1;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativestore/view/NewBcmView;->startMic()V

    :goto_15
    return-void
.end method
