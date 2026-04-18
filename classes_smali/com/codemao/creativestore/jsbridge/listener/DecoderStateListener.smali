.class public interface abstract Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;
.super Ljava/lang/Object;
.source "DecoderStateListener.java"


# virtual methods
.method public abstract actorPivotCanReset(Ljava/lang/String;Z)V
.end method

.method public abstract addBroadCast(Lcom/codemao/creativestore/bean/AddBroadcastMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

.method public abstract addMidi(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addProcedureParmas(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

.method public abstract completeBlockGuide(Ljava/lang/String;)V
.end method

.method public abstract deleteActors(Lcom/codemao/creativestore/bean/ActorDeleteMsg;)V
.end method

.method public abstract editBlockComment(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

.method public abstract editProcedureName(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

.method public abstract editText(Lcom/codemao/creativestore/bean/CreateEditTextMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

.method public abstract fullScreen()V
.end method

.method public abstract getRuntimeVariableMsg(Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;)V
.end method

.method public abstract gotoAPPSetting()V
.end method

.method public abstract gotoBluetoothSetting()V
.end method

.method public abstract gotoLocationSetting()V
.end method

.method public abstract loadBcmDone()V
.end method

.method public abstract login()V
.end method

.method public abstract newComerModeFinish()V
.end method

.method public abstract onBlockError(Lcom/codemao/creativestore/bean/BlockErrorMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onRecievePluginAsyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;Lcom/codemao/creativestore/jsbridge/listener/PluginMsgResultListener;)V
.end method

.method public abstract onRecievePluginSyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;)V
.end method

.method public abstract onSelectEntity(Lcom/codemao/creativestore/bean/SelectEntityMsg;)V
.end method

.method public abstract openAudioPanel(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

.method public abstract openStylePanel(ILcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract playSound(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

.method public abstract playSoundWithId(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

.method public abstract renameVariableMsg(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

.method public abstract rootBlockVisible(Z)V
.end method

.method public abstract selectActor(Lcom/codemao/creativestore/bean/ActorSelectMsg;)V
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

.method public abstract setActorCenterPoint(Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;)V
.end method

.method public abstract setActorProperty(Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;)Ljava/lang/String;
.end method

.method public abstract showCleanCanShu(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showClearBlocksDialog(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
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

.method public abstract showHelp(Ljava/lang/String;)V
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

.method public abstract showToast(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showWebDialog(Ljava/lang/String;)V
.end method

.method public abstract startEditProcedur()V
.end method

.method public abstract stopSoundPlayer(Ljava/lang/String;)V
.end method

.method public abstract toggleAccelerometerenable(Z)V
.end method

.method public abstract toggleTiltEnable(Z)V
.end method

.method public abstract trackWeb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public abstract updateStyleContentDone()V
.end method

.method public abstract updateUndoStack(Lcom/codemao/creativestore/bean/BlockUpdateMsg;)V
.end method

.method public abstract visibleLeftBar(Z)V
.end method

.method public abstract voiceDetectionEnable(Z)V
.end method
