.class public interface abstract Lcom/codemao/creativestore/view/NewBcmView;
.super Ljava/lang/Object;
.source "NewBcmView.java"


# virtual methods
.method public abstract actorAddInfo(I)V
.end method

.method public abstract actorScrollTo(I)V
.end method

.method public abstract addBroadcaset(Lcom/codemao/creativestore/bean/AddBroadcastMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddBroadcastMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addCloudVarible(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addList(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addMidi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addVarible(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract annotateBlock(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AnnotateBlockMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blockUndoAndRedoStatus(ZZ)V
.end method

.method public abstract bluetoothConnectSuccess()V
.end method

.method public abstract bluetoothDisconnect()V
.end method

.method public abstract cloudClickLogin()V
.end method

.method public abstract completeBlockGuide(Ljava/lang/String;)V
.end method

.method public abstract deleteActor(I)V
.end method

.method public abstract editBlockFoldName(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AnnotateBlockMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract editMetaBeforeSave(Lcom/codemao/creativestore/bean/MetaVO;)V
.end method

.method public abstract fullScreen()V
.end method

.method public abstract getOpenBcmMode()I
.end method

.method public abstract getRunTimeListMsg(Lcom/codemao/creativestore/bean/GetRuntimeListMsg;)V
.end method

.method public abstract getRuntimeVariableMsg(Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;)V
.end method

.method public abstract getViewContext()Landroid/content/Context;
.end method

.method public abstract initTheateConfig()Lcom/codemao/creativestore/bean/TheateConfigInfo;
.end method

.method public abstract initUserInfo()Lcom/codemao/creativestore/bean/WebUserInfo;
.end method

.method public abstract isStageFullScreen()Z
.end method

.method public abstract loadBcmDone()V
.end method

.method public abstract needAutoSave()Z
.end method

.method public abstract newComerBlockGuideFinish()V
.end method

.method public abstract onBeforeReloadBcm()V
.end method

.method public abstract onCreateViewLevelVisibleChange(IIZ)V
.end method

.method public abstract onLoadBcmError(Ljava/lang/Exception;)V
.end method

.method public abstract onLoadCloudBaseMaterialDone()V
.end method

.method public abstract onLoadCloudBaseMaterialError()V
.end method

.method public abstract onLoadCloudBaseMaterialProgress(I)V
.end method

.method public abstract onRecievePluginAsyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;Lcom/codemao/creativestore/jsbridge/listener/PluginMsgResultListener;)V
.end method

.method public abstract onRecievePluginSyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;)V
.end method

.method public abstract onStartLoadCloudBaseMaterial()V
.end method

.method public abstract openStylePanel(ILcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract renameVariable(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/RenameVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sceneScrollTo(I)V
.end method

.method public abstract selectExtensionsCategories(Ljava/util/List;Ljava/util/List;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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
.end method

.method public abstract showBlcokErr(Lcom/codemao/creativestore/bean/BlockErrorMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/BlockErrorMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showBlockHelper(Ljava/lang/String;)V
.end method

.method public abstract showCannotDeleteSceneOne()V
.end method

.method public abstract showCleanCanshu(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showClearBlock(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showConfirmDialog(Lcom/codemao/creativestore/bean/ConfirmDialogMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/ConfirmDialogMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showContentEdit(Lcom/codemao/creativestore/bean/CreateEditTextMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/CreateEditTextMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showKeyboardDialog(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showSelectSoundPop(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showToast(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showWebDialog(Ljava/lang/String;)V
.end method

.method public abstract startEditProcedure()V
.end method

.method public abstract startMic()V
.end method

.method public abstract startShakeLitstener()V
.end method

.method public abstract startTiltLitstener()V
.end method

.method public abstract stopMic()V
.end method

.method public abstract stopShakeLitstener()V
.end method

.method public abstract stopTiltLitstener()V
.end method

.method public abstract undoAndRedoStatus(ZZ)V
.end method

.method public abstract updateScenList(I)V
.end method

.method public abstract updateUserList()V
.end method

.method public abstract visibleLeftBar(Z)V
.end method
