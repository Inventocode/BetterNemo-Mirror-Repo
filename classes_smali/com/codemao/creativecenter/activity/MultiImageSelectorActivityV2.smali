.class public Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;
.super Lcom/nemo/commonui/BaseNemoUIActivity;
.source "MultiImageSelectorActivityV2.java"

# interfaces
.implements Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;
.implements Lcom/codemao/creativecenter/callback/ViewNameInterFace;


# instance fields
.field private bgPath:Ljava/lang/String;

.field private curWorkUid:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private isLandscapeStage:Z

.field private ivClose:Landroid/widget/ImageView;

.field private loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

.field private mDefaultCount:I

.field private mSubmitButton:Landroid/widget/TextView;

.field private mTmpFile:Ljava/io/File;

.field private mode:I

.field private multiImageSelectorFragment:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

.field private resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private submitListener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;

.field private tvShowList:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/nemo/commonui/BaseNemoUIActivity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    const/16 v0, 0x9

    .line 99
    iput v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mDefaultCount:I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    new-instance v0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;-><init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->submitListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->multiImageSelectorFragment:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/util/ArrayList;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mode:I

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->type:I

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->bgPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->isLandscapeStage:Z

    return p0
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->curWorkUid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    return-object p0
.end method

.method private sendNullResult()V
    .registers 7

    .line 404
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->curWorkUid:Ljava/lang/String;

    new-instance v3, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;

    iget v4, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->type:I

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;-><init>(Lcn/codemao/android/sketch/model/ResultInfo;I)V

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;-><init>(Ljava/lang/String;Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->finish()V

    return-void
.end method

.method private updateDoneText(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 275
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b

    goto :goto_15

    .line 278
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 279
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mSubmitButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1b

    .line 276
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mSubmitButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 281
    :goto_1b
    iget v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mode:I

    if-ne v2, v0, :cond_39

    if-lez p1, :cond_39

    .line 282
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mSubmitButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_confirm_with_index:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 284
    :cond_39
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mSubmitButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_confirm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_48
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 410
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 411
    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_alpha_in_preview:I

    sget v1, Lcom/codemao/creativecenter/R$anim;->creative_alpha_out_preview:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "创作页本地相册"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 233
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_28

    if-ne p2, v0, :cond_12

    .line 236
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mTmpFile:Ljava/io/File;

    if-eqz v1, :cond_28

    .line 237
    invoke-virtual {p0, v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->onCameraShot(Ljava/io/File;)V

    goto :goto_28

    .line 242
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mTmpFile:Ljava/io/File;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 243
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mTmpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 245
    iput-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mTmpFile:Ljava/io/File;

    goto :goto_12

    :cond_28
    :goto_28
    const/16 v1, 0x1e61

    if-eq p1, v1, :cond_30

    const/16 v1, 0x4e21

    if-ne p1, v1, :cond_38

    :cond_30
    if-ne p2, v0, :cond_38

    .line 252
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->finish()V

    :cond_38
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method public onCameraShot(Ljava/io/File;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 345
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 346
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p0, v1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->saveImageToGallery2(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    .line 347
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->multiImageSelectorFragment:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->addFile(Ljava/io/File;)V

    :cond_15
    return-void
.end method

.method public onCommit(Lcom/codemao/creativecenter/event/UploadImgEventWrapper;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 431
    :cond_3
    iget-object v0, p1, Lcom/codemao/creativecenter/event/UploadImgEventWrapper;->workUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object p1, p1, Lcom/codemao/creativecenter/event/UploadImgEventWrapper;->workUid:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->curWorkUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_22

    .line 434
    :cond_16
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->ivClose:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$4;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$4;-><init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    :goto_22
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    .line 118
    invoke-super {p0, p1}, Lcom/nemo/commonui/BaseNemoUIActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v0, :cond_e

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_mis_activity_defaultv2_pad:I

    goto :goto_10

    :cond_e
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_mis_activity_defaultv2:I

    :goto_10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 120
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/high16 v2, -0x1000000

    if-lt v0, v1, :cond_29

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 124
    :cond_29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 126
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 129
    :cond_46
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->hideNavigationBar(Landroid/app/Activity;)V

    .line 130
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_58

    .line 132
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 133
    sget v3, Lcom/codemao/creativecenter/R$drawable;->creative_ic_close_white:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 136
    :cond_58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_work_uid"

    .line 137
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->curWorkUid:Ljava/lang/String;

    const-string v4, "extra_is_landscape_stage"

    .line 138
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->isLandscapeStage:Z

    const/16 v4, 0x9

    const-string v5, "max_select_count"

    .line 139
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mDefaultCount:I

    const-string v4, "select_count_mode"

    .line 140
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mode:I

    const-string v6, "show_camera"

    .line 141
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "select_bgpath"

    .line 142
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->bgPath:Ljava/lang/String;

    const-string v8, "select_path"

    .line 143
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->filePath:Ljava/lang/String;

    const-string v8, "select_type"

    .line 144
    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->type:I

    const-string v8, "select_title"

    .line 145
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->title:Ljava/lang/String;

    .line 146
    iget v8, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mode:I

    const-string v9, "default_list"

    if-ne v8, v2, :cond_b6

    invoke-virtual {v0, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 147
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    .line 150
    :cond_b6
    sget v0, Lcom/codemao/creativecenter/R$id;->commit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mSubmitButton:Landroid/widget/TextView;

    .line 151
    sget v0, Lcom/codemao/creativecenter/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 152
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_show_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->tvShowList:Landroid/widget/TextView;

    .line 153
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->ivClose:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mSubmitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->updateDoneText(Ljava/util/ArrayList;)V

    .line 156
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mSubmitButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->submitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_125

    .line 159
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 160
    iget v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mDefaultCount:I

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    iget v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mode:I

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 164
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->curWorkUid:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-direct {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->multiImageSelectorFragment:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    .line 166
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/codemao/creativecenter/R$id;->image_grid:I

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->multiImageSelectorFragment:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    .line 168
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 171
    :cond_125
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->tvShowList:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$1;-><init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->ivClose:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$2;-><init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 416
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 417
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onFolderSelect(Ljava/lang/String;)V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->tvShowList:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 292
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public onImageSelected(Ljava/lang/String;)V
    .registers 3

    .line 297
    iget v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->mode:I

    if-nez v0, :cond_9

    .line 298
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 301
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_16
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->updateDoneText(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onImageSelectedChange(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_11

    .line 309
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 310
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->updateDoneText(Ljava/util/ArrayList;)V

    :cond_11
    return-void
.end method

.method public onImageUnselected(Ljava/lang/String;)V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 337
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 339
    :cond_d
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->updateDoneText(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    .line 265
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 262
    :cond_e
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->sendNullResult()V

    const/4 p1, 0x1

    return p1
.end method

.method public onToEdit(Ljava/lang/String;)V
    .registers 5

    .line 318
    iget v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4c

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->resultList:Ljava/util/ArrayList;

    const-string v2, "imgs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 321
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->bgPath:Ljava/lang/String;

    const-string v2, "select_bgpath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->filePath:Ljava/lang/String;

    const-string v2, "select_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->type:I

    const-string v2, "select_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->title:Ljava/lang/String;

    const-string v2, "select_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chooseImg"

    .line 325
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->curWorkUid:Ljava/lang/String;

    const-string v1, "extra_work_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-boolean p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->isLandscapeStage:Z

    const-string v1, "extra_is_landscape_stage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 329
    sget p1, Lcom/codemao/creativecenter/R$anim;->creative_alpha_in_preview:I

    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_alpha_out_preview:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_4c
    return-void
.end method

.method public showCarmera()V
    .registers 1

    return-void
.end method
