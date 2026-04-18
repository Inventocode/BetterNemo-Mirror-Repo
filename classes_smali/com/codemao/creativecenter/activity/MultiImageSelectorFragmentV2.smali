.class public Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;
.super Landroidx/fragment/app/Fragment;
.source "MultiImageSelectorFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;
    }
.end annotation


# instance fields
.field private chooseFolderName:Ljava/lang/String;

.field private curWorkUid:Ljava/lang/String;

.field private hasFolderGened:Z

.field private mCallback:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

.field private mGridView:Landroid/widget/GridView;

.field private mImageAdapter:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

.field private mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mResultFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativestore/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpFile:Ljava/io/File;

.field private resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mResultFolder:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->hasFolderGened:Z

    .line 407
    new-instance v0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$5;-><init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mImageAdapter:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->showCameraAction()V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->hasFolderGened:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Z)Z
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->hasFolderGened:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Ljava/lang/String;)Lcom/codemao/creativestore/bean/Folder;
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->getFolderByPath(Ljava/lang/String;)Lcom/codemao/creativestore/bean/Folder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Lcom/codemao/creativestore/bean/Image;I)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->selectImageFromGrid(Lcom/codemao/creativestore/bean/Image;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mCallback:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-object p0
.end method

.method static synthetic access$502(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->chooseFolderName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Z
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->showCamera()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Ljava/util/ArrayList;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mResultFolder:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Ljava/util/ArrayList;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Landroid/widget/GridView;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method private getFolderByPath(Ljava/lang/String;)Lcom/codemao/creativestore/bean/Folder;
    .registers 5

    .line 560
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mResultFolder:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 561
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/Folder;

    .line 562
    iget-object v2, v1, Lcom/codemao/creativestore/bean/Folder;->path:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private initSize()I
    .registers 5

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_13

    move v0, v1

    .line 226
    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42e00000  # 112.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    div-int v1, v0, v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_2c

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    div-int v3, v0, v1

    :cond_2c
    return v3
.end method

.method private requestPermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 334
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 335
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_mis_permission_dialog_title:I

    .line 336
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 337
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_mis_permission_dialog_ok:I

    new-instance v1, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$4;

    invoke-direct {v1, p0, p1, p3}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$4;-><init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Ljava/lang/String;I)V

    .line 338
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/codemao/creativecenter/R$string;->creative_mis_permission_dialog_cancel:I

    const/4 p3, 0x0

    .line 344
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_3c

    :cond_33
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 347
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_3c
    return-void
.end method

.method private selectImageCount()I
    .registers 3

    .line 599
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    const/16 v0, 0x9

    goto :goto_13

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "max_select_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_13
    return v0
.end method

.method private selectImageFromGrid(Lcom/codemao/creativestore/bean/Image;I)V
    .registers 4

    if-eqz p1, :cond_8b

    const/4 v0, 0x1

    if-ne p2, v0, :cond_54

    .line 371
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 372
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 373
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mCallback:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    if-eqz p2, :cond_4e

    .line 374
    iget-object v0, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;->onImageUnselected(Ljava/lang/String;)V

    goto :goto_4e

    .line 377
    :cond_20
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->selectImageCount()I

    move-result p2

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_3e

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_import_maximum_n_pictures:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 382
    :cond_3e
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mCallback:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    if-eqz p2, :cond_4e

    .line 384
    iget-object v0, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;->onImageSelected(Ljava/lang/String;)V

    .line 387
    :cond_4e
    :goto_4e
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mImageAdapter:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->select(Lcom/codemao/creativestore/bean/Image;)V

    goto :goto_8b

    :cond_54
    if-nez p2, :cond_8b

    .line 389
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mImageAdapter:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->select(Lcom/codemao/creativestore/bean/Image;)V

    .line 390
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    .line 391
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 392
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mCallback:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    if-eqz p2, :cond_8b

    .line 393
    iget-object p1, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;->onImageUnselected(Ljava/lang/String;)V

    goto :goto_8b

    .line 396
    :cond_76
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 397
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mCallback:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    if-eqz p2, :cond_8b

    .line 399
    iget-object p1, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;->onImageSelected(Ljava/lang/String;)V

    :cond_8b
    :goto_8b
    return-void
.end method

.method private selectMode()I
    .registers 3

    .line 595
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_12

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "select_count_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_12
    return v0
.end method

.method private showCamera()Z
    .registers 4

    .line 591
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "show_camera"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    return v1
.end method

.method private showCameraAction()V
    .registers 4

    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1e

    .line 323
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 325
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_mis_permission_rationale_camera:I

    .line 326
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6e

    .line 325
    invoke-direct {p0, v1, v0, v2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->requestPermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_23

    .line 329
    :cond_1e
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mCallback:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    invoke-interface {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;->showCarmera()V

    :goto_23
    return-void
.end method


# virtual methods
.method public addFile(Ljava/io/File;)V
    .registers 8

    if-eqz p1, :cond_59

    .line 534
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_59

    .line 537
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 538
    new-instance v1, Lcom/codemao/creativestore/bean/Image;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/codemao/creativestore/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz v0, :cond_59

    .line 539
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 540
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->getFolderByPath(Ljava/lang/String;)Lcom/codemao/creativestore/bean/Folder;

    move-result-object v2

    if-nez v2, :cond_4f

    .line 543
    new-instance v2, Lcom/codemao/creativestore/bean/Folder;

    invoke-direct {v2}, Lcom/codemao/creativestore/bean/Folder;-><init>()V

    .line 544
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/codemao/creativestore/bean/Folder;->name:Ljava/lang/String;

    .line 545
    iput-object p1, v2, Lcom/codemao/creativestore/bean/Folder;->path:Ljava/lang/String;

    .line 546
    iput-object v1, v2, Lcom/codemao/creativestore/bean/Folder;->cover:Lcom/codemao/creativestore/bean/Image;

    .line 547
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 548
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    iput-object p1, v2, Lcom/codemao/creativestore/bean/Folder;->images:Ljava/util/List;

    .line 550
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mResultFolder:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 552
    :cond_4f
    iget-object p1, v2, Lcom/codemao/creativestore/bean/Folder;->images:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    :goto_54
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mImageAdapter:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_59
    :goto_59
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    .line 290
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 292
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 297
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    if-ne p1, p3, :cond_2c

    const/4 p1, -0x1

    if-ne p2, p1, :cond_16

    .line 300
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mTmpFile:Ljava/io/File;

    if-eqz p1, :cond_2c

    .line 301
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mCallback:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    if-eqz p2, :cond_2c

    .line 302
    invoke-interface {p2, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;->onCameraShot(Ljava/io/File;)V

    goto :goto_2c

    .line 307
    :cond_16
    :goto_16
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mTmpFile:Ljava/io/File;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 308
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mTmpFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    .line 310
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mTmpFile:Ljava/io/File;

    goto :goto_16

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 128
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 130
    :try_start_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mCallback:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_c

    return-void

    .line 132
    :catch_c
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "The Activity must implement MultiImageSelectorFragment.Callback interface..."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCommit(Lcom/codemao/creativecenter/event/UpdateResulListEventWrapper;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_3e

    .line 573
    iget-object v0, p1, Lcom/codemao/creativecenter/event/UpdateResulListEventWrapper;->result:Lcom/codemao/creativecenter/event/UpdateResulListEvent;

    if-nez v0, :cond_7

    goto :goto_3e

    .line 576
    :cond_7
    iget-object v0, p1, Lcom/codemao/creativecenter/event/UpdateResulListEventWrapper;->workUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p1, Lcom/codemao/creativecenter/event/UpdateResulListEventWrapper;->workUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->curWorkUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_3e

    .line 579
    :cond_1a
    iget-object p1, p1, Lcom/codemao/creativecenter/event/UpdateResulListEventWrapper;->result:Lcom/codemao/creativecenter/event/UpdateResulListEvent;

    .line 580
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 581
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/event/UpdateResulListEvent;->getResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 582
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mCallback:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    if-eqz v0, :cond_35

    .line 583
    invoke-virtual {p1}, Lcom/codemao/creativecenter/event/UpdateResulListEvent;->getResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;->onImageSelectedChange(Ljava/util/ArrayList;)V

    .line 585
    :cond_35
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mImageAdapter:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/event/UpdateResulListEvent;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->reseetMSelectImage(Ljava/util/ArrayList;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_nemo_all_pictures:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->chooseFolderName:Ljava/lang/String;

    .line 117
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 138
    sget p3, Lcom/codemao/creativecenter/R$layout;->creative_mis_fragment_multi_imagev2:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 122
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 123
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    .line 354
    aget p1, p3, p1

    if-nez p1, :cond_10

    .line 355
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->showCameraAction()V

    goto :goto_10

    .line 359
    :cond_d
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_10
    :goto_10
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 276
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mTmpFile:Ljava/io/File;

    const-string v1, "key_temp_file"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 12

    .line 143
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_work_uid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->curWorkUid:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->selectMode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2a

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "default_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2a

    .line 151
    iput-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    .line 154
    :cond_2a
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->initSize()I

    move-result v1

    .line 155
    new-instance v2, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->resultList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->showCamera()Z

    move-result v6

    new-instance v8, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;

    invoke-direct {v8, p0, p2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;-><init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;I)V

    move-object v3, v2

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;-><init>(Landroid/content/Context;Ljava/util/List;ZILcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;)V

    iput-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mImageAdapter:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    .line 196
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->selectImageCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->setMaxCount(I)V

    .line 197
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mImageAdapter:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    if-ne p2, v0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    invoke-virtual {v2, v0}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->showSelectIndicator(Z)V

    .line 198
    sget p2, Lcom/codemao/creativecenter/R$id;->grid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mGridView:Landroid/widget/GridView;

    .line 199
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 200
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mGridView:Landroid/widget/GridView;

    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mImageAdapter:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mGridView:Landroid/widget/GridView;

    new-instance p2, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$2;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$2;-><init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3

    .line 282
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_f

    const-string v0, "key_temp_file"

    .line 284
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mTmpFile:Ljava/io/File;

    :cond_f
    return-void
.end method

.method public showChooseList()V
    .registers 5

    .line 233
    new-instance v0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->mResultFolder:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->chooseFolderName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 234
    new-instance v1, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;

    invoke-direct {v1, p0, v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;-><init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->setItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 266
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 269
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method
