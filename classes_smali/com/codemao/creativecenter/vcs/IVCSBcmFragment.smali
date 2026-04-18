.class public abstract Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;
.super Lcom/codemao/creativecenter/NewBcmFragment;
.source "IVCSBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIVCSBcmFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IVCSBcmFragment.kt\ncom/codemao/creativecenter/vcs/IVCSBcmFragment\n*L\n1#1,244:1\n*E\n"
.end annotation


# instance fields
.field private hasEdit:Z

.field private final isAssistBcm$delegate:Lkotlin/Lazy;

.field private final isAssistor$delegate:Lkotlin/Lazy;

.field private isOpenAssistMode:Z

.field private final mOriginBcmPath$delegate:Lkotlin/Lazy;

.field private mTopMenuPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

.field private final mTopMenuPopBuilder$delegate:Lkotlin/Lazy;

.field private needShowDot:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$isAssistor$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$isAssistor$2;-><init>(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistor$delegate:Lkotlin/Lazy;

    .line 44
    new-instance v0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$isAssistBcm$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$isAssistBcm$2;-><init>(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistBcm$delegate:Lkotlin/Lazy;

    .line 66
    new-instance v0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mOriginBcmPath$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mOriginBcmPath$2;-><init>(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->mOriginBcmPath$delegate:Lkotlin/Lazy;

    .line 73
    new-instance v0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mTopMenuPopBuilder$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mTopMenuPopBuilder$2;-><init>(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->mTopMenuPopBuilder$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$init(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V
    .registers 1

    .line 32
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->init()V

    return-void
.end method

.method private final getMTopMenuPopBuilder()Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->mTopMenuPopBuilder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-object v0
.end method


# virtual methods
.method public afterDoGuideAction(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public blockUndoAndRedoStatus(ZZ)V
    .registers 4

    .line 149
    invoke-super {p0, p1, p2}, Lcom/codemao/creativecenter/NewBcmFragment;->blockUndoAndRedoStatus(ZZ)V

    .line 150
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->hasEdit:Z

    if-nez v0, :cond_e

    if-nez p2, :cond_e

    if-eqz p1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p1, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p1, 0x1

    :goto_f
    iput-boolean p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->hasEdit:Z

    return-void
.end method

.method public cloudClickLogin()V
    .registers 1

    return-void
.end method

.method public editMetaBeforeSave(Lcom/codemao/creativestore/bean/MetaVO;)V
    .registers 2

    return-void
.end method

.method public getCreationMode()Lcom/codemao/creativecenter/bean/CreationMode;
    .registers 3

    .line 191
    new-instance v0, Lcom/codemao/creativecenter/bean/CreationMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/bean/CreationMode;-><init>(I)V

    return-object v0
.end method

.method protected final getHasEdit()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->hasEdit:Z

    return v0
.end method

.method protected final getMOriginBcmPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->mOriginBcmPath$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasVideo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hideVideo()V
    .registers 1

    return-void
.end method

.method public initMBcm()V
    .registers 9

    .line 161
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistor()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistBcm()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 164
    :cond_d
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->toCreateData()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    move-object v5, v0

    const/4 v0, 0x1

    .line 166
    sput-boolean v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->HAS_BCM_DOWNLOAD:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 170
    new-instance v7, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$initMBcm$1;

    invoke-direct {v7, p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$initMBcm$1;-><init>(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V

    const-string v4, "assist_works"

    .line 169
    invoke-static/range {v1 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method public initVideoView(Landroid/widget/FrameLayout;I)V
    .registers 3

    return-void
.end method

.method protected final isAssistBcm()Z
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistBcm$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final isAssistor()Z
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final isOpenAssistMode()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isOpenAssistMode:Z

    return v0
.end method

.method public needGuideView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public needToInitBcm()Z
    .registers 2

    .line 154
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/codemao/creativestore/bean/WorksEvent;->bcmUrl:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onClickAssistorBcm(Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;->getWorkUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    return-void

    .line 124
    :cond_16
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;->getHasUpdate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->needShowDot:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 95
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->isOpenAssistMode:Z

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-boolean p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isOpenAssistMode:Z

    if-eqz p1, :cond_1f

    .line 97
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->needShowDot:Z

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    iput-boolean v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->needShowDot:Z

    return-void
.end method

.method public onLoadBcmError(Ljava/lang/Exception;)V
    .registers 6

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 129
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 133
    new-instance v2, Lcom/codemao/creativecenter/vcs/pop/FullScreenLoadErrorPop;

    new-instance v3, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$onLoadBcmError$$inlined$let$lambda$1;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$onLoadBcmError$$inlined$let$lambda$1;-><init>(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V

    invoke-direct {v2, v0, v3}, Lcom/codemao/creativecenter/vcs/pop/FullScreenLoadErrorPop;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 136
    :cond_2c
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    const-string/jumbo v1, "作品打不开"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onMCreate()V
    .registers 1

    return-void
.end method

.method public onMDestroy()V
    .registers 1

    return-void
.end method

.method public onMPause()V
    .registers 1

    return-void
.end method

.method public onMResume()V
    .registers 1

    return-void
.end method

.method public onMStop()V
    .registers 1

    return-void
.end method

.method public onStatusChangeFromRun()V
    .registers 1

    return-void
.end method

.method public onTopMenuClick()V
    .registers 3

    .line 101
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 104
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->mTopMenuPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-nez v0, :cond_15

    .line 105
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->getMTopMenuPopBuilder()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->mTopMenuPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 108
    :cond_15
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->mTopMenuPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-nez v0, :cond_1c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1c
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isDismiss()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->mTopMenuPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz v0, :cond_29

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismissing:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    if-ne v0, v1, :cond_38

    .line 109
    :cond_2e
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->mTopMenuPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-nez v0, :cond_35

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_35
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 111
    :cond_38
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->mTopMenuPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz v0, :cond_4d

    check-cast v0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;

    .line 112
    iget-boolean v1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isOpenAssistMode:Z

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->needShowDot:Z

    if-eqz v1, :cond_48

    const/4 v1, 0x1

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->showAssistDot(Z)V

    return-void

    .line 111
    :cond_4d
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.codemao.creativecenter.vcs.pop.VCSMenuPop"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final setHasEdit(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->hasEdit:Z

    return-void
.end method

.method protected final setOpenAssistMode(Z)V
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isOpenAssistMode:Z

    return-void
.end method

.method public showUploadButton()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public showVideo()V
    .registers 1

    return-void
.end method

.method public undoAndRedoStatus(ZZ)V
    .registers 4

    .line 144
    invoke-super {p0, p1, p2}, Lcom/codemao/creativecenter/NewBcmFragment;->undoAndRedoStatus(ZZ)V

    .line 145
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->hasEdit:Z

    if-nez v0, :cond_e

    if-nez p2, :cond_e

    if-eqz p1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p1, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p1, 0x1

    :goto_f
    iput-boolean p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->hasEdit:Z

    return-void
.end method
