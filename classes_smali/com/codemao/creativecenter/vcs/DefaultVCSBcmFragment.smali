.class public Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;
.super Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;
.source "DefaultVCSBcmActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultVCSBcmActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultVCSBcmActivity.kt\ncom/codemao/creativecenter/vcs/DefaultVCSBcmFragment\n*L\n1#1,518:1\n*E\n"
.end annotation


# instance fields
.field private hasSyncUpload:Z

.field private final mApiStore$delegate:Lkotlin/Lazy;

.field private mSyncWorkProgressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 121
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;-><init>()V

    .line 233
    sget-object v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$mApiStore$2;->INSTANCE:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$mApiStore$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->mApiStore$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCreateUtils$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativestore/presenter/CreateUtils;
    .registers 1

    .line 121
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMApiStore$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/api/AssistApiStore;
    .registers 1

    .line 121
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->getMApiStore()Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->mSyncWorkProgressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    return-object p0
.end method

.method public static final synthetic access$setMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->mSyncWorkProgressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    return-void
.end method

.method private final getMApiStore()Lcom/codemao/creativecenter/vcs/api/AssistApiStore;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->mApiStore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    return-object v0
.end method


# virtual methods
.method public getLeftTopView(II)Landroid/view/View;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final handleClickExit()Z
    .registers 6

    .line 160
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistor()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_67

    .line 161
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->hasSyncUpload:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->getHasEdit()Z

    move-result v0

    if-nez v0, :cond_17

    .line 162
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->finish()V

    goto/16 :goto_d7

    .line 164
    :cond_17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d7

    .line 165
    new-instance v2, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-direct {v2, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    .line 167
    sget v3, Lcom/codemao/creativecenter/R$string;->creative_vcs_exit_dialog_exit:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 168
    sget v3, Lcom/codemao/creativecenter/R$string;->creative_vcs_exit_dialog_sync:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 169
    sget v3, Lcom/codemao/creativecenter/R$string;->creative_vcs_exit_dialog_title:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->titleStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 170
    invoke-virtual {v2, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 171
    new-instance v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$1;

    invoke-direct {v1, v2, v0, p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Landroid/content/Context;Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)V

    invoke-virtual {v2, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 177
    new-instance v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$2;

    invoke-direct {v1, v2, v0, p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$2;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Landroid/content/Context;Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)V

    invoke-virtual {v2, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 182
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    goto :goto_d7

    .line 190
    :cond_67
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistBcm()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 191
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->getHasEdit()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d7

    .line 193
    new-instance v2, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-direct {v2, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/codemao/creativecenter/R$string;->creative_vcs_save_dialog_exit:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 196
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/codemao/creativecenter/R$string;->creative_vcs_save_dialog_use:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 197
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/codemao/creativecenter/R$string;->creative_vcs_save_dialog_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->titleStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 198
    invoke-virtual {v2, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 199
    new-instance v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$3;

    invoke-direct {v1, v2, p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$3;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)V

    invoke-virtual {v2, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 205
    new-instance v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$4;

    invoke-direct {v1, v2, p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$4;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)V

    invoke-virtual {v2, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 210
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    goto :goto_d7

    :cond_cf
    const-string v0, "assist_works"

    .line 218
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteCustomBcms(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->finish()V

    :cond_d7
    :goto_d7
    const/4 v0, 0x1

    return v0

    :cond_d9
    const/4 v0, 0x0

    return v0
.end method

.method public initUserInfo()Lcom/codemao/creativestore/bean/WebUserInfo;
    .registers 5

    .line 124
    new-instance v0, Lcom/codemao/creativestore/bean/WebUserInfo;

    .line 126
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    const-string v2, "CreativeCenterUtils.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getUserToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 124
    invoke-direct {v0, v3, v1, v2, v3}, Lcom/codemao/creativestore/bean/WebUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onChangeAssistMode(Lcom/codemao/creativecenter/vcs/events/ChangeAssistModeEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/events/ChangeAssistModeEvent;->getWorkUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    return-void

    .line 491
    :cond_16
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->refreshMeta()V

    .line 492
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/events/ChangeAssistModeEvent;->isOpen()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->setOpenAssistMode(Z)V

    return-void
.end method

.method public onClickApply()V
    .registers 4

    .line 401
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->getMOriginBcmPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 404
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 405
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1c
    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    .line 407
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_vcs_apply_dialog_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 408
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_vcs_apply_dialog_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 409
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_vcs_apply_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->titleStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string v1, ""

    .line 410
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 411
    new-instance v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$pop$1$1;

    invoke-direct {v1, v0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$pop$1$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 414
    new-instance v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;

    invoke-direct {v1, v0, p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 473
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 474
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 475
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 476
    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_75
    return-void
.end method

.method public onClickAssistDebug()V
    .registers 5

    .line 239
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->hasSetUserId()Z

    move-result v0

    if-nez v0, :cond_15

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "需要登录之后，才能使用协作模式"

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 244
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 245
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2c
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v2

    if-nez v2, :cond_3a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3a
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isOpenAssistMode()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;-><init>(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;Z)V

    .line 246
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_4c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4c
    invoke-direct {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 248
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 249
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 250
    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_66
    return-void
.end method

.method public onClickExit()V
    .registers 2

    .line 154
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->handleClickExit()Z

    move-result v0

    if-nez v0, :cond_9

    .line 155
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->finish()V

    :cond_9
    return-void
.end method

.method public onClickHelp()V
    .registers 1

    .line 230
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showHelp()V

    return-void
.end method

.method public onClickSyncUpload()V
    .registers 3

    .line 259
    new-instance v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;-><init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->saveWorkWithoutPop(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 513
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistBcm()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "assist_works"

    .line 514
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getCustomDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteDirectory(Ljava/lang/String;)V

    .line 516
    :cond_f
    invoke-super {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->onDestroy()V

    return-void
.end method

.method public onRecievePluginAsyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;Lcom/codemao/creativestore/jsbridge/listener/PluginMsgResultListener;)V
    .registers 3

    return-void
.end method

.method public onRecievePluginSyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;)V
    .registers 2

    return-void
.end method

.method public final onReload(Lcom/codemao/creativecenter/vcs/events/ReloadBcmEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assist--workUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/events/ReloadBcmEvent;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/events/ReloadBcmEvent;->getWorkUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_46

    return-void

    .line 505
    :cond_46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assist--workId:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    if-eqz p1, :cond_7a

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".bcm"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 509
    :cond_7a
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->reloadBcm(Z)V

    return-void
.end method

.method protected final setHasSyncUpload(Z)V
    .registers 2

    .line 150
    iput-boolean p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->hasSyncUpload:Z

    return-void
.end method
