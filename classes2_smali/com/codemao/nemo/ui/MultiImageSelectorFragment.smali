.class public Lcom/codemao/nemo/ui/MultiImageSelectorFragment;
.super Landroidx/fragment/app/Fragment;
.source "MultiImageSelectorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;
    }
.end annotation


# instance fields
.field private hasFolderGened:Z

.field private mCallback:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;

.field private mCategoryText:Landroid/widget/TextView;

.field private mFolderAdapter:Lcom/codemao/nemo/adapter/FolderAdapter;

.field private mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

.field private mGridView:Landroid/widget/GridView;

.field private mImageAdapter:Lcom/codemao/nemo/adapter/ImageGridAdapter;

.field private mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupAnchorView:Landroid/view/View;

.field private mResultFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/bean/Folder;",
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

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->hasFolderGened:Z

    .line 403
    new-instance v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$6;-><init>(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)V

    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->createPopupFolderList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroid/widget/GridView;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->hasFolderGened:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->hasFolderGened:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;Ljava/lang/String;)Lcom/codemao/nemo/bean/Folder;
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->getFolderByPath(Ljava/lang/String;)Lcom/codemao/nemo/bean/Folder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/FolderAdapter;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderAdapter:Lcom/codemao/nemo/adapter/FolderAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/ImageGridAdapter;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mImageAdapter:Lcom/codemao/nemo/adapter/ImageGridAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->showCameraAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;Lcom/codemao/nemo/bean/Image;I)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->selectImageFromGrid(Lcom/codemao/nemo/bean/Image;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroid/widget/TextView;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Z
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->showCamera()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private createPopupFolderList()V
    .registers 6

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 214
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 215
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f100000  # 0.5625f

    mul-float v0, v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x42a60000  # 83.0f

    .line 216
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    .line 217
    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderAdapter:Lcom/codemao/nemo/adapter/FolderAdapter;

    invoke-virtual {v3}, Lcom/codemao/nemo/adapter/FolderAdapter;->getCount()I

    move-result v3

    mul-int v3, v3, v2

    if-ge v3, v0, :cond_2a

    .line 218
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderAdapter:Lcom/codemao/nemo/adapter/FolderAdapter;

    invoke-virtual {v0}, Lcom/codemao/nemo/adapter/FolderAdapter;->getCount()I

    move-result v0

    mul-int v0, v0, v2

    .line 220
    :cond_2a
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    .line 221
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, -0x1000000

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderAdapter:Lcom/codemao/nemo/adapter/FolderAdapter;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 224
    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    .line 225
    iget-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 226
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mPopupAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 228
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance v1, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;-><init>(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private getFolderByPath(Ljava/lang/String;)Lcom/codemao/nemo/bean/Folder;
    .registers 5

    .line 537
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/Folder;

    .line 539
    iget-object v2, v1, Lcom/codemao/nemo/bean/Folder;->path:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private selectImageCount()I
    .registers 3

    .line 556
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

.method private selectImageFromGrid(Lcom/codemao/nemo/bean/Image;I)V
    .registers 5

    if-eqz p1, :cond_50

    .line 374
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/codemao/nemo/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 375
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/codemao/nemo/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mCallback:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;

    if-eqz p2, :cond_4b

    .line 377
    iget-object v0, p1, Lcom/codemao/nemo/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;->onImageUnselected(Ljava/lang/String;)V

    goto :goto_4b

    .line 380
    :cond_1d
    invoke-direct {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->selectImageCount()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1201ba

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    :cond_34
    if-nez p2, :cond_3b

    .line 385
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 387
    :cond_3b
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/codemao/nemo/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mCallback:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;

    if-eqz p2, :cond_4b

    .line 389
    iget-object v0, p1, Lcom/codemao/nemo/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;->onImageSelected(Ljava/lang/String;)V

    .line 394
    :cond_4b
    :goto_4b
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mImageAdapter:Lcom/codemao/nemo/adapter/ImageGridAdapter;

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->select(Lcom/codemao/nemo/bean/Image;)V

    :cond_50
    return-void
.end method

.method private selectMode()I
    .registers 3

    .line 552
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

    .line 548
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
    .registers 6

    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_24

    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    .line 330
    sget-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x6e

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "TYPE_OPEN_CAMERA"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_29

    .line 332
    :cond_24
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mCallback:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;

    invoke-interface {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;->showCarmera()V

    :goto_29
    return-void
.end method


# virtual methods
.method public addFile(Ljava/io/File;)V
    .registers 8

    if-eqz p1, :cond_5e

    .line 510
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5e

    .line 513
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 514
    new-instance v1, Lcom/codemao/nemo/bean/Image;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/codemao/nemo/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz v0, :cond_5e

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 516
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 517
    invoke-direct {p0, p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->getFolderByPath(Ljava/lang/String;)Lcom/codemao/nemo/bean/Folder;

    move-result-object v2

    if-nez v2, :cond_4f

    .line 519
    new-instance v2, Lcom/codemao/nemo/bean/Folder;

    invoke-direct {v2}, Lcom/codemao/nemo/bean/Folder;-><init>()V

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/codemao/nemo/bean/Folder;->name:Ljava/lang/String;

    .line 521
    iput-object p1, v2, Lcom/codemao/nemo/bean/Folder;->path:Ljava/lang/String;

    .line 522
    iput-object v1, v2, Lcom/codemao/nemo/bean/Folder;->cover:Lcom/codemao/nemo/bean/Image;

    .line 523
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 524
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    iput-object p1, v2, Lcom/codemao/nemo/bean/Folder;->images:Ljava/util/List;

    .line 526
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 528
    :cond_4f
    iget-object p1, v2, Lcom/codemao/nemo/bean/Folder;->images:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :goto_54
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderAdapter:Lcom/codemao/nemo/adapter/FolderAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 531
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mImageAdapter:Lcom/codemao/nemo/adapter/ImageGridAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    .line 286
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    if-ne p1, p3, :cond_2c

    const/4 p1, -0x1

    if-ne p2, p1, :cond_16

    .line 296
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    if-eqz p1, :cond_2c

    .line 297
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mCallback:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;

    if-eqz p2, :cond_2c

    .line 298
    invoke-interface {p2, p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;->onCameraShot(Ljava/io/File;)V

    goto :goto_2c

    .line 303
    :cond_16
    :goto_16
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 304
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    goto :goto_16

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 118
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 120
    :try_start_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;

    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mCallback:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$Callback;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_c

    return-void

    .line 122
    :catch_c
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "The Activity must implement MultiImageSelectorFragment.Callback interface..."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz v0, :cond_f

    .line 316
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 317
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 320
    :cond_f
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d028f

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    const/16 p2, 0x6e

    if-ne p1, p2, :cond_19

    .line 357
    array-length p1, p3

    if-lez p1, :cond_10

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_10

    .line 358
    invoke-direct {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->showCameraAction()V

    goto :goto_19

    .line 361
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "无访问权限，打开相机失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 272
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 273
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    const-string v1, "key_temp_file"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8

    .line 133
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    invoke-direct {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->selectMode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1e

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "default_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1e

    .line 139
    iput-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    .line 142
    :cond_1e
    new-instance v1, Lcom/codemao/nemo/adapter/ImageGridAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->showCamera()Z

    move-result v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/nemo/adapter/ImageGridAdapter;-><init>(Landroid/content/Context;ZI)V

    iput-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mImageAdapter:Lcom/codemao/nemo/adapter/ImageGridAdapter;

    if-ne p2, v0, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    .line 143
    :goto_32
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->showSelectIndicator(Z)V

    const v0, 0x7f0a02a1

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mPopupAnchorView:Landroid/view/View;

    const v0, 0x7f0a0104

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;

    const v1, 0x7f1201b9

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$1;-><init>(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02bb

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mImageAdapter:Lcom/codemao/nemo/adapter/ImageGridAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    new-instance v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$2;-><init>(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;I)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    new-instance p2, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$3;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$3;-><init>(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 206
    new-instance p1, Lcom/codemao/nemo/adapter/FolderAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/nemo/adapter/FolderAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mFolderAdapter:Lcom/codemao/nemo/adapter/FolderAdapter;

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3

    .line 278
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_f

    const-string v0, "key_temp_file"

    .line 280
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    :cond_f
    return-void
.end method
