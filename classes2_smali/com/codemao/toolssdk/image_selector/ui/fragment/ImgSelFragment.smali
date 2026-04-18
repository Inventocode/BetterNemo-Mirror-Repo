.class public Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;
.super Landroidx/fragment/app/Fragment;
.source "ImgSelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private btnAlbumSelected:Landroid/widget/Button;

.field private callback:Lcom/codemao/toolssdk/image_selector/common/Callback;

.field private config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

.field private folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/image_selector/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private folderListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

.field private folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

.field private hasFolderGened:Z

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/image_selector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private imageListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

.field private mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private rvImageList:Landroidx/recyclerview/widget/RecyclerView;

.field private tempFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$PhmFIRYwzxymtrZSxdATTHbd_sU(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;Landroidx/fragment/app/FragmentActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->lambda$initNotchScreen$0(Landroidx/fragment/app/FragmentActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderList:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->hasFolderGened:Z

    .line 235
    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$3;-><init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;ILcom/codemao/toolssdk/image_selector/bean/Image;)I
    .registers 3

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->checkedImage(ILcom/codemao/toolssdk/image_selector/bean/Image;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroid/widget/Button;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->btnAlbumSelected:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->showCameraAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/common/Callback;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->callback:Lcom/codemao/toolssdk/image_selector/common/Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Z
    .registers 1

    .line 73
    iget-boolean p0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->hasFolderGened:Z

    return p0
.end method

.method static synthetic access$502(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;Z)Z
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->hasFolderGened:Z

    return p1
.end method

.method static synthetic access$600(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Ljava/util/List;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Ljava/util/List;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

    return-object p0
.end method

.method private checkedImage(ILcom/codemao/toolssdk/image_selector/bean/Image;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_64

    .line 212
    sget-object v1, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    .line 213
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 215
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->callback:Lcom/codemao/toolssdk/image_selector/common/Callback;

    if-eqz p1, :cond_63

    .line 216
    iget-object p2, p2, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/codemao/toolssdk/image_selector/common/Callback;->onImageUnselected(Ljava/lang/String;)V

    goto :goto_63

    .line 219
    :cond_24
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget v1, v1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->maxNum:I

    sget-object v3, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v1, v3, :cond_4e

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_maxnum:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget v2, v2, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->maxNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return v0

    .line 224
    :cond_4e
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 226
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->callback:Lcom/codemao/toolssdk/image_selector/common/Callback;

    if-eqz p1, :cond_63

    .line 227
    iget-object p2, p2, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/codemao/toolssdk/image_selector/common/Callback;->onImageSelected(Ljava/lang/String;)V

    :cond_63
    :goto_63
    return v2

    :cond_64
    return v0
.end method

.method private createPopupFolderList(II)V
    .registers 6

    .line 326
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    .line 328
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 331
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    .line 332
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 333
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 334
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 335
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

    new-instance p2, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;-><init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)V

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->setOnFloderChangeListener(Lcom/codemao/toolssdk/image_selector/common/OnFolderChangeListener;)V

    .line 356
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance p2, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$5;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$5;-><init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private initNotchScreen()V
    .registers 4

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 189
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    :cond_12
    return-void
.end method

.method public static instance()Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;
    .registers 2

    .line 100
    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-direct {v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;-><init>()V

    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 102
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private synthetic lambda$initNotchScreen$0(Landroidx/fragment/app/FragmentActivity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 5

    .line 192
    iget-boolean v0, p2, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->hasNotch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_20

    .line 194
    iget-object v0, p2, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 195
    iget-object p2, p2, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 198
    :cond_20
    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    int-to-float v0, v1

    const/high16 v1, 0x41800000  # 16.0f

    .line 199
    invoke-static {p1, v1}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 200
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method private showCameraAction()V
    .registers 7

    .line 418
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget v0, v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->maxNum:I

    sget-object v1, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_2c

    .line 419
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$string;->toolsdk_maxnum:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget v4, v4, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->maxNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    .line 423
    :cond_2c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    .line 425
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 429
    :cond_40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_e5

    .line 432
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->createRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    .line 433
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/utils/LogUtils;->e(Ljava/lang/Object;)V

    .line 434
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->createFile(Ljava/io/File;)Ljava/lang/String;

    .line 436
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".image_provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    .line 436
    invoke-static {v1, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 439
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 440
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 441
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_db

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 442
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 443
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v1, v5}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_c2

    :cond_db
    const-string v2, "output"

    .line 447
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 448
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f6

    .line 450
    :cond_e5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$string;->toolsdk_open_camera_failure:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_f6
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_21

    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    .line 458
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_21

    .line 459
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->callback:Lcom/codemao/toolssdk/image_selector/common/Callback;

    if-eqz v1, :cond_21

    .line 460
    invoke-interface {v1, v0}, Lcom/codemao/toolssdk/image_selector/common/Callback;->onCameraShot(Ljava/io/File;)V

    goto :goto_21

    .line 464
    :cond_12
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 465
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 469
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 470
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->btnAlbumSelected:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 374
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->showOrDismissFolderPopupWindow()V

    :cond_f
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 108
    sget p3, Lcom/codemao/toolssdk/R$layout;->toolsdk_fragment_img_sel:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 109
    sget p2, Lcom/codemao/toolssdk/R$id;->rvImageList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    sget p2, Lcom/codemao/toolssdk/R$id;->btnAlbumSelected:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->btnAlbumSelected:Landroid/widget/Button;

    .line 111
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget p2, Lcom/codemao/toolssdk/R$id;->rlBottom:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget-boolean v0, v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->needCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 497
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->callback:Lcom/codemao/toolssdk/image_selector/common/Callback;

    add-int/2addr p1, v1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, p1, v2, v1}, Lcom/codemao/toolssdk/image_selector/common/Callback;->onPreviewChanged(IIZ)V

    goto :goto_21

    .line 499
    :cond_15
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->callback:Lcom/codemao/toolssdk/image_selector/common/Callback;

    add-int/2addr p1, v1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, p1, v2, v1}, Lcom/codemao/toolssdk/image_selector/common/Callback;->onPreviewChanged(IIZ)V

    :goto_21
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 475
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    goto :goto_24

    .line 478
    :cond_7
    array-length p1, p3

    const/4 v0, 0x0

    if-lt p1, p2, :cond_13

    aget p1, p3, v0

    if-nez p1, :cond_13

    .line 479
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->showCameraAction()V

    goto :goto_24

    .line 481
    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_camera_denied:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_24
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    .line 118
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->getConfig()Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->callback:Lcom/codemao/toolssdk/image_selector/common/Callback;

    .line 122
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    if-nez p1, :cond_23

    const-string p1, "ImgSelFragment"

    const-string p2, "config 参数不能为空"

    .line 123
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_23
    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->btnAlbumSelected:Landroid/widget/Button;

    iget-object p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->allImagesText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$1;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 141
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget-boolean p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->needCamera:Z

    if-eqz p1, :cond_44

    .line 142
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    new-instance p2, Lcom/codemao/toolssdk/image_selector/bean/Image;

    invoke-direct {p2}, Lcom/codemao/toolssdk/image_selector/bean/Image;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_44
    new-instance p1, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    .line 145
    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget-boolean p2, p2, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->needCamera:Z

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->setShowCamera(Z)V

    .line 146
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    iget-boolean p2, p2, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->multiSelect:Z

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->setMutiSelect(Z)V

    .line 147
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->imageListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    new-instance p2, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$2;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$2;-><init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)V

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->setOnItemClickListener(Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;)V

    .line 170
    new-instance p1, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderList:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->config:Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    invoke-direct {p1, p2, v0, v1}, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/toolssdk/image_selector/config/ISListConfig;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 p2, 0x8

    if-eqz p1, :cond_b1

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->mLoaderCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 174
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a9

    .line 176
    invoke-virtual {p0, p2}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->setLayoutManager(I)V

    goto :goto_b4

    :cond_a9
    const/4 p2, 0x1

    if-ne p1, p2, :cond_b4

    const/4 p1, 0x4

    .line 178
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->setLayoutManager(I)V

    goto :goto_b4

    .line 181
    :cond_b1
    invoke-virtual {p0, p2}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->setLayoutManager(I)V

    .line 183
    :cond_b4
    :goto_b4
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->initNotchScreen()V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .registers 3

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 367
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setLayoutManager(I)V
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 207
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showOrDismissFolderPopupWindow()V
    .registers 6

    .line 379
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    if-nez v1, :cond_15

    .line 381
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->rvImageList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    add-int/lit8 v2, v0, 0x5

    invoke-direct {p0, v1, v2}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->createPopupFolderList(II)V

    .line 384
    :cond_15
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 385
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 386
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->callback:Lcom/codemao/toolssdk/image_selector/common/Callback;

    invoke-interface {v0}, Lcom/codemao/toolssdk/image_selector/common/Callback;->onDismissFolderPopup()V

    goto :goto_7e

    .line 388
    :cond_28
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 389
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->callback:Lcom/codemao/toolssdk/image_selector/common/Callback;

    invoke-interface {v1}, Lcom/codemao/toolssdk/image_selector/common/Callback;->onShowFolderPopup()V

    .line 390
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 391
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/codemao/toolssdk/R$color;->bottom_bg:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 393
    :cond_52
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderListAdapter:Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->getSelectIndex()I

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_5d

    :cond_5b
    add-int/lit8 v1, v1, -0x1

    .line 395
    :goto_5d
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 397
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->folderPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;-><init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const v0, 0x3f19999a  # 0.6f

    .line 412
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->setBackgroundAlpha(F)V

    :goto_7e
    return-void
.end method
