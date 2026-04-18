.class public Lcom/codemao/creativecenter/activity/RecordSoundActivity;
.super Lcom/nemo/commonui/BaseNemoUIActivity;
.source "RecordSoundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;
.implements Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;
.implements Lcom/codemao/creativecenter/callback/ViewNameInterFace;


# instance fields
.field private BASE_RECORD_INDEX:I

.field private BASE_RECORD_NAME:Ljava/lang/String;

.field private REQUEST_AUDIO:I

.field private crv:Lcom/codemao/creativecenter/customview/CmRecordView;

.field private curWorkUid:Ljava/lang/String;

.field private edit_record:Landroid/widget/TextView;

.field private exitNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isKeyboadShow:Z

.field private isPad:Z

.field private iv_close:Landroid/view/View;

.field private iv_edit:Landroid/widget/ImageView;

.field private keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

.field private mInitHeight:I

.field private path:Ljava/lang/String;

.field private saveFile:Z

.field private vlv:Lcom/codemao/creativecenter/customview/VoiceLineView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Lcom/nemo/commonui/BaseNemoUIActivity;-><init>()V

    const/16 v0, 0x37

    .line 63
    iput v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->REQUEST_AUDIO:I

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->BASE_RECORD_INDEX:I

    .line 81
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    iput-boolean v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->isPad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)Lcom/codemao/creativecenter/customview/VoiceLineView;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->vlv:Lcom/codemao/creativecenter/customview/VoiceLineView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)Lcom/codemao/creativecenter/customview/CmRecordView;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->crv:Lcom/codemao/creativecenter/customview/CmRecordView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)Landroid/widget/TextView;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->edit_record:Landroid/widget/TextView;

    return-object p0
.end method

.method public static goRecordSound(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "workUid"

    .line 85
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "workId"

    .line 86
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "path"

    .line 87
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "exitName"

    .line 88
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x1996

    .line 89
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private markName()V
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->BASE_RECORD_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->BASE_RECORD_INDEX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->exitNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 147
    iget v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->BASE_RECORD_INDEX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->BASE_RECORD_INDEX:I

    .line 148
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->markName()V

    goto :goto_2a

    .line 150
    :cond_25
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->edit_record:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2a
    return-void
.end method


# virtual methods
.method public addSound(Ljava/lang/String;)V
    .registers 6

    .line 326
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "录音页"

    const-string/jumbo v2, "录音-确定"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->saveFile:Z

    .line 329
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->edit_record:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->createRecordBean(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MaterialActorBean;

    move-result-object p1

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "record_data"

    .line 332
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 333
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 334
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->finish()V

    return-void
.end method

.method public finish()V
    .registers 3

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 261
    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_exit_bottom:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "录音页"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 200
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 203
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 204
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_close:I

    const/4 v1, 0x0

    const-string/jumbo v2, "录音页"

    if-ne p1, v0, :cond_85

    .line 205
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->crv:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->hasRecordFile()Z

    move-result p1

    if-eqz p1, :cond_77

    iget-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->crv:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->isPlayingState()Z

    move-result p1

    if-eqz p1, :cond_77

    .line 208
    new-instance p1, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_confirm_cancel_recording:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object p1

    .line 209
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_exit_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/activity/RecordSoundActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/activity/RecordSoundActivity$2;-><init>(Lcom/codemao/creativecenter/activity/RecordSoundActivity;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 219
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 222
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void

    .line 227
    :cond_77
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "录音-取消"

    invoke-virtual {p1, v2, v0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 228
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->finish()V

    goto :goto_d1

    .line 229
    :cond_85
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_edit:I

    if-ne p1, v0, :cond_d1

    .line 230
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "录音-重命名"

    invoke-virtual {p1, v2, v0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 231
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 234
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->curWorkUid:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-direct {v0, p0, v1, v2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->exitNames:Ljava/util/List;

    .line 235
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setPools(Ljava/util/List;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->edit_record:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setDisplayName(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/activity/RecordSoundActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity$3;-><init>(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)V

    .line 236
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listen(Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object v0

    .line 235
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_d1
    :goto_d1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 94
    invoke-super {p0, p1}, Lcom/nemo/commonui/BaseNemoUIActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_recording:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->BASE_RECORD_NAME:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 98
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->hideNavigationBar(Landroid/app/Activity;)V

    .line 100
    sget p1, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    if-eqz p1, :cond_28

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 103
    :cond_28
    iget-boolean p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->isPad:Z

    if-eqz p1, :cond_2f

    sget p1, Lcom/codemao/creativecenter/R$layout;->creative_activity_recorder_pad:I

    goto :goto_31

    :cond_2f
    sget p1, Lcom/codemao/creativecenter/R$layout;->creative_activity_recorder:I

    :goto_31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->path:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "workId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "workUid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->curWorkUid:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "exitName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    sget v0, Lcom/codemao/creativecenter/R$id;->edit_record:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->edit_record:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/codemao/creativecenter/R$id;->vlv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/VoiceLineView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->vlv:Lcom/codemao/creativecenter/customview/VoiceLineView;

    .line 112
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_edit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->iv_edit:Landroid/widget/ImageView;

    .line 113
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->iv_close:Landroid/view/View;

    .line 114
    sget v0, Lcom/codemao/creativecenter/R$id;->crv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/CmRecordView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->crv:Lcom/codemao/creativecenter/customview/CmRecordView;

    .line 115
    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->setCmRecordListener(Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;)V

    .line 116
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->iv_close:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->iv_edit:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->crv:Lcom/codemao/creativecenter/customview/CmRecordView;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmRecordView;->setPath(Ljava/lang/String;)V

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b8

    const-string v0, ":"

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->exitNames:Ljava/util/List;

    .line 125
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->markName()V

    .line 129
    :cond_b8
    new-instance p1, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    .line 130
    invoke-virtual {p1, p0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    .line 132
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->vlv:Lcom/codemao/creativecenter/customview/VoiceLineView;

    new-instance v0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity$1;-><init>(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 267
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 268
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->crv:Lcom/codemao/creativecenter/customview/CmRecordView;

    if-eqz v0, :cond_c

    .line 269
    iget-boolean v1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->saveFile:Z

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmRecordView;->release(Z)V

    .line 271
    :cond_c
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_13

    .line 272
    invoke-virtual {v0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->close()V

    :cond_13
    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 7

    .line 364
    iget v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->mInitHeight:I

    const/16 v1, -0x270f

    if-ne v0, v1, :cond_8

    .line 365
    iput p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->mInitHeight:I

    .line 369
    :cond_8
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    if-eqz v0, :cond_46

    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    if-nez v0, :cond_11

    goto :goto_46

    :cond_11
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_18

    const/4 p2, 0x1

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    :goto_19
    if-eqz p2, :cond_1d

    .line 375
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    .line 380
    :cond_1d
    iget p2, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->mInitHeight:I

    sub-int p2, p1, p2

    div-int/lit8 v0, v0, 0x4

    if-le p2, v0, :cond_28

    .line 381
    iput-boolean v2, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->isKeyboadShow:Z

    goto :goto_2e

    .line 382
    :cond_28
    iget-boolean p2, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->isKeyboadShow:Z

    if-eqz p2, :cond_2e

    .line 383
    iput-boolean v3, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->isKeyboadShow:Z

    .line 386
    :cond_2e
    :goto_2e
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 387
    iget v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->mInitHeight:I

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 389
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/event/RectEvent;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->curWorkUid:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/codemao/creativecenter/event/RectEvent;-><init>(Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_46
    :goto_46
    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 168
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->crv:Lcom/codemao/creativecenter/customview/CmRecordView;

    if-eqz v0, :cond_a

    .line 171
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->onPause()V

    .line 173
    :cond_a
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    :cond_12
    return-void
.end method

.method public onReRecord()V
    .registers 5

    .line 358
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "录音页"

    const-string/jumbo v2, "录音-重录"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onRequestPermission()Z
    .registers 10

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 286
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    return v0

    .line 289
    :cond_a
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 290
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1a

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 291
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    :cond_1a
    move-object v7, v1

    .line 293
    sget-object v2, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->INSTANCE:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;

    iget v4, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->REQUEST_AUDIO:I

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_permission_cannot_record:I

    .line 295
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/codemao/creativecenter/activity/RecordSoundActivity$4;

    invoke-direct {v8, p0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity$4;-><init>(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)V

    const-string v6, "CREATE_TYPE_RECORD_MUSIC"

    move-object v3, p0

    .line 293
    invoke-virtual/range {v2 .. v8}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->checkPermissionInOrigin(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 181
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 183
    iget p2, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->REQUEST_AUDIO:I

    if-ne p1, p2, :cond_1c

    .line 184
    array-length p1, p3

    if-lez p1, :cond_17

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_17

    .line 186
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->crv:Lcom/codemao/creativecenter/customview/CmRecordView;

    if-eqz p1, :cond_1c

    .line 187
    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->onPermissionPassed()V

    goto :goto_1c

    .line 190
    :cond_17
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_permission_cannot_record:I

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 157
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->crv:Lcom/codemao/creativecenter/customview/CmRecordView;

    if-eqz v0, :cond_a

    .line 160
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->onResume()V

    .line 162
    :cond_a
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_11

    .line 163
    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    :cond_11
    return-void
.end method

.method public onSoundSize(I)V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->vlv:Lcom/codemao/creativecenter/customview/VoiceLineView;

    if-eqz v0, :cond_7

    .line 281
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/VoiceLineView;->setVolume(I)V

    :cond_7
    return-void
.end method

.method public onStateChange(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "录音页"

    if-eq p1, v0, :cond_24

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x6

    if-eq p1, v0, :cond_19

    .line 350
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->edit_record:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->iv_edit:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3a

    .line 347
    :cond_19
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "录音-取消播放"

    invoke-virtual {p1, v2, v0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3a

    .line 341
    :cond_24
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "录音-开始"

    invoke-virtual {p1, v2, v0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 343
    :cond_2e
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->edit_record:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->iv_edit:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3a
    return-void
.end method
