.class public Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/KeyboardHeightObserver;


# instance fields
.field private canScroll:I

.field private confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field private coverEditDialog:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

.field private customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field etDes:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private etDesHeight:I

.field private etDesMinHeight:I

.field etName:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private etNameHeight:I

.field private fileName:Ljava/lang/String;

.field private gifHeight:I

.field private globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private hidePopBottom:I

.field private isBitmapEdited:Z

.field private isEditWorkInfo:Z

.field private isInit:Z

.field private isKeyboardShow:Z

.field private isLargePad:Z

.field ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivExit:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private keyBoardHeight:I

.field private keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

.field private mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field private miniumHeight:I

.field private needPermissions:[Ljava/lang/String;

.field rlAllowNum:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlContent:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlRoot:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private screenHeight:I

.field scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private scrolled:I

.field private toolBarHeight:I

.field toolbar:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private toscroll:I

.field tvAllowNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvOpenSource:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvPublish:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private type:I

.field private uploadBase64Url:Ljava/lang/String;

.field private uploadImageBase64Str:Ljava/lang/String;

.field private uploadImageUrl:Ljava/lang/String;

.field private workId:J

.field private workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 98
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyBoardHeight:I

    .line 132
    iput v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->hidePopBottom:I

    const/4 v1, 0x1

    .line 133
    iput-boolean v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isInit:Z

    .line 134
    iput v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    .line 139
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isKeyboardShow:Z

    .line 140
    iput v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->miniumHeight:I

    const/4 v1, -0x1

    .line 141
    iput v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDesMinHeight:I

    .line 142
    iput v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    .line 143
    iput v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    .line 144
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 147
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->needPermissions:[Ljava/lang/String;

    .line 151
    iput v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    .line 152
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isBitmapEdited:Z

    .line 155
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isEditWorkInfo:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->saveAsFile(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    return p0
.end method

.method static synthetic access$1002(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)I
    .registers 2

    .line 98
    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDesHeight:I

    return p0
.end method

.method static synthetic access$1102(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)I
    .registers 2

    .line 98
    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDesHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->resetDesHeight(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etNameHeight:I

    return p0
.end method

.method static synthetic access$1302(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)I
    .registers 2

    .line 98
    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etNameHeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->resetNameHeight(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    return p0
.end method

.method static synthetic access$1502(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)I
    .registers 2

    .line 98
    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    return p1
.end method

.method static synthetic access$1600(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toolBarHeight:I

    return p0
.end method

.method static synthetic access$1700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)F
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->getToolBarBgAlpha(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)[Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->needPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isKeyboardShow:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/CoverEditBottomDialog;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->coverEditDialog:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Z)Z
    .registers 2

    .line 98
    iput-boolean p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isKeyboardShow:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadImageBase64Str:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isEditWorkInfo:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->type:I

    return p0
.end method

.method static synthetic access$2500(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadCoverJPG(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadBase64Cover()V

    return-void
.end method

.method static synthetic access$2800(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadCover64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadBase64Url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadBase64Url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->publish()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyBoardHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->caculateDesHeight()V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/bean/WorkPublishInfo;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    return-object p0
.end method

.method static synthetic access$802(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Lcom/codemao/nemo/bean/WorkPublishInfo;)Lcom/codemao/nemo/bean/WorkPublishInfo;
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    return-object p1
.end method

.method static synthetic access$900(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->setData()V

    return-void
.end method

.method private caculateDesHeight()V
    .registers 6

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 785
    iget-object v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLineCount()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 787
    iget-object v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 788
    aget v1, v3, v1

    .line 789
    iget-object v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    mul-int v3, v3, v0

    add-int/2addr v1, v3

    .line 790
    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    iget v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyBoardHeight:I

    sub-int/2addr v0, v2

    const/high16 v2, 0x42200000  # 40.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int v2, v0, v1

    .line 792
    iget v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDesMinHeight:I

    if-ge v2, v3, :cond_a6

    .line 793
    iget v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyBoardHeight:I

    const/high16 v3, 0x42c80000  # 100.0f

    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    sub-int v3, v1, v2

    sub-int v3, v0, v3

    .line 794
    iget v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDesMinHeight:I

    if-le v3, v4, :cond_57

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    sub-int/2addr v2, v0

    .line 795
    iput v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    .line 797
    :cond_57
    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    if-gtz v0, :cond_66

    .line 798
    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->miniumHeight:I

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    .line 800
    :cond_66
    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    if-gt v0, v1, :cond_7c

    .line 801
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto :goto_9c

    .line 803
    :cond_7c
    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    sub-int/2addr v0, v1

    .line 804
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlContent:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->miniumHeight:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 805
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$19;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$19;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 812
    :goto_9c
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a1} :catch_a2

    goto :goto_a6

    :catch_a2
    move-exception v0

    .line 815
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a6
    :goto_a6
    return-void
.end method

.method private caculateNameHeight()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 821
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 822
    aget v0, v0, v1

    .line 823
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 824
    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    sub-int v2, v1, v0

    iget v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyBoardHeight:I

    if-ge v2, v3, :cond_2c

    .line 825
    iget v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    sub-int/2addr v1, v0

    sub-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    .line 826
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 827
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_2c
    return-void
.end method

.method private getPublishInfo()V
    .registers 5

    .line 378
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    new-instance v3, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getWorkPublishInfo(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getToolBarBgAlpha(I)F
    .registers 3

    .line 608
    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    if-ge p1, v0, :cond_e

    .line 609
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_10

    :cond_e
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_10
    return p1
.end method

.method private initData()V
    .registers 8

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFilterWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "des"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->type:I

    .line 231
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "defaultImagePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "imagePath"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "isEditWorkInfo"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isEditWorkInfo:Z

    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "forkEnable"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 236
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_69

    goto :goto_6a

    :cond_69
    move-object v2, v3

    .line 239
    :goto_6a
    new-instance v3, Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-direct {v3}, Lcom/codemao/nemo/bean/WorkPublishInfo;-><init>()V

    iput-object v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    .line 240
    invoke-virtual {v3, v2}, Lcom/codemao/nemo/bean/WorkPublishInfo;->setPreview(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v3, v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->setName(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/bean/WorkPublishInfo;->setPublish_cover_url(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/bean/WorkPublishInfo;->setScreenshot_cover_url(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/bean/WorkPublishInfo;->setOpen(Z)V

    .line 245
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 431
    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 465
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 466
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$10;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->setScrollListener(Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;)V

    .line 499
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$11;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$11;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private publish()V
    .registers 7

    .line 928
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 929
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 932
    :cond_a
    invoke-static {}, Lcom/codemao/nemo/bean/ChainParam;->create()Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v0

    .line 933
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/StringUtil;->getFilterWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 934
    iget-object v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/StringUtil;->getWorkDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    .line 935
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3f

    .line 936
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 938
    :cond_3f
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v3, 0x0

    .line 939
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 941
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120331

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6f

    :cond_65
    iget-object v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6f
    const-string v3, "name"

    .line 942
    invoke-virtual {v0, v3, v1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 943
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadImageUrl:Ljava/lang/String;

    const-string v3, "publish_cover_url"

    invoke-virtual {v0, v3, v1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    const-string v1, "description"

    .line 944
    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 945
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->isOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_allow_fork"

    invoke-virtual {v0, v2, v1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 946
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadBase64Url:Ljava/lang/String;

    const-string v2, "screenshot_cover_url"

    invoke-virtual {v0, v2, v1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 947
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->isOpen()Z

    move-result v1

    .line 949
    iget-object v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object v0

    new-instance v5, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;

    invoke-direct {v5, p0, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Z)V

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->publishWork(JLjava/util/Map;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private resetDesHeight(I)V
    .registers 5

    .line 746
    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyBoardHeight:I

    sub-int/2addr v0, p1

    const/high16 p1, 0x42200000  # 40.0f

    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    sub-int/2addr v0, p1

    neg-int p1, v0

    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toscroll:I

    .line 747
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    if-gt p1, v0, :cond_24

    .line 748
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v0, 0x0

    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toscroll:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto :goto_46

    .line 750
    :cond_24
    iget p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toscroll:I

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toscroll:I

    .line 751
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlContent:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->miniumHeight:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 752
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$17;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$17;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 760
    :goto_46
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method private resetNameHeight(I)V
    .registers 5

    .line 764
    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyBoardHeight:I

    sub-int/2addr v0, p1

    neg-int p1, v0

    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toscroll:I

    .line 765
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    if-gt p1, v0, :cond_1d

    .line 766
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v0, 0x0

    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toscroll:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto :goto_3f

    .line 768
    :cond_1d
    iget p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toscroll:I

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toscroll:I

    .line 769
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlContent:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->miniumHeight:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 770
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$18;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$18;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 778
    :goto_3f
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method private saveAsFile(Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1106
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo p1, "请传入目标目录"

    .line 1108
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 1112
    :cond_f
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1113
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_28

    .line 1115
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1118
    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1119
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1122
    :cond_31
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1123
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->fileName:Ljava/lang/String;

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x64

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->fileName:Ljava/lang/String;

    const-string v3, ".jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_53

    .line 1126
    :cond_4d
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_58

    .line 1124
    :cond_53
    :goto_53
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1128
    :goto_58
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1129
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1131
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1133
    :cond_67
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->setPreview(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6e} :catch_6f

    goto :goto_81

    :catch_6f
    move-exception p1

    .line 1135
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_81
    return-void
.end method

.method private setData()V
    .registers 7

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    if-nez v0, :cond_c

    return-void

    .line 255
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvPublish:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 257
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvOpenSource:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    if-eqz v2, :cond_24

    const v2, 0x7f0804f0

    goto :goto_27

    :cond_24
    const v2, 0x7f080102

    :goto_27
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3b

    .line 259
    :cond_2b
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvOpenSource:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    if-eqz v2, :cond_35

    const v2, 0x7f0804f8

    goto :goto_38

    :cond_35
    const v2, 0x7f080543

    :goto_38
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    :goto_3b
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const v3, 0x7f0803d7

    const v4, 0x7f0803dc

    if-eqz v0, :cond_7d

    .line 262
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v5, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPreview()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v5}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_bf

    .line 265
    :cond_7d
    :try_start_7d
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    .line 267
    invoke-virtual {v5}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPreview()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/codemao/nemo/util/CommonUtil;->encodeBase64File(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v5}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 268
    invoke-virtual {v5, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v3, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$3;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$3;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    .line 269
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->ivCover:Landroid/widget/ImageView;

    .line 297
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_ba} :catch_bb

    goto :goto_bf

    :catch_bb
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    :goto_bf
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    new-instance v3, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$4;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$4;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 336
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    new-instance v3, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 358
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvAllowNum:Landroid/widget/TextView;

    const-string/jumbo v3, "还可输入<font color=\"#6f60dd\">200</font>个字符"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 362
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$6;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$6;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    aput-object v4, v3, v2

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private showLoadingDialog()V
    .registers 3

    .line 1179
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v1, "信息上传中..."

    if-nez v0, :cond_e

    .line 1180
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 1182
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;->setCotent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 1183
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    return-void
.end method

.method private uploadBase64Cover()V
    .registers 4

    .line 1049
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadImageBase64Str:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1053
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2001"

    const-string v2, ".cover"

    invoke-static {v1, v2, v0}, Lcom/codemao/nemo/util/BcmHelper;->getUploadTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 1054
    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$25;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$25;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private uploadCover64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    const-string v0, "UTF-8"

    .line 1076
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 1078
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1080
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://upload.qiniup.com/putb64/-1/key/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1081
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/BcmService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/BcmService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadImageBase64Str:Ljava/lang/String;

    const-string v2, "application/octet-stream"

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/codemao/nemo/retrofit/api/BcmService;->uploadCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 1083
    new-instance p2, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$26;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$26;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private uploadCoverJPG(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1032
    new-instance v0, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v0}, Lcom/qiniu/android/storage/UploadManager;-><init>()V

    .line 1033
    new-instance v4, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;

    invoke-direct {v4, p0, p4, p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    return-void
.end method

.method private uploadPreview()V
    .registers 5

    .line 998
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    .line 1000
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, ".cover"

    goto :goto_3a

    .line 1002
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, ".webp"

    goto :goto_3a

    .line 1004
    :cond_27
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, ".png"

    goto :goto_3a

    :cond_38
    const-string v0, ".jpg"

    .line 1009
    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2001"

    invoke-static {v2, v0, v1}, Lcom/codemao/nemo/util/BcmHelper;->getUploadTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 1010
    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$23;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$23;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method ShowCoverEdit(Landroid/view/View;)V
    .registers 7
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const-string/jumbo v0, "发布作品页-点击作品封面"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 578
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->coverEditDialog:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    if-nez p1, :cond_4f

    .line 579
    new-instance p1, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$16;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$16;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;-><init>(Landroid/app/Activity;Lcom/codemao/nemo/dialog/CoverEditBottomDialog$ChooseEditListener;)V

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->coverEditDialog:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    .line 603
    :cond_4f
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->coverEditDialog:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method back(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 550
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_48

    :cond_32
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    :cond_48
    iget-boolean p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isBitmapEdited:Z

    if-nez p1, :cond_50

    .line 551
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_95

    .line 553
    :cond_50
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-nez p1, :cond_90

    .line 554
    new-instance p1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$15;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$15;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$14;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$14;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    .line 561
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string v0, ""

    .line 566
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string/jumbo v0, "是"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string/jumbo v0, "否"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 568
    :cond_90
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_95
    return-void
.end method

.method changeOpenSouce(Landroid/view/View;)V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 863
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->isOpen()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x1

    if-nez p1, :cond_a3

    .line 864
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v3, "发布作品页-点击开源"

    invoke-static {v3, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    new-array p1, v2, [Ljava/lang/String;

    .line 865
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {v3, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 866
    sget-object p1, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {p1}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 867
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvOpenSource:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    if-eqz v0, :cond_59

    const v0, 0x7f0804f0

    goto :goto_5c

    :cond_59
    const v0, 0x7f080102

    :goto_5c
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9c

    .line 869
    :cond_60
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 870
    iget-boolean v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    if-eqz v0, :cond_85

    const v0, 0x7f0803d2

    goto :goto_88

    :cond_85
    const v0, 0x7f0803d1

    :goto_88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$20;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$20;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 890
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    .line 892
    :goto_9c
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/bean/WorkPublishInfo;->setOpen(Z)V

    goto/16 :goto_138

    :cond_a3
    new-array p1, v2, [Ljava/lang/String;

    .line 894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    const-string/jumbo v3, "发布作品页-点击取消开源"

    invoke-static {v3, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 895
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 896
    sget-object p1, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {p1}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 897
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvOpenSource:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    if-eqz v1, :cond_f0

    const v1, 0x7f0804f8

    goto :goto_f3

    :cond_f0
    const v1, 0x7f080543

    :goto_f3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_133

    .line 899
    :cond_f7
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 900
    iget-boolean v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    if-eqz v1, :cond_11c

    const v1, 0x7f0803d0

    goto :goto_11f

    :cond_11c
    const v1, 0x7f0803cf

    :goto_11f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 921
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    .line 923
    :goto_133
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->setOpen(Z)V

    :goto_138
    return-void
.end method

.method protected contentViewId()I
    .registers 2

    .line 167
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0d0070

    goto :goto_f

    :cond_c
    const v0, 0x7f0d006e

    :goto_f
    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "发布作品页"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1170
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_17

    const/16 p2, 0x2766

    if-ne p1, p2, :cond_17

    .line 1172
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/InstallPermissionResult;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/codemao/nemo/event/InstallPermissionResult;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 524
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    :cond_32
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_48
    iget-boolean v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isBitmapEdited:Z

    if-nez v0, :cond_50

    .line 525
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_95

    .line 527
    :cond_50
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-nez v0, :cond_90

    .line 528
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$13;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$13;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$12;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$12;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    .line 534
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, ""

    .line 541
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "是"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "否"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 543
    :cond_90
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 173
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->needPermissions:[Ljava/lang/String;

    .line 175
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/edited_cover.jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->fileName:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x17

    div-int/lit8 p1, p1, 0x4b

    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    .line 178
    iget-boolean p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    if-eqz p1, :cond_43

    .line 179
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvOpenSource:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    .line 181
    :cond_43
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvOpenSource:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    iget-boolean p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_60

    .line 184
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 185
    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_6d

    .line 187
    :cond_60
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 188
    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    :goto_6d
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    add-int/2addr p1, v1

    const/high16 v1, 0x43160000  # 150.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    add-int/2addr p1, v2

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    if-le p1, v2, :cond_96

    .line 191
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    sub-int/2addr v2, v3

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_a2

    .line 193
    :cond_96
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    :goto_a2
    new-instance p1, Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    .line 197
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/high16 p1, 0x424c0000  # 51.0f

    .line 198
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toolBarHeight:I

    .line 199
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0601af

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 200
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->initData()V

    .line 201
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->initView()V

    .line 202
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toolbar:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 207
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toolbar:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$2;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    iget-boolean p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isEditWorkInfo:Z

    if-eqz p1, :cond_e8

    .line 214
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->setData()V

    goto :goto_fd

    .line 216
    :cond_e8
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvPublish:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 217
    new-instance p1, Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v0, "数据同步中..."

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 218
    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    .line 219
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->getPublishInfo()V

    :goto_fd
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 648
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 649
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_14

    .line 650
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 652
    :cond_14
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-eqz v0, :cond_1b

    .line 653
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 655
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-eqz v0, :cond_22

    .line 656
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 658
    :cond_22
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvOpenSource:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->close()V

    .line 660
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 10

    .line 670
    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    if-gtz p2, :cond_c

    .line 671
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    .line 673
    :cond_c
    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDesMinHeight:I

    const/4 v0, -0x1

    const/high16 v1, 0x430c0000  # 140.0f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v0, :cond_34

    new-array p2, v2, [I

    .line 675
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 676
    aget p2, p2, v3

    .line 677
    iget v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    sub-int/2addr v0, p2

    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getHeight()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDesMinHeight:I

    if-gez v0, :cond_34

    .line 679
    iput v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDesMinHeight:I

    .line 682
    :cond_34
    iget-boolean p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isInit:Z

    const/4 v0, 0x4

    if-eqz p2, :cond_68

    .line 683
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    .line 684
    iget v5, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v5, v1

    sub-int/2addr v5, p2

    iput v5, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->miniumHeight:I

    .line 685
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 686
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 687
    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->miniumHeight:I

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->canScroll:I

    .line 688
    iput p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->hidePopBottom:I

    .line 689
    iput-boolean v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isInit:Z

    goto :goto_7b

    .line 691
    :cond_68
    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyBoardHeight:I

    if-gtz p2, :cond_7b

    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->hidePopBottom:I

    if-le p1, p2, :cond_7b

    sub-int v1, p1, p2

    iget v5, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    div-int/2addr v5, v0

    if-le v1, v5, :cond_7b

    sub-int p2, p1, p2

    .line 692
    iput p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyBoardHeight:I

    .line 695
    :cond_7b
    :goto_7b
    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->hidePopBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->screenHeight:I

    div-int/2addr p2, v0

    if-le p1, p2, :cond_150

    .line 696
    iput-boolean v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isKeyboardShow:Z

    .line 697
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->setKeyboardShow(Z)V

    new-array p1, v2, [I

    .line 699
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->isFocused()Z

    move-result p2

    const-string v1, ""

    if-eqz p2, :cond_104

    new-array p2, v3, [Ljava/lang/String;

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    const-string/jumbo v0, "发布作品页-点击输入描述"

    invoke-static {v0, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 702
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvAllowNum:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 704
    iget-boolean p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    if-eqz p1, :cond_ed

    .line 705
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 706
    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyBoardHeight:I

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_fa

    .line 708
    :cond_ed
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 709
    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyBoardHeight:I

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 712
    :goto_fa
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 713
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->caculateDesHeight()V

    goto/16 :goto_19d

    .line 714
    :cond_104
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_19d

    new-array p1, v3, [Ljava/lang/String;

    .line 715
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    const-string/jumbo p2, "发布作品页-点击输入标题"

    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 716
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 717
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvAllowNum:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->caculateNameHeight()V

    goto :goto_19d

    .line 722
    :cond_150
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvAllowNum:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iput-boolean v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isKeyboardShow:Z

    .line 724
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1, v4}, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->setKeyboardShow(Z)V

    .line 725
    iget-boolean p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    if-eqz p1, :cond_16e

    .line 726
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 727
    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_17b

    .line 729
    :cond_16e
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 730
    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 733
    :goto_17b
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 734
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlContent:Landroid/widget/RelativeLayout;

    iget p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->miniumHeight:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 735
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 736
    iget p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    if-eqz p1, :cond_19d

    .line 737
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    neg-int p1, p1

    invoke-virtual {p2, v4, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 738
    iput v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    .line 739
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_19d
    :goto_19d
    return-void
.end method

.method protected onPause()V
    .registers 4

    .line 617
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    const/4 v0, 0x0

    .line 618
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isKeyboardShow:Z

    .line 619
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->setKeyboardShow(Z)V

    .line 620
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 621
    iget-boolean v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isLargePad:Z

    if-eqz v1, :cond_22

    .line 622
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 623
    iget v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2f

    .line 625
    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 626
    iget v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->gifHeight:I

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 629
    :goto_2f
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 630
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlContent:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->miniumHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 631
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 632
    iget v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    if-eqz v1, :cond_51

    .line 633
    iget-object v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    neg-int v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 634
    iput v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrolled:I

    .line 635
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 637
    :cond_51
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1157
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1158
    invoke-static {p1, p2, p3, v1}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 1159
    array-length p1, p3

    if-lez p1, :cond_35

    aget p1, p3, v2

    if-nez p1, :cond_35

    .line 1160
    invoke-static {}, Lcom/codemao/nemo/ui/MultiImageSelector;->create()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->showCamera(Z)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/ui/MultiImageSelector;->single()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/ui/MultiImageSelector;->setTitle(Ljava/lang/String;)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/ui/MultiImageSelector;->setType(I)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const/16 p2, 0x4e21

    .line 1161
    invoke-virtual {p1, p0, p2}, Lcom/codemao/nemo/ui/MultiImageSelector;->start(Landroid/app/Activity;I)V

    .line 1162
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->coverEditDialog:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3b

    :cond_35
    const-string/jumbo p1, "无访问权限，打开相册失败"

    .line 1164
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3b
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 642
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 643
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    return-void
.end method

.method publishWork(Landroid/view/View;)V
    .registers 7
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const-string/jumbo v0, "发布作品页-点击发布按钮"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 836
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_49

    .line 837
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 840
    :cond_49
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_64

    const-string/jumbo p1, "作品名不能为空"

    .line 841
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 844
    :cond_64
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->isWorkName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7b

    const-string/jumbo p1, "作品名称包含不支持的字符，请更改后再试一次"

    .line 845
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 849
    :cond_7b
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->showLoadingDialog()V

    .line 851
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_98

    .line 852
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadImageUrl:Ljava/lang/String;

    .line 853
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->publish()V

    goto :goto_9b

    .line 856
    :cond_98
    invoke-direct {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadPreview()V

    :goto_9b
    return-void
.end method

.method public saveSuccess(Lcom/codemao/nemo/event/WorkCoverEditEvents;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1143
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/WorkCoverEditEvents;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->setPreview(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1144
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->isBitmapEdited:Z

    .line 1145
    invoke-virtual {p1}, Lcom/codemao/nemo/event/WorkCoverEditEvents;->getBase64Str()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadImageBase64Str:Ljava/lang/String;

    .line 1146
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1148
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 1149
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_4e
    return-void
.end method

.method showKeyBoard(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 514
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 515
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 516
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 517
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 518
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 519
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/codemao/nemo/util/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    return-void
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
