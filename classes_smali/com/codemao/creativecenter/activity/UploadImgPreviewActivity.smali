.class public Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;
.super Lcom/nemo/commonui/BaseNemoUIActivity;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/ViewNameInterFace;


# instance fields
.field private bgPath:Ljava/lang/String;

.field blurringView:Lcn/codemao/android/sketch/view/BlurringView;

.field private cachePath:Ljava/lang/String;

.field private chooseImg:Ljava/lang/String;

.field private curWorkUid:Ljava/lang/String;

.field private end:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field flList:Landroid/widget/FrameLayout;

.field flPick:Landroid/widget/FrameLayout;

.field private imgRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isBitmapOut:Z

.field private isLandscapeStage:Z

.field private itemWitdh:I

.field ivBack:Landroid/widget/ImageView;

.field ivEdit:Landroid/widget/TextView;

.field ivEditSingle:Landroid/widget/TextView;

.field ivNotPick:Landroid/widget/ImageView;

.field ivPick:Landroid/widget/ImageView;

.field ivSelect:Lcom/codemao/creativecenter/customview/CreativeScaleImageView;

.field private loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

.field private needToZipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private padding:I

.field rlList:Landroid/widget/RelativeLayout;

.field root:Landroid/widget/RelativeLayout;

.field private screenWitdh:I

.field private selectPostion:I

.field private title:Ljava/lang/String;

.field tvAdd:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Lcom/nemo/commonui/BaseNemoUIActivity;-><init>()V

    const/4 v0, 0x1

    .line 85
    iput v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->type:I

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->needToZipMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    .line 97
    iput v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->padding:I

    const/16 v1, -0x63

    .line 99
    iput v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->selectPostion:I

    .line 100
    iput-boolean v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->isBitmapOut:Z

    .line 102
    iput-boolean v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->isLandscapeStage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Z)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->doShowAnim(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->isBitmapOut:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Z)Z
    .registers 2

    .line 69
    iput-boolean p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->isBitmapOut:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->chooseImg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->chooseImg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I
    .registers 1

    .line 69
    iget p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->selectPostion:I

    return p0
.end method

.method static synthetic access$1202(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;I)I
    .registers 2

    .line 69
    iput p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->selectPostion:I

    return p1
.end method

.method static synthetic access$1300(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Z)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->setBottomVisible(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->donNotSelectAnim()V

    return-void
.end method

.method static synthetic access$1500(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;I)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->doDeletAnim(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->doSelectAnim()V

    return-void
.end method

.method static synthetic access$1700(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->doAddAnim()V

    return-void
.end method

.method static synthetic access$1800(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I
    .registers 1

    .line 69
    iget p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->type:I

    return p0
.end method

.method static synthetic access$1900(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->bgPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I
    .registers 1

    .line 69
    iget p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->screenWitdh:I

    return p0
.end method

.method static synthetic access$2000(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;I)I
    .registers 2

    .line 69
    iput p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->screenWitdh:I

    return p1
.end method

.method static synthetic access$2100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->cachePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->end:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->isLandscapeStage:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->commit()V

    return-void
.end method

.method static synthetic access$2500(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->initFileImg(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->saveImg(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->initImg()V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->initSize()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->initListView()V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->setListData()V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/Map;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgRecords:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->curWorkUid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->showTool()V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->hideTool()V

    return-void
.end method

.method private commit()V
    .registers 5

    .line 482
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    if-nez v0, :cond_1e

    .line 483
    new-instance v0, Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_saving_material:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    const/4 v1, 0x0

    .line 484
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 485
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 487
    :cond_1e
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;->show()V

    .line 488
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private deleteNotUse()V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->cachePath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteDirectory(Ljava/lang/String;)V

    return-void
.end method

.method private doAddAnim()V
    .registers 11

    .line 808
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->getListLeft(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0x9

    if-ge v2, v3, :cond_8a

    .line 810
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flList:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;

    .line 811
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 812
    iget v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->padding:I

    iget v5, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    add-int/2addr v4, v5

    mul-int v4, v4, v2

    add-int/2addr v4, v0

    .line 813
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    const/4 v6, 0x0

    .line 814
    invoke-virtual {v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 815
    iget-object v6, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const-wide/16 v8, 0x12c

    if-ge v2, v6, :cond_44

    int-to-float v3, v4

    .line 816
    invoke-virtual {v5, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_87

    .line 817
    :cond_44
    iget-object v6, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    if-ne v2, v6, :cond_82

    .line 818
    invoke-virtual {v3, v7}, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->setSelectOrNot(Z)V

    .line 819
    iget-object v6, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->setImageFile(Ljava/lang/String;)V

    const v6, 0x3f4ccccd  # 0.8f

    .line 820
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 821
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 v6, 0x0

    .line 822
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    int-to-float v4, v4

    .line 823
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    const/high16 v3, 0x3f800000  # 1.0f

    .line 825
    invoke-virtual {v5, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_87

    :cond_82
    const/16 v4, 0x8

    .line 827
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_8a
    return-void
.end method

.method private doDeletAnim(I)V
    .registers 10

    .line 834
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->getListLeft(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 835
    :goto_e
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7f

    .line 836
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flList:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;

    .line 837
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 839
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/4 v4, 0x0

    .line 840
    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const-wide/16 v4, 0x12c

    if-ge v2, p1, :cond_42

    .line 842
    iget v6, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->padding:I

    iget v7, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    add-int/2addr v6, v7

    mul-int v6, v6, v2

    add-int/2addr v6, v0

    int-to-float v6, v6

    .line 843
    invoke-virtual {v3, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_7c

    :cond_42
    if-le v2, p1, :cond_5b

    .line 845
    iget v6, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->padding:I

    iget v7, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    add-int/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    mul-int v6, v6, v7

    add-int/2addr v6, v0

    int-to-float v6, v6

    .line 846
    invoke-virtual {v3, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_7c

    .line 848
    :cond_5b
    new-instance v4, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;

    invoke-direct {v4, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$15;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v4, 0x0

    .line 870
    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const v4, 0x3f4ccccd  # 0.8f

    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :goto_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_7f
    return-void
.end method

.method private doHideAnim()V
    .registers 6

    .line 392
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 393
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v2, 0x0

    .line 394
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 395
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 396
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 397
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 399
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEditSingle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4f

    .line 400
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEditSingle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 401
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEditSingle:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 402
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 405
    :cond_4f
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$10;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$10;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 426
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    if-eqz v0, :cond_93

    .line 427
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$11;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$11;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_93
    return-void
.end method

.method private doSelectAnim()V
    .registers 7

    .line 883
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 886
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 887
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 888
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 889
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 890
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/4 v4, 0x0

    .line 891
    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 892
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 893
    invoke-virtual {v3, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$16;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$16;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 914
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private doShowAnim(Z)V
    .registers 8

    .line 348
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 349
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    .line 350
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 351
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 352
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 353
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 356
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 357
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    if-eqz p1, :cond_60

    .line 359
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    if-eqz p1, :cond_4b

    const/4 v2, 0x4

    .line 360
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :cond_4b
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$9;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$9;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 381
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_76

    .line 384
    :cond_60
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEditSingle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 385
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEditSingle:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 386
    invoke-virtual {p1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :goto_76
    return-void
.end method

.method private donNotSelectAnim()V
    .registers 6

    .line 919
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 922
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 923
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 924
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 925
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/4 v3, 0x0

    .line 926
    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const v3, 0x3ecccccd  # 0.4f

    .line 927
    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 928
    invoke-virtual {v2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$17;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$17;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 943
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private getListLeft(I)I
    .registers 4

    .line 802
    iget v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    mul-int v0, v0, p1

    iget v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->padding:I

    add-int/lit8 p1, p1, -0x1

    mul-int v1, v1, p1

    add-int/2addr v0, v1

    .line 803
    iget p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->screenWitdh:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private hideTool()V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 333
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :cond_9
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->doHideAnim()V

    return-void
.end method

.method private initFileImg(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 14

    .line 559
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_ae

    .line 562
    :try_start_c
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 563
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    .line 565
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 566
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 567
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 569
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    int-to-double v6, v1

    const-wide/high16 v8, 0x3ff8000000000000L  # 1.5

    mul-double v6, v6, v8

    double-to-int v1, v6

    int-to-double v6, v3

    mul-double v6, v6, v8

    double-to-int v3, v6

    .line 570
    invoke-static {v4, v1, v3}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 571
    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 572
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 574
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 575
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v6, v3, v4

    int-to-long v6, v6

    const-wide/32 v8, 0x7b7c8

    const-wide/16 v10, 0xc8

    mul-long v6, v6, v10

    .line 578
    div-long/2addr v6, v8

    long-to-float v6, v6

    const/high16 v7, 0x43480000  # 200.0f

    cmpg-float v8, v6, v7

    if-gez v8, :cond_5a

    const/high16 v6, 0x43480000  # 200.0f

    .line 582
    :cond_5a
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-float v0, v7

    const/high16 v7, 0x44800000  # 1024.0f

    mul-float v6, v6, v7

    cmpl-float v0, v0, v6

    if-lez v0, :cond_6f

    .line 583
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->needToZipMap:Ljava/util/Map;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 585
    :cond_6f
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->needToZipMap:Ljava/util/Map;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :goto_76
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const/16 v0, 0x232

    if-gt p1, v0, :cond_87

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/16 v0, 0x384

    if-gt p1, v0, :cond_87

    return-object v1

    :cond_87
    const p1, 0x440c8000  # 562.0f

    int-to-float v0, v3

    div-float/2addr p1, v0

    const/high16 v3, 0x44610000  # 900.0f

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 592
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v0, v0, p1

    float-to-int v0, v0

    mul-float p1, p1, v4

    float-to-int p1, p1

    .line 595
    invoke-static {v1, v0, p1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq v1, p1, :cond_a9

    .line 596
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 597
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_a9} :catch_aa

    :cond_a9
    return-object p1

    :catch_aa
    move-exception p1

    .line 602
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ae
    return-object v2
.end method

.method private initImg()V
    .registers 3

    .line 454
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->chooseImg:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivSelect:Lcom/codemao/creativecenter/customview/CreativeScaleImageView;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->resetScale()V

    .line 456
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 458
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$12;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$12;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    .line 459
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivSelect:Lcom/codemao/creativecenter/customview/CreativeScaleImageView;

    .line 477
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initListView()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_30

    .line 749
    new-instance v1, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;-><init>(Landroid/content/Context;)V

    .line 750
    iget v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->setItemWitdh(I)V

    .line 751
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 752
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 754
    new-instance v2, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$14;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flList:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_30
    return-void
.end method

.method private initSize()V
    .registers 6

    .line 706
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->screenWitdh:I

    .line 707
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result v0

    .line 708
    iget v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->screenWitdh:I

    if-ge v1, v0, :cond_10

    .line 709
    iput v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->screenWitdh:I

    .line 711
    :cond_10
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    const/high16 v1, 0x42200000  # 40.0f

    if-eqz v0, :cond_bc

    .line 712
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x42000000  # 32.0f

    invoke-static {p0, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 713
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41800000  # 16.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 714
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    const/high16 v2, 0x42980000  # 76.0f

    invoke-static {p0, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 715
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flPick:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 716
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEdit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42340000  # 45.0f

    invoke-static {p0, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 717
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flPick:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x41f00000  # 30.0f

    invoke-static {p0, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 718
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flPick:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 719
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 720
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v0, 0x42880000  # 68.0f

    .line 721
    invoke-static {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    mul-int/lit8 v0, v0, 0x9

    const/high16 v1, 0x43dd0000  # 442.0f

    .line 722
    invoke-static {p0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->screenWitdh:I

    if-le v0, v2, :cond_ab

    .line 723
    invoke-static {p0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x9

    iput v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    .line 725
    :cond_ab
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flList:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 726
    invoke-static {p0, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->padding:I

    goto :goto_ea

    .line 737
    :cond_bc
    invoke-static {p0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    mul-int/lit8 v0, v0, 0x9

    const/high16 v1, 0x43780000  # 248.0f

    .line 738
    invoke-static {p0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->screenWitdh:I

    if-le v0, v2, :cond_d8

    .line 739
    invoke-static {p0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x9

    iput v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    .line 741
    :cond_d8
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flList:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v0, 0x41500000  # 13.0f

    .line 742
    invoke-static {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->padding:I

    :goto_ea
    return-void
.end method

.method private initView()V
    .registers 2

    .line 111
    sget v0, Lcom/codemao/creativecenter/R$id;->rl_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    .line 112
    sget v0, Lcom/codemao/creativecenter/R$id;->fl_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flList:Landroid/widget/FrameLayout;

    .line 113
    sget v0, Lcom/codemao/creativecenter/R$id;->root:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->root:Landroid/widget/RelativeLayout;

    .line 114
    sget v0, Lcom/codemao/creativecenter/R$id;->fl_pick:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flPick:Landroid/widget/FrameLayout;

    .line 115
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_not_pick:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    .line 116
    sget v0, Lcom/codemao/creativecenter/R$id;->blur:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/BlurringView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    .line 117
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_pick:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    .line 118
    sget v0, Lcom/codemao/creativecenter/R$id;->commit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    .line 119
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_edit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEdit:Landroid/widget/TextView;

    .line 120
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_select:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivSelect:Lcom/codemao/creativecenter/customview/CreativeScaleImageView;

    .line 121
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    .line 122
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_edit_single:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEditSingle:Landroid/widget/TextView;

    return-void
.end method

.method private saveImg(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->end:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_31

    .line 617
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 619
    :cond_31
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 620
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 623
    :cond_3a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 624
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->needToZipMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, ".png"

    const-string v4, ".webp"

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->needToZipMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5a

    goto :goto_75

    .line 632
    :cond_5a
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v1, 0x64

    if-nez p2, :cond_6f

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_69

    goto :goto_6f

    .line 635
    :cond_69
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p2, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_8f

    .line 633
    :cond_6f
    :goto_6f
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p2, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_8f

    .line 626
    :cond_75
    :goto_75
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v1, 0x50

    if-nez p2, :cond_8a

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_84

    goto :goto_8a

    .line 629
    :cond_84
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p2, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_8f

    .line 627
    :cond_8a
    :goto_8a
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p2, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 640
    :goto_8f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 641
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 642
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_9e

    .line 643
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9e
    return-object v0
.end method

.method private setBottomVisible(Z)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_17

    .line 683
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 684
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEditSingle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    if-eqz p1, :cond_28

    .line 686
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    .line 691
    :cond_17
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 692
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEditSingle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 693
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    if-eqz p1, :cond_28

    .line 694
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 697
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5f

    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_add:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 699
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e

    .line 701
    :cond_5f
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_add:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6e
    return-void
.end method

.method private setImgSelect(Z)V
    .registers 6

    .line 877
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivPick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_9

    const/4 v3, 0x0

    goto :goto_b

    :cond_9
    const/16 v3, 0x8

    :goto_b
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivNotPick:Landroid/widget/ImageView;

    if-eqz p1, :cond_14

    const/16 v1, 0x8

    :cond_14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setListData()V
    .registers 7

    .line 778
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->getListLeft(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0x9

    if-ge v2, v3, :cond_5a

    .line 780
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flList:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;

    .line 781
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 782
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_52

    const/high16 v4, 0x3f800000  # 1.0f

    .line 783
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 784
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 785
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 786
    iget v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->selectPostion:I

    if-ne v2, v4, :cond_37

    const/4 v4, 0x1

    .line 787
    invoke-virtual {v3, v4}, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->setSelectOrNot(Z)V

    goto :goto_3a

    .line 789
    :cond_37
    invoke-virtual {v3, v1}, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->setSelectOrNot(Z)V

    .line 791
    :goto_3a
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->setImageFile(Ljava/lang/String;)V

    .line 792
    iget v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->padding:I

    iget v5, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->itemWitdh:I

    add-int/2addr v4, v5

    mul-int v4, v4, v2

    add-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_57

    :cond_52
    const/16 v4, 0x8

    .line 794
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_5a
    return-void
.end method

.method private showTool()V
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->setBottomVisible(Z)V

    .line 342
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    :cond_23
    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->doShowAnim(Z)V

    return-void
.end method


# virtual methods
.method public getViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "素材预览页"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 650
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1e61

    if-ne p1, v0, :cond_7c

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7c

    if-eqz p3, :cond_7c

    .line 653
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "resultInfo"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/model/ResultInfo;

    if-eqz p1, :cond_7c

    .line 655
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/ResultInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    .line 656
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->chooseImg:Ljava/lang/String;

    .line 657
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgRecords:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_34

    .line 658
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgRecords:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 660
    :cond_34
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgRecords:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :goto_3f
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_56

    .line 664
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 665
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {p3, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 666
    iput p2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->selectPostion:I

    goto :goto_64

    .line 668
    :cond_56
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->selectPostion:I

    .line 671
    :goto_64
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->doSelectAnim()V

    .line 672
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_70

    goto :goto_71

    :cond_70
    const/4 v0, 0x0

    :goto_71
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->setBottomVisible(Z)V

    .line 673
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->setListData()V

    .line 674
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->chooseImg:Ljava/lang/String;

    .line 675
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->initImg()V

    :cond_7c
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 129
    invoke-super {p0, p1}, Lcom/nemo/commonui/BaseNemoUIActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/nemocache/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->cachePath:Ljava/lang/String;

    .line 131
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->cachePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->hideNavigationBar(Landroid/app/Activity;)V

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 136
    :cond_2d
    sget p1, Lcom/codemao/creativecenter/R$layout;->creative_activity_upload_preview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 137
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->initView()V

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 139
    sget p1, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    const/4 v0, 0x0

    if-eqz p1, :cond_54

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    :cond_54
    sget-object p1, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {p1}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 143
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->root:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    .line 145
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    const-string v1, "#D90D0B1A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_84

    .line 147
    :cond_72
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivSelect:Lcom/codemao/creativecenter/customview/CreativeScaleImageView;

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/view/BlurringView;->setBlurredView(Landroid/view/View;)V

    .line 148
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    const-string v1, "#770D0B1A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 150
    :goto_84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_is_landscape_stage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->isLandscapeStage:Z

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_work_uid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->curWorkUid:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "imgs"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "chooseImg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->chooseImg:Ljava/lang/String;

    .line 154
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgRecords:Ljava/util/Map;

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "select_type"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->type:I

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "select_path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->filePath:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "select_bgpath"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->bgPath:Ljava/lang/String;

    .line 158
    iget p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->type:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_e8

    const-string p1, ".jpg"

    goto :goto_ea

    :cond_e8
    const-string p1, ".webp"

    :goto_ea
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->end:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "select_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->title:Ljava/lang/String;

    .line 161
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_11e

    .line 162
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_add_with_num:I

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12d

    .line 164
    :cond_11e
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_add:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_12d
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->chooseImg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14f

    .line 168
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->chooseImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->selectPostion:I

    .line 169
    invoke-direct {p0, v2}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->setImgSelect(Z)V

    .line 170
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$1;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_167

    .line 178
    :cond_14f
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->imgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_15a

    .line 179
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->setBottomVisible(Z)V

    .line 181
    :cond_15a
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->setImgSelect(Z)V

    .line 182
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$2;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 189
    :goto_167
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->initImg()V

    .line 191
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->initSize()V

    .line 192
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->initListView()V

    .line 193
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->setListData()V

    .line 194
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$3;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$3;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 212
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$4;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$4;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivSelect:Lcom/codemao/creativecenter/customview/CreativeScaleImageView;

    new-instance v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$5;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->setOnImageClick(Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;)V

    .line 270
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->flPick:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    new-instance p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    .line 314
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEdit:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->ivEditSingle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$8;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$8;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 949
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->deleteNotUse()V

    .line 950
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 951
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    if-eqz v0, :cond_d

    .line 952
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_d
    return-void
.end method
