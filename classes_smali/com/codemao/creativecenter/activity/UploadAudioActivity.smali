.class public Lcom/codemao/creativecenter/activity/UploadAudioActivity;
.super Lcom/nemo/commonui/BaseNemoUIActivity;
.source "UploadAudioActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/CreativeLocalAudioMoveInterface;


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/bean/MaterialUploadBean;",
            ">;"
        }
    .end annotation
.end field

.field private parentPath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$WxBz3UTmvlLcCUPuwNWVdL0OOqE(Lcom/codemao/creativecenter/activity/UploadAudioActivity;Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->lambda$initView$3(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fTlJKc72VC_JMfp2RwsdJuQMmRo(Lcom/codemao/creativecenter/activity/UploadAudioActivity;Lcom/codemao/creativecenter/bean/MaterialUploadBean;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->lambda$backToUpload$4(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hU540PXcG_xaTeT5U9ExkUqSG1k(Lcom/codemao/creativecenter/activity/UploadAudioActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m0FXjCXE4TME5CC-B26RJc6ZZr8(Lcom/codemao/creativecenter/activity/UploadAudioActivity;Lcom/codemao/creativecenter/bean/MaterialUploadBean;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->lambda$initView$2(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vj0cq7cumxujnR7DR_2QyvS8lsY(Lcom/codemao/creativecenter/activity/UploadAudioActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/nemo/commonui/BaseNemoUIActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->mData:Ljava/util/List;

    return-void
.end method

.method private backToUpload(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->parentPath:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/creativecenter/activity/UploadAudioActivity;Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->moveFileToPath(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;)V

    return-void
.end method

.method public static goUploadSound(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/creativecenter/activity/UploadAudioActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "saveParentPath"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x1998

    .line 44
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 45
    sget p1, Lcom/codemao/creativecenter/R$anim;->bottom_in:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private initView()V
    .registers 5

    .line 68
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_local_close:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    new-instance v1, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/activity/UploadAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_audio_tip:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    new-instance v1, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/activity/UploadAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_audio:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    new-instance v1, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->mData:Ljava/util/List;

    invoke-direct {v1, v2, p0}, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 84
    new-instance v2, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativecenter/activity/UploadAudioActivity;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->setOnItemClickListener(Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter$ItemClickListener;)V

    .line 92
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;)V

    invoke-static {v0, v2}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->queryAllAudio(Landroid/content/Context;Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;)V

    return-void
.end method

.method private synthetic lambda$backToUpload$4(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Z)V
    .registers 4

    .line 110
    sget p2, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_upload_success:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 112
    iget-object p2, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioName:Ljava/lang/String;

    iget-object v0, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->uuid:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->extName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->createUploadBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MaterialActorBean;

    move-result-object p1

    .line 113
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "record_data"

    .line 114
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 115
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 4

    .line 73
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 76
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;

    const-string v1, "import_music"

    invoke-direct {v0, p0, v1}, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private synthetic lambda$initView$2(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Z)V
    .registers 3

    if-eqz p2, :cond_6

    .line 87
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->backToUpload(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V

    goto :goto_f

    .line 89
    :cond_6
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_upload_failed:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_f
    return-void
.end method

.method private synthetic lambda$initView$3(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->parentPath:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/creativecenter/activity/UploadAudioActivity;Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V

    .line 84
    invoke-static {p1, v0, v1, v2}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->moveFileToPath(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;)V

    return-void
.end method


# virtual methods
.method public copyAndImportAudio(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V
    .registers 3

    .line 98
    iget-object v0, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 99
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_import_format_error:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 102
    :cond_12
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->backToUpload(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V

    return-void
.end method

.method public finish()V
    .registers 3

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 51
    sget v0, Lcom/codemao/creativecenter/R$anim;->bottom_out:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 56
    invoke-super {p0, p1}, Lcom/nemo/commonui/BaseNemoUIActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-static {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 58
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->hideNavigationBar(Landroid/app/Activity;)V

    .line 59
    sget p1, Lcom/codemao/creativecenter/R$layout;->creative_activity_local_audio:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "saveParentPath"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->parentPath:Ljava/lang/String;

    .line 61
    sget p1, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    if-eqz p1, :cond_2d

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    :cond_2d
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->initView()V

    return-void
.end method
