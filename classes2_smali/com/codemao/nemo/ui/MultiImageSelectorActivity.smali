.class public Lcom/codemao/nemo/ui/MultiImageSelectorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MultiImageSelectorActivity.java"

# interfaces
.implements Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;


# instance fields
.field private mDefaultCount:I

.field private mImageViewSubmit:Landroid/widget/ImageView;

.field private mSubmitButton:Landroid/widget/Button;

.field private mTmpFile:Ljava/io/File;

.field private mode:I

.field private multiImageSelectorFragment:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

.field private path:Ljava/lang/String;

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

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    const/16 v0, 0x9

    .line 101
    iput v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mDefaultCount:I

    .line 176
    new-instance v0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;-><init>(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->submitListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;Ljava/lang/String;)I
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->readPictureDegree(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->type:I

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;Ljava/util/ArrayList;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->callBackPicsInfo(Ljava/util/ArrayList;)V

    return-void
.end method

.method private callBackPicsInfo(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 325
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_paths"

    .line 326
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 327
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 329
    invoke-virtual {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->finish()V

    return-void
.end method

.method private readPictureDegree(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 335
    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v2, 0x1

    .line 336
    invoke-virtual {v1, p1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_27

    const/4 v1, 0x3

    if-eq p1, v1, :cond_22

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1d

    const/16 v1, 0x8

    if-eq p1, v1, :cond_18

    goto :goto_2b

    :cond_18
    const/16 p1, 0x10e

    const/16 v0, 0x10e

    goto :goto_2b

    :cond_1d
    const/16 p1, 0x5a

    const/16 v0, 0x5a

    goto :goto_2b

    :cond_22
    const/16 p1, 0xb4

    const/16 v0, 0xb4

    goto :goto_2b

    :catch_27
    move-exception p1

    .line 349
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2b
    return v0
.end method

.method private sendNullResult()V
    .registers 5

    .line 393
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/GetImagePathResult;

    iget v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->type:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/event/GetImagePathResult;-><init>(Lcn/codemao/android/sketch/model/ResultInfo;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 395
    invoke-virtual {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->finish()V

    return-void
.end method

.method private updateDoneText(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const v1, 0x7f1201b6

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 256
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_e

    goto :goto_18

    .line 260
    :cond_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 261
    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_23

    .line 257
    :cond_18
    :goto_18
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 258
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 263
    :goto_23
    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    const v4, 0x7f1201b5

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 264
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    const/4 p1, 0x2

    iget v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, p1

    .line 263
    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public chooseAvatarSuccess(Lcom/codemao/nemo/event/UserAvatarEditEvents;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->finish()V

    return-void
.end method

.method public chooseUserCoverSuccess(Lcom/codemao/nemo/event/UserCoverEditEvents;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->finish()V

    return-void
.end method

.method public chooseWorkCoverSuccess(Lcom/codemao/nemo/event/WorkCoverEditEvents;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->finish()V

    return-void
.end method

.method public finish()V
    .registers 3

    .line 414
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x7f01002f

    const v1, 0x7f010028

    .line 415
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 208
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x64

    if-ne p1, v2, :cond_28

    if-ne p2, v1, :cond_13

    .line 211
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mTmpFile:Ljava/io/File;

    if-eqz p2, :cond_28

    .line 212
    invoke-virtual {p0, p2}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->onCameraShot(Ljava/io/File;)V

    goto :goto_28

    .line 219
    :cond_13
    :goto_13
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mTmpFile:Ljava/io/File;

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_28

    .line 220
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mTmpFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 222
    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mTmpFile:Ljava/io/File;

    goto :goto_13

    .line 227
    :cond_28
    :goto_28
    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/16 p2, 0x1e61

    if-eq p1, p2, :cond_33

    const/16 p2, 0x4e21

    if-ne p1, p2, :cond_61

    :cond_33
    if-eqz p3, :cond_50

    .line 230
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "resultInfo"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/model/ResultInfo;

    .line 231
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/codemao/nemo/event/GetImagePathResult;

    iget v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->type:I

    invoke-direct {p3, p1, v0}, Lcom/codemao/nemo/event/GetImagePathResult;-><init>(Lcn/codemao/android/sketch/model/ResultInfo;I)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_5e

    .line 233
    :cond_50
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/GetImagePathResult;

    iget p3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->type:I

    invoke-direct {p2, v0, p3}, Lcom/codemao/nemo/event/GetImagePathResult;-><init>(Lcn/codemao/android/sketch/model/ResultInfo;I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 235
    :goto_5e
    invoke-virtual {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->finish()V

    :cond_61
    return-void
.end method

.method public onCameraShot(Ljava/io/File;)V
    .registers 8

    .line 288
    const-class v0, Lcom/codemao/nemo/activity/CoverEditActivity;

    if-eqz p1, :cond_7a

    .line 289
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-direct {p0, v1}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->readPictureDegree(Ljava/lang/String;)I

    move-result v2

    .line 291
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 293
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->multiImageSelectorFragment:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-virtual {v3, p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->addFile(Ljava/io/File;)V

    .line 296
    iget p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->type:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne p1, v3, :cond_32

    .line 297
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->path:Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v0, v4}, Lcn/codemao/android/sketch/CodemaoSketch;->goBitmapBackgroundActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7a

    :cond_32
    const/4 v3, 0x4

    if-ne p1, v3, :cond_39

    .line 299
    invoke-static {p0, v1, v2}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->start(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_7a

    :cond_39
    const/16 v3, 0x29

    if-ne p1, v3, :cond_41

    .line 301
    invoke-static {p0, v1, v2, v4}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->start(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_7a

    :cond_41
    const/4 v3, 0x5

    const-string v4, "degree"

    const-string v5, "imagePath"

    if-ne p1, v3, :cond_57

    .line 303
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7a

    :cond_57
    const/4 v3, 0x6

    if-ne p1, v3, :cond_6e

    .line 308
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    .line 309
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7a

    .line 314
    :cond_6e
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->callBackPicsInfo(Ljava/util/ArrayList;)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    .line 111
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d028e

    .line 112
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 113
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1f

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1f
    const v0, 0x7f0a07c2

    .line 117
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const-string v1, "选择图片"

    .line 118
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 123
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    .line 125
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v2, 0x7f0803f6

    .line 126
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 129
    :cond_40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x9

    const-string v3, "max_select_count"

    .line 130
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mDefaultCount:I

    const-string v2, "select_count_mode"

    .line 131
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mode:I

    const-string v4, "show_camera"

    .line 132
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "select_path"

    .line 133
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->path:Ljava/lang/String;

    const-string v6, "select_type"

    const/4 v7, 0x0

    .line 134
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->type:I

    const-string v6, "select_title"

    .line 135
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget v6, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mode:I

    const-string v8, "default_list"

    if-ne v6, v1, :cond_84

    invoke-virtual {v0, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 137
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    :cond_84
    const v0, 0x7f0a0180

    .line 140
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    const v0, 0x7f0a0384

    .line 141
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mImageViewSubmit:Landroid/widget/ImageView;

    .line 142
    iget v6, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mode:I

    const/16 v9, 0x8

    if-eq v6, v1, :cond_a9

    .line 143
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b1

    .line 146
    :cond_a9
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    :goto_b1
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->updateDoneText(Ljava/util/ArrayList;)V

    .line 150
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->submitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mImageViewSubmit:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->submitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_fb

    .line 154
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 155
    iget v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iget v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mode:I

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 159
    new-instance v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->multiImageSelectorFragment:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    .line 160
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a030d

    iget-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->multiImageSelectorFragment:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    .line 162
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_fb
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 420
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 421
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onImageSelected(Ljava/lang/String;)V
    .registers 3

    .line 269
    iget v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mode:I

    if-nez v0, :cond_9

    .line 270
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    :cond_9
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 273
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_16
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->updateDoneText(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onImageUnselected(Ljava/lang/String;)V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 281
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    :cond_d
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->updateDoneText(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 385
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 386
    invoke-direct {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->sendNullResult()V

    const/4 p1, 0x1

    return p1

    .line 389
    :cond_c
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 243
    :cond_e
    invoke-direct {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->sendNullResult()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 170
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->multiImageSelectorFragment:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    if-eqz v0, :cond_a

    .line 172
    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_a
    return-void
.end method

.method public showCarmera()V
    .registers 4

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 360
    :try_start_11
    invoke-static {p0}, Lcom/giu/xzz/utils/FileUtil;->createTmpFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mTmpFile:Ljava/io/File;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v1

    .line 362
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 364
    :goto_1c
    iget-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mTmpFile:Ljava/io/File;

    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 366
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_48

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mis.fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mTmpFile:Ljava/io/File;

    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_4e

    .line 369
    :cond_48
    iget-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->mTmpFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_4e
    const-string v2, "output"

    .line 371
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 372
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const v0, 0x7f01002c

    const v1, 0x7f01002b

    .line 373
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_6f

    :cond_62
    const v0, 0x7f1201b7

    .line 375
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    goto :goto_6f

    :cond_69
    const v0, 0x7f1201bb

    .line 378
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    :goto_6f
    return-void
.end method
