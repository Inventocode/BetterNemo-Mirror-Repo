.class public Lcom/codemao/nemo/activity/WorkPublishActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "WorkPublishActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/KeyboardHeightObserver;


# instance fields
.field private canScroll:I

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

.field etOperation:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private etOptMinHeight:I

.field private fileName:Ljava/lang/String;

.field private gifHeight:I

.field private globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private hidePopBottom:I

.field private isBitmapEdited:Z

.field private isInit:Z

.field private isKeyboardShow:Z

.field private isLargePad:Z

.field ivCloseSource:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivExit:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivOpenFans:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivOpenSource:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private keyBoardHeight:I

.field private keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

.field private knWorkAITag:Ljava/lang/Boolean;

.field private leaveDialog:Landroid/app/Dialog;

.field private mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field private miniumHeight:I

.field private needPermissions:[Ljava/lang/String;

.field openSourceFlag:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field opreationContaner:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rgOpenSource:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlAllowNum:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;
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

.field private uploadBase64Url:Ljava/lang/String;

.field private uploadImageBase64Str:Ljava/lang/String;

.field private uploadImageUrl:Ljava/lang/String;

.field private viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

.field private workId:J

.field private workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;


# direct methods
.method public static synthetic $r8$lambda$0HsfPYnV25GkYzbU9szZwzVgX00(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->lambda$observeData$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OGIKVLc7hRvbOX6sA8FDOJssLkE(Lcom/codemao/nemo/activity/WorkPublishActivity;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->lambda$observeData$5(Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QAcmQt3u7BigHU1M3k3lpOTsNMI(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SB7UnAwu-VVK2My0Ynoebu_5EqY(Lcom/codemao/nemo/activity/WorkPublishActivity;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->lambda$publishWork$9(Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fUp8YyppiPCHmFG2t2j5udyEdfQ(Lcom/codemao/nemo/activity/WorkPublishActivity;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->lambda$observeData$7(Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gbG6zi-93op0ThOJSE5YF997J0A(Lcom/codemao/nemo/activity/WorkPublishActivity;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->lambda$publishWork$10(Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lve-9Q_NCI-pVmpMFcpJcQdRwzg(Lcom/codemao/nemo/activity/WorkPublishActivity;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->lambda$observeData$4(Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ouu8eXZKJ9s9UC7dwBDVeAwk-WM(Lcom/codemao/nemo/activity/WorkPublishActivity;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->lambda$observeData$8(Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q3qEuGfAa-DQ-J7Uu8TnC4UQiCg(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->lambda$initView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tsGL5xXag3TqvST8tSRecDO-R_g(Lcom/codemao/nemo/activity/WorkPublishActivity;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->lambda$observeData$6(Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yBlpPHknetf0phhI_HbRhuunEpU(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 124
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    .line 174
    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->hidePopBottom:I

    const/4 v1, 0x1

    .line 175
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isInit:Z

    .line 176
    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    .line 181
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isKeyboardShow:Z

    .line 182
    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->miniumHeight:I

    const/4 v1, -0x1

    .line 183
    iput v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDesMinHeight:I

    .line 184
    iput v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOptMinHeight:I

    .line 185
    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    .line 186
    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    .line 187
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 197
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->needPermissions:[Ljava/lang/String;

    .line 201
    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    .line 202
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isBitmapEdited:Z

    .line 209
    new-instance v0, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->knWorkAITag:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->saveAsFile(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/activity/WorkPublishActivity;)V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->setData()V

    return-void
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/activity/WorkPublishActivity;)I
    .registers 1

    .line 124
    iget p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    return p0
.end method

.method static synthetic access$1102(Lcom/codemao/nemo/activity/WorkPublishActivity;I)I
    .registers 2

    .line 124
    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/activity/WorkPublishActivity;)I
    .registers 1

    .line 124
    iget p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDesHeight:I

    return p0
.end method

.method static synthetic access$1202(Lcom/codemao/nemo/activity/WorkPublishActivity;I)I
    .registers 2

    .line 124
    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDesHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/activity/WorkPublishActivity;I)V
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->resetDesHeight(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/activity/WorkPublishActivity;)I
    .registers 1

    .line 124
    iget p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etNameHeight:I

    return p0
.end method

.method static synthetic access$1402(Lcom/codemao/nemo/activity/WorkPublishActivity;I)I
    .registers 2

    .line 124
    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etNameHeight:I

    return p1
.end method

.method static synthetic access$1500(Lcom/codemao/nemo/activity/WorkPublishActivity;I)V
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->resetNameHeight(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/codemao/nemo/activity/WorkPublishActivity;)I
    .registers 1

    .line 124
    iget p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    return p0
.end method

.method static synthetic access$1602(Lcom/codemao/nemo/activity/WorkPublishActivity;I)I
    .registers 2

    .line 124
    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    return p1
.end method

.method static synthetic access$1700(Lcom/codemao/nemo/activity/WorkPublishActivity;)I
    .registers 1

    .line 124
    iget p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toolBarHeight:I

    return p0
.end method

.method static synthetic access$1800(Lcom/codemao/nemo/activity/WorkPublishActivity;I)F
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->getToolBarBgAlpha(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Landroid/app/Dialog;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->leaveDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/WorkPublishActivity;)Z
    .registers 1

    .line 124
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isKeyboardShow:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/codemao/nemo/activity/WorkPublishActivity;)[Ljava/lang/String;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->needPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/activity/WorkPublishActivity;Z)Z
    .registers 2

    .line 124
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isKeyboardShow:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/CoverEditBottomDialog;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->coverEditDialog:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/codemao/nemo/activity/WorkPublishActivity;)Ljava/lang/String;
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->getPreUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/codemao/nemo/activity/WorkPublishActivity;)Ljava/lang/String;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadImageBase64Str:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadCoverJPG(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/codemao/nemo/activity/WorkPublishActivity;)Ljava/lang/String;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/codemao/nemo/activity/WorkPublishActivity;)V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadBase64Cover()V

    return-void
.end method

.method static synthetic access$2800(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadCover64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Ljava/lang/String;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadBase64Url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadBase64Url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/WorkPublishActivity;)J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/WorkPublishActivity;)Z
    .registers 1

    .line 124
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/WorkPublishActivity;)I
    .registers 1

    .line 124
    iget p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/widget/EditText;)V
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->caculateDesHeight(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/widget/EditText;)V
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->caculateOperationHeight(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    return-object p0
.end method

.method static synthetic access$902(Lcom/codemao/nemo/activity/WorkPublishActivity;Lcom/codemao/nemo/bean/WorkPublishInfoCompat;)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    return-object p1
.end method

.method private caculateDesHeight(Landroid/widget/EditText;)V
    .registers 6

    .line 1106
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1107
    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1109
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1110
    aget v1, v3, v1

    .line 1111
    invoke-virtual {p1}, Landroid/widget/EditText;->getHeight()I

    move-result p1

    div-int/2addr p1, v2

    mul-int p1, p1, v0

    add-int/2addr v1, p1

    .line 1112
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    sub-int/2addr p1, v0

    const/high16 v0, 0x42200000  # 40.0f

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    sub-int/2addr p1, v0

    sub-int v0, p1, v1

    .line 1114
    iget v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDesMinHeight:I

    if-ge v0, v2, :cond_a0

    .line 1115
    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    const/high16 v2, 0x42c80000  # 100.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    sub-int v0, v1, p1

    .line 1116
    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    sub-int v2, v1, v0

    sub-int v2, p1, v2

    .line 1117
    iget v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDesMinHeight:I

    if-le v2, v3, :cond_51

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    sub-int/2addr p1, v3

    sub-int/2addr v0, p1

    .line 1118
    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    .line 1120
    :cond_51
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    if-gtz p1, :cond_60

    .line 1121
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->miniumHeight:I

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    .line 1123
    :cond_60
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    if-gt p1, v0, :cond_76

    .line 1124
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v0, 0x0

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto :goto_96

    .line 1126
    :cond_76
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    sub-int/2addr p1, v0

    .line 1127
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->miniumHeight:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1128
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity$17;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$17;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1135
    :goto_96
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->requestLayout()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9b} :catch_9c

    goto :goto_a0

    :catch_9c
    move-exception p1

    .line 1138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a0
    :goto_a0
    return-void
.end method

.method private caculateNameHeight()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1185
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 1186
    aget v0, v0, v1

    .line 1187
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1188
    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    sub-int v2, v1, v0

    iget v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    if-ge v2, v3, :cond_2c

    .line 1189
    iget v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    sub-int/2addr v1, v0

    sub-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    .line 1190
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 1191
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_2c
    return-void
.end method

.method private caculateOperationHeight(Landroid/widget/EditText;)V
    .registers 7

    const-string/jumbo v0, "流程-输入弹窗"

    .line 1144
    :try_start_3
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1145
    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1147
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1148
    aget v2, v4, v2

    .line 1149
    invoke-virtual {p1}, Landroid/widget/EditText;->getHeight()I

    move-result p1

    div-int/2addr p1, v3

    mul-int p1, p1, v1

    add-int/2addr v2, p1

    .line 1150
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    sub-int/2addr p1, v1

    const/high16 v1, 0x42480000  # 50.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr p1, v1

    sub-int v1, p1, v2

    .line 1152
    iget v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOptMinHeight:I

    if-ge v1, v3, :cond_d0

    .line 1153
    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    const/high16 v3, 0x42c80000  # 100.0f

    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    sub-int v1, v2, p1

    .line 1154
    iput v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    sub-int v3, v2, v1

    sub-int v3, p1, v3

    .line 1155
    iget v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOptMinHeight:I

    if-le v3, v4, :cond_54

    sub-int/2addr v2, v1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v4

    sub-int/2addr v1, p1

    .line 1156
    iput v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    .line 1158
    :cond_54
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    if-gtz p1, :cond_63

    .line 1159
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->miniumHeight:I

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    .line 1161
    :cond_63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "计算可滑动距离:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    if-gt p1, v1, :cond_a6

    .line 1163
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 1164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollView最终滑动距离:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 1166
    :cond_a6
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    sub-int/2addr p1, v0

    .line 1167
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->miniumHeight:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1168
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity$18;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$18;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1176
    :goto_c6
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->requestLayout()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    move-exception p1

    .line 1179
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d0
    :goto_d0
    return-void
.end method

.method private checkCoverFail(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
            ">;)V"
        }
    .end annotation

    .line 790
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Fail;

    if-eqz v0, :cond_1f

    .line 791
    move-object v0, p1

    check-cast v0, Lcom/ljwx/baseapp/response/DataResult$Fail;

    invoke-virtual {v0}, Lcom/ljwx/baseapp/response/DataResult$Fail;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7cb

    if-ne v0, v1, :cond_1f

    .line 792
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const-string/jumbo p1, "封面图片未通过检测，请更换后再试"

    .line 793
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 797
    :cond_1f
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->commonResult(Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method private commonResult(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 3

    .line 801
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Fail;

    if-eqz v0, :cond_21

    .line 802
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 803
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Fail;

    .line 804
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Fail;->getCode()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 805
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x263e48f

    if-eq p1, v0, :cond_32

    const-string/jumbo p1, "发布失败"

    .line 806
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 809
    :cond_21
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 810
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    const-string/jumbo p1, "流程-发布"

    const-string/jumbo v0, "发布错误"

    .line 811
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void
.end method

.method private contentSame()Z
    .registers 7

    .line 827
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 828
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    :cond_32
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    :cond_48
    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    .line 829
    :goto_4b
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getKnOperation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_67

    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7d

    :cond_67
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getKnOperation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    :cond_7d
    const/4 v4, 0x1

    goto :goto_80

    :cond_7f
    const/4 v4, 0x0

    :goto_80
    if-eqz v0, :cond_8b

    if-eqz v1, :cond_8b

    if-eqz v4, :cond_8b

    .line 830
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isBitmapEdited:Z

    if-nez v0, :cond_8b

    const/4 v2, 0x1

    :cond_8b
    return v2
.end method

.method private getPreUrl()Ljava/lang/String;
    .registers 2

    .line 1387
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadImageUrl:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadBase64Url:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method private getPublishInfo()V
    .registers 5

    .line 477
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    new-instance v3, Lcom/codemao/nemo/activity/WorkPublishActivity$7;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$7;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getWorkPublishInfo(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getToolBarBgAlpha(I)F
    .registers 3

    .line 907
    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    if-ge p1, v0, :cond_e

    .line 908
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_10

    :cond_e
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_10
    return p1
.end method

.method private getWorkDesc()Ljava/lang/String;
    .registers 5

    .line 1395
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getWorkDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    .line 1396
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    .line 1397
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1399
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x0

    .line 1400
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1402
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120331

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_45
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    return-object v0
.end method

.method private getWorkName()Ljava/lang/String;
    .registers 2

    .line 1391
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFilterWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWorkOpreation()Ljava/lang/String;
    .registers 3

    .line 1406
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    const v1, 0x7f120334

    invoke-static {v0, v1}, Lcom/ljwx/baseedittext/EditTextExtensionKt;->validOrDefault(Landroid/widget/EditText;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initData()V
    .registers 5

    .line 307
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    .line 308
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->initNemoInfo(Landroid/content/Intent;)V

    return-void
.end method

.method private initView()V
    .registers 7

    .line 529
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isKn()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3c

    .line 530
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    const/high16 v2, 0x42dc0000  # 110.0f

    if-eqz v0, :cond_26

    .line 531
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 532
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_41

    .line 534
    :cond_26
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 535
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_41

    .line 538
    :cond_3c
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->opreationContaner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 540
    :goto_41
    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$9;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 582
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 583
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    new-instance v2, Lcom/codemao/nemo/activity/WorkPublishActivity$10;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$10;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->setScrollListener(Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;)V

    .line 616
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    new-instance v2, Lcom/codemao/nemo/activity/WorkPublishActivity$11;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$11;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 633
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isKn()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7b

    .line 634
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvOpenSource:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rgOpenSource:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_85

    .line 637
    :cond_7b
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvOpenSource:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rgOpenSource:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    :goto_85
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isKn()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 642
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivOpenSource:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivOpenFans:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivCloseSource:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_ab
    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 642
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->openSourceCheck(I)V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x2

    .line 643
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->openSourceCheck(I)V

    return-void
.end method

.method private synthetic lambda$initView$2(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    .line 644
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->openSourceCheck(I)V

    return-void
.end method

.method private synthetic lambda$observeData$3(Ljava/lang/Integer;)V
    .registers 2

    .line 713
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 714
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$observeData$4(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 5

    .line 717
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_1e

    .line 718
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;

    .line 719
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->couldPublish()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 720
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->checkPictures(JLandroid/content/Intent;)V

    goto :goto_21

    .line 723
    :cond_1e
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->commonResult(Lcom/ljwx/baseapp/response/DataResult;)V

    :cond_21
    :goto_21
    return-void
.end method

.method private synthetic lambda$observeData$5(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 5

    .line 727
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_37

    .line 728
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isKn()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 729
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->setKnDefaultCover(Ljava/lang/Integer;)V

    .line 730
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string v0, "kn,封面检查成功,检查内部图片"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 731
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->checkPictures(JLandroid/content/Intent;)V

    goto :goto_3a

    .line 733
    :cond_29
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v0, "封面检测通过,是nemo作品,直接走发布"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 734
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->publish(Ljava/lang/Boolean;)V

    goto :goto_3a

    .line 737
    :cond_37
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->checkCoverFail(Lcom/ljwx/baseapp/response/DataResult;)V

    :goto_3a
    return-void
.end method

.method private synthetic lambda$observeData$6(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 4

    .line 741
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_2f

    .line 742
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string v0, "kn图片检测通过,开始发布"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 743
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getAITag()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->knWorkAITag:Ljava/lang/Boolean;

    goto :goto_1c

    :cond_16
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getAITag()Ljava/lang/Boolean;

    move-result-object p1

    :goto_1c
    if-eqz p1, :cond_26

    .line 744
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->publish(Ljava/lang/Boolean;)V

    goto :goto_39

    .line 746
    :cond_2f
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string v1, "kn图片检测未通过"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 747
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->commonResult(Lcom/ljwx/baseapp/response/DataResult;)V

    :goto_39
    return-void
.end method

.method private synthetic lambda$observeData$7(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 6

    .line 751
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_83

    const-string/jumbo p1, "发布成功"

    .line 752
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 753
    new-instance p1, Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;

    invoke-direct {p1}, Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;-><init>()V

    .line 754
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->getWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setWork_name(Ljava/lang/String;)V

    .line 755
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->getWorkDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setDescription(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getOpenSource()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setFork_enable(Z)V

    .line 757
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getOpenSource()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;->setFork_scope(Ljava/lang/Integer;)V

    .line 758
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setPreview(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadImageBase64Str:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setBase64Str(Ljava/lang/String;)V

    .line 760
    iget-wide v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {p1, v2, v3}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setId(J)V

    .line 761
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->creatPublishEvents(Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 762
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/CreatePublishSuccessKnEvent;

    iget-wide v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-direct {v0, v2, v3}, Lcom/codemao/nemo/event/CreatePublishSuccessKnEvent;-><init>(J)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 763
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isEditWorkInfo()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 764
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_86

    .line 766
    :cond_73
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    .line 767
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 768
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_86

    .line 771
    :cond_83
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->commonResult(Lcom/ljwx/baseapp/response/DataResult;)V

    :goto_86
    return-void
.end method

.method private synthetic lambda$observeData$8(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 5

    .line 775
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 776
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_50

    .line 777
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;

    .line 778
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getInfoFromKn(Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;)V

    .line 779
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/StringUtil;->getFilterWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->setName(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->isAITag()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->knWorkAITag:Ljava/lang/Boolean;

    .line 781
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "获取的kn已发布作品信息:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 782
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->setData()V

    goto :goto_53

    .line 784
    :cond_50
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->commonResult(Lcom/ljwx/baseapp/response/DataResult;)V

    :goto_53
    return-void
.end method

.method private synthetic lambda$publishWork$10(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 3

    .line 1224
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_a

    .line 1225
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->publish(Ljava/lang/Boolean;)V

    goto :goto_d

    .line 1227
    :cond_a
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->checkCoverFail(Lcom/ljwx/baseapp/response/DataResult;)V

    :goto_d
    return-void
.end method

.method private synthetic lambda$publishWork$9(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 4

    .line 1209
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_c

    .line 1210
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishStatus(J)Landroidx/lifecycle/MutableLiveData;

    goto :goto_f

    .line 1212
    :cond_c
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->checkCoverFail(Lcom/ljwx/baseapp/response/DataResult;)V

    :goto_f
    return-void
.end method

.method private observeData()V
    .registers 3

    .line 712
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getNetError()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda10;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 716
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 726
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getCheckCoverResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 740
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getCheckPicturesResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda9;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 750
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 774
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getWorkPublishInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda8;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private openSourceCheck(I)V
    .registers 12

    const v0, 0x7f0a0594

    .line 650
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v1, 0x7f0a0591

    .line 651
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const v2, 0x7f0a016e

    .line 652
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_26

    .line 654
    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_38

    return-void

    :cond_26
    if-ne p1, v4, :cond_2f

    .line 658
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_38

    return-void

    :cond_2f
    if-ne p1, v3, :cond_38

    .line 662
    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_38

    return-void

    :cond_38
    const v5, 0x7f0a0595

    .line 666
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 667
    iget-object v6, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getOpenSource()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 668
    iget-object v7, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivCloseSource:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v8, 0x0

    if-nez v6, :cond_53

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_54

    :cond_53
    move-object v9, v8

    :goto_54
    invoke-direct {p0, v7, v9}, Lcom/codemao/nemo/activity/WorkPublishActivity;->playLottie(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Boolean;)V

    .line 669
    iget-object v7, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivOpenSource:Lcom/airbnb/lottie/LottieAnimationView;

    if-ne v6, v4, :cond_5e

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5f

    :cond_5e
    move-object v9, v8

    :goto_5f
    invoke-direct {p0, v7, v9}, Lcom/codemao/nemo/activity/WorkPublishActivity;->playLottie(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Boolean;)V

    .line 670
    iget-object v7, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivOpenFans:Lcom/airbnb/lottie/LottieAnimationView;

    if-ne v6, v3, :cond_68

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_68
    invoke-direct {p0, v7, v8}, Lcom/codemao/nemo/activity/WorkPublishActivity;->playLottie(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Boolean;)V

    const/4 v6, 0x0

    .line 671
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 672
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 673
    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 674
    iget-object v7, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->setOpenSource(Ljava/lang/Integer;)V

    const v7, 0x7f0805e9

    if-nez p1, :cond_98

    .line 676
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->openSourceFlag:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivCloseSource:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->playLottie(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Boolean;)V

    .line 678
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 679
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c1

    :cond_98
    if-ne p1, v4, :cond_ad

    .line 681
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->openSourceFlag:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivOpenSource:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->playLottie(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Boolean;)V

    .line 683
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 684
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c1

    :cond_ad
    if-ne p1, v3, :cond_c1

    .line 686
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->openSourceFlag:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 687
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivOpenFans:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->playLottie(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Boolean;)V

    .line 688
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 689
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method private playLottie(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Boolean;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 697
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 698
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/high16 p2, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    .line 699
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxProgress(FF)V

    const/high16 p2, 0x3fc00000  # 1.5f

    .line 700
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 701
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 702
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_2f

    .line 704
    :cond_1e
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/high16 p2, -0x40000000  # -2.0f

    .line 705
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    const p2, 0x3e99999a  # 0.3f

    .line 706
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 707
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :goto_2f
    return-void
.end method

.method private publish(Ljava/lang/Boolean;)V
    .registers 11

    .line 1304
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1305
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 1308
    :cond_a
    invoke-static {}, Lcom/codemao/nemo/bean/ChainParam;->create()Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v0

    .line 1309
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->getWorkName()Ljava/lang/String;

    move-result-object v1

    .line 1310
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->getWorkDesc()Ljava/lang/String;

    move-result-object v2

    .line 1311
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->getWorkOpreation()Ljava/lang/String;

    move-result-object v3

    .line 1312
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isKn()Z

    move-result v4

    const-string v5, "description"

    const-string v6, "name"

    if-eqz v4, :cond_7f

    .line 1313
    iget-wide v7, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "work_id"

    invoke-virtual {v0, v7, v4}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1314
    invoke-virtual {v0, v6, v1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1316
    invoke-virtual {v0, v5, v2}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    const-string v1, "operation"

    .line 1317
    invoke-virtual {v0, v1, v3}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1318
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preview_url"

    invoke-virtual {v0, v2, v1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1319
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getOpenSource()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fork_enable"

    invoke-virtual {v0, v2, v1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1320
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getKnDefaultCover()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "if_default_cover"

    invoke-virtual {v0, v2, v1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1321
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getKnWorkUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "work_url"

    invoke-virtual {v0, v2, v1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1322
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getKnBcmVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bcm_version"

    invoke-virtual {v0, v2, v1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1323
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "include_ai_resource"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    goto :goto_a2

    .line 1325
    :cond_7f
    invoke-virtual {v0, v6, v1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1326
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "publish_cover_url"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1327
    invoke-virtual {v0, v5, v2}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1328
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getOpenSource()Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "is_allow_fork"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1329
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadBase64Url:Ljava/lang/String;

    const-string v1, "screenshot_cover_url"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1331
    :goto_a2
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getOpenSource()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_b0

    goto :goto_b1

    :cond_b0
    const/4 v1, 0x0

    .line 1333
    :goto_b1
    new-instance p1, Lcom/codemao/nemo/activity/WorkPublishActivity$21;

    invoke-direct {p1, p0, v1}, Lcom/codemao/nemo/activity/WorkPublishActivity$21;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Z)V

    .line 1378
    sget-object v1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "发布的参数："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 1379
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isKn()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 1380
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {p1, v1, v2, v0, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->publishWork(JLandroid/util/ArrayMap;Landroid/content/Context;)V

    goto :goto_ee

    .line 1382
    :cond_e3
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->publishWork(JLjava/util/Map;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_ee
    return-void
.end method

.method private resetDesHeight(I)V
    .registers 5

    .line 1068
    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    sub-int/2addr v0, p1

    const/high16 p1, 0x42200000  # 40.0f

    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    sub-int/2addr v0, p1

    neg-int p1, v0

    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toscroll:I

    .line 1069
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    if-gt p1, v0, :cond_24

    .line 1070
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v0, 0x0

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toscroll:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto :goto_46

    .line 1072
    :cond_24
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toscroll:I

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toscroll:I

    .line 1073
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->miniumHeight:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1074
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity$15;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$15;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1082
    :goto_46
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method private resetNameHeight(I)V
    .registers 5

    .line 1086
    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    sub-int/2addr v0, p1

    neg-int p1, v0

    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toscroll:I

    .line 1087
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    if-gt p1, v0, :cond_1d

    .line 1088
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const/4 v0, 0x0

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toscroll:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto :goto_3f

    .line 1090
    :cond_1d
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toscroll:I

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toscroll:I

    .line 1091
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->miniumHeight:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1092
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity$16;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$16;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1100
    :goto_3f
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method private saveAsFile(Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1523
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo p1, "请传入目标目录"

    .line 1525
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 1529
    :cond_f
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1530
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_28

    .line 1532
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1535
    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1536
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1539
    :cond_31
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1540
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->fileName:Ljava/lang/String;

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x64

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->fileName:Ljava/lang/String;

    const-string v3, ".jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_53

    .line 1543
    :cond_4d
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_58

    .line 1541
    :cond_53
    :goto_53
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1545
    :goto_58
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1546
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1547
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1548
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_67
    const-string/jumbo p1, "流程-发布"

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCoverUrl,saveAsFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->setCoverUrl(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_87} :catch_88

    goto :goto_9a

    :catch_88
    move-exception p1

    .line 1553
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1554
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9a
    return-void
.end method

.method private setData()V
    .registers 7

    .line 331
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 334
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    if-nez v0, :cond_c

    return-void

    .line 337
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvPublish:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isKn()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 339
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getOpenSource()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->openSourceCheck(I)V

    goto :goto_55

    .line 341
    :cond_28
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getOpenSource()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_45

    .line 342
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvOpenSource:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz v2, :cond_3e

    const v2, 0x7f0804f0

    goto :goto_41

    :cond_3e
    const v2, 0x7f080102

    :goto_41
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_55

    .line 344
    :cond_45
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvOpenSource:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz v2, :cond_4f

    const v2, 0x7f0804f8

    goto :goto_52

    :cond_4f
    const v2, 0x7f080543

    :goto_52
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    :goto_55
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const v3, 0x7f0803d7

    const v4, 0x7f0803dc

    if-eqz v0, :cond_97

    .line 348
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

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

    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_d9

    .line 351
    :cond_97
    :try_start_97
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    .line 353
    invoke-virtual {v5}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/codemao/nemo/util/CommonUtil;->encodeBase64File(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v5}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 354
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

    new-instance v3, Lcom/codemao/nemo/activity/WorkPublishActivity$3;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$3;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    .line 355
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivCover:Landroid/widget/ImageView;

    .line 383
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_d4} :catch_d5

    goto :goto_d9

    :catch_d5
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    :goto_d9
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->setDataEdit(Landroid/widget/EditText;)V

    .line 389
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->setDataEdit(Landroid/widget/EditText;)V

    .line 390
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 392
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Lcom/codemao/nemo/activity/WorkPublishActivity$4;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$4;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    aput-object v4, v3, v2

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 403
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getKnOperation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setDataEdit(Landroid/widget/EditText;)V
    .registers 4

    .line 407
    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity$5;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 441
    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity$6;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 472
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvAllowNum:Landroid/widget/TextView;

    const-string/jumbo v1, "还可输入<font color=\"#6f60dd\">200</font>个字符"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showLeaveDialog()V
    .registers 4

    .line 854
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->leaveDialog:Landroid/app/Dialog;

    if-nez v0, :cond_3d

    .line 855
    new-instance v0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;

    invoke-direct {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;-><init>()V

    const-string/jumbo v1, "退出编辑?"

    invoke-virtual {v0, v1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    move-result-object v0

    const v1, 0x7f12016a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;->setContent(Ljava/lang/CharSequence;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$13;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$13;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    const-string/jumbo v2, "离开"

    invoke-interface {v0, v2, v1}, Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$12;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$12;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    const-string/jumbo v2, "留下"

    .line 861
    invoke-interface {v0, v2, v1}, Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    move-result-object v0

    .line 866
    invoke-interface {v0, p0}, Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;->createDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->leaveDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 867
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 869
    :cond_3d
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->leaveDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showLoading()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-nez v0, :cond_e

    .line 301
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v1, "数据同步中..."

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 303
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    return-void
.end method

.method private showLoadingDialog()V
    .registers 3

    .line 1598
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v1, "信息上传中..."

    if-nez v0, :cond_e

    .line 1599
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 1601
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;->setCotent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 1602
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    return-void
.end method

.method private uploadBase64Cover()V
    .registers 4

    .line 1465
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadImageBase64Str:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1469
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2001"

    const-string v2, ".cover"

    invoke-static {v1, v2, v0}, Lcom/codemao/nemo/util/BcmHelper;->getUploadTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 1470
    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$24;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$24;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private uploadCover64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    const-string v0, "UTF-8"

    .line 1492
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

    .line 1494
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1496
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://upload.qiniup.com/putb64/-1/key/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1497
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

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadImageBase64Str:Ljava/lang/String;

    const-string v2, "application/octet-stream"

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/codemao/nemo/retrofit/api/BcmService;->uploadCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 1499
    new-instance p2, Lcom/codemao/nemo/activity/WorkPublishActivity$25;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/activity/WorkPublishActivity$25;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private uploadCoverJPG(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1447
    new-instance v0, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v0}, Lcom/qiniu/android/storage/UploadManager;-><init>()V

    .line 1448
    new-instance v4, Lcom/codemao/nemo/activity/WorkPublishActivity$23;

    invoke-direct {v4, p0, p4, p2}, Lcom/codemao/nemo/activity/WorkPublishActivity$23;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    return-void
.end method

.method private uploadPreview()V
    .registers 5

    .line 1412
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    .line 1414
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, ".cover"

    goto :goto_3a

    .line 1416
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, ".webp"

    goto :goto_3a

    .line 1418
    :cond_27
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, ".png"

    goto :goto_3a

    :cond_38
    const-string v0, ".jpg"

    .line 1423
    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2001"

    invoke-static {v2, v0, v1}, Lcom/codemao/nemo/util/BcmHelper;->getUploadTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 1424
    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$22;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$22;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

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

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const-string/jumbo v0, "发布作品页-点击作品封面"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 876
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 877
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->coverEditDialog:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    if-nez p1, :cond_4f

    .line 878
    new-instance p1, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity$14;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$14;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;-><init>(Landroid/app/Activity;Lcom/codemao/nemo/dialog/CoverEditBottomDialog$ChooseEditListener;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->coverEditDialog:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    .line 902
    :cond_4f
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->coverEditDialog:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method back(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 845
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->contentSame()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 846
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_d

    .line 848
    :cond_a
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->showLeaveDialog()V

    :goto_d
    return-void
.end method

.method changeOpenSouce(Landroid/view/View;)V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1239
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getOpenSource()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x1

    if-eq p1, v2, :cond_ab

    .line 1240
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

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

    .line 1241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {v3, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1242
    sget-object p1, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {p1}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 1243
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvOpenSource:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz v0, :cond_5d

    const v0, 0x7f0804f0

    goto :goto_60

    :cond_5d
    const v0, 0x7f080102

    :goto_60
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a0

    .line 1245
    :cond_64
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

    .line 1246
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz v0, :cond_89

    const v0, 0x7f0803d2

    goto :goto_8c

    :cond_89
    const v0, 0x7f0803d1

    :goto_8c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity$19;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$19;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 1266
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    .line 1268
    :goto_a0
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->setOpenSource(Ljava/lang/Integer;)V

    goto/16 :goto_144

    :cond_ab
    new-array p1, v2, [Ljava/lang/String;

    .line 1270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    const-string/jumbo v3, "发布作品页-点击取消开源"

    invoke-static {v3, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1271
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1272
    sget-object p1, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {p1}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result p1

    if-eqz p1, :cond_ff

    .line 1273
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvOpenSource:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz v1, :cond_f8

    const v1, 0x7f0804f8

    goto :goto_fb

    :cond_f8
    const v1, 0x7f080543

    :goto_fb
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_13b

    .line 1275
    :cond_ff
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

    .line 1276
    iget-boolean v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz v1, :cond_124

    const v1, 0x7f0803d0

    goto :goto_127

    :cond_124
    const v1, 0x7f0803cf

    :goto_127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$20;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$20;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 1297
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    .line 1299
    :goto_13b
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->setOpenSource(Ljava/lang/Integer;)V

    :goto_144
    return-void
.end method

.method protected contentViewId()I
    .registers 2

    .line 221
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0d0071

    goto :goto_f

    :cond_c
    const v0, 0x7f0d006f

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

    .line 1589
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_17

    const/16 p2, 0x2766

    if-ne p1, p2, :cond_17

    .line 1591
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
    .registers 2

    .line 835
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->contentSame()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 836
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_d

    .line 838
    :cond_a
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->showLeaveDialog()V

    :goto_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 229
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->needPermissions:[Ljava/lang/String;

    .line 231
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 232
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    .line 233
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->observeData()V

    .line 234
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

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->fileName:Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x17

    div-int/lit8 p1, p1, 0x4b

    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    .line 236
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz p1, :cond_55

    .line 237
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvOpenSource:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    .line 239
    :cond_55
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvOpenSource:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_72

    .line 242
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 243
    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_7f

    .line 245
    :cond_72
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 246
    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    :goto_7f
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    add-int/2addr p1, v1

    const/high16 v1, 0x43160000  # 150.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    add-int/2addr p1, v2

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    if-le p1, v2, :cond_a8

    .line 249
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    sub-int/2addr v2, v3

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_b4

    .line 251
    :cond_a8
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 254
    :goto_b4
    new-instance p1, Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    .line 255
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/high16 p1, 0x424c0000  # 51.0f

    .line 256
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toolBarHeight:I

    .line 257
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0601af

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 258
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->initData()V

    .line 259
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->initView()V

    .line 260
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toolbar:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$1;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toolbar:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/codemao/nemo/activity/WorkPublishActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$2;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isEditWorkInfo()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12d

    .line 272
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isPublished()Z

    move-result p1

    if-eqz p1, :cond_129

    .line 273
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->showLoading()V

    .line 274
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "获取kn的已发布信息1："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishInfo(J)V

    .line 277
    :cond_129
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->setData()V

    goto :goto_192

    .line 279
    :cond_12d
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvPublish:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 280
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isKn()Z

    move-result p1

    if-eqz p1, :cond_182

    .line 281
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isPublished()Z

    move-result p1

    if-eqz p1, :cond_166

    .line 282
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->showLoading()V

    .line 283
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "获取kn的已发布信息2："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishInfo(J)V

    goto :goto_192

    .line 286
    :cond_166
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kn作品未发布"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->setData()V

    goto :goto_192

    .line 290
    :cond_182
    new-instance p1, Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v0, "数据同步中..."

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 291
    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    .line 292
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->getPublishInfo()V

    :goto_192
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 947
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 948
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_14

    .line 949
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 951
    :cond_14
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-eqz v0, :cond_1b

    .line 952
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 954
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-eqz v0, :cond_22

    .line 955
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 957
    :cond_22
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvOpenSource:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 958
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->close()V

    .line 959
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 11

    .line 969
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    if-gtz p2, :cond_c

    .line 970
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    .line 972
    :cond_c
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDesMinHeight:I

    const/4 v0, -0x1

    const/high16 v1, 0x430c0000  # 140.0f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v0, :cond_34

    new-array p2, v2, [I

    .line 974
    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v5, p2}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 975
    aget p2, p2, v3

    .line 976
    iget v5, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    sub-int/2addr v5, p2

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getHeight()I

    move-result p2

    sub-int/2addr v5, p2

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    sub-int/2addr v5, p2

    iput v5, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDesMinHeight:I

    if-gez v5, :cond_34

    .line 978
    iput v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDesMinHeight:I

    .line 981
    :cond_34
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOptMinHeight:I

    if-ne p2, v0, :cond_56

    new-array p2, v2, [I

    .line 983
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 984
    aget p2, p2, v3

    .line 985
    iget v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    sub-int/2addr v0, p2

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getHeight()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOptMinHeight:I

    if-gez v0, :cond_56

    .line 987
    iput v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOptMinHeight:I

    .line 990
    :cond_56
    iget-boolean p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isInit:Z

    const/4 v0, 0x4

    const-string/jumbo v5, "流程-发布"

    if-eqz p2, :cond_a3

    .line 991
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    .line 992
    iget v6, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v6, v1

    sub-int/2addr v6, p2

    iput v6, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->miniumHeight:I

    .line 993
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 994
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 995
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->miniumHeight:I

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->canScroll:I

    .line 996
    iput p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->hidePopBottom:I

    .line 997
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyboardChange,hidePopBottom高度,初始化值:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->hidePopBottom:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iput-boolean v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isInit:Z

    goto :goto_cc

    .line 1000
    :cond_a3
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    if-gtz p2, :cond_cc

    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->hidePopBottom:I

    if-le p1, p2, :cond_cc

    sub-int v1, p1, p2

    iget v6, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    div-int/2addr v6, v0

    if-le v1, v6, :cond_cc

    sub-int p2, p1, p2

    .line 1001
    iput p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    .line 1002
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyboardChange,计算keyBoardHeight:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_cc
    :goto_cc
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyboardHeightChanged,height:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hidePopBottom:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->hidePopBottom:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->hidePopBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->screenHeight:I

    div-int/2addr p2, v0

    if-le p1, p2, :cond_20f

    .line 1007
    iput-boolean v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isKeyboardShow:Z

    .line 1008
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->setKeyboardShow(Z)V

    new-array p1, v2, [I

    .line 1010
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->isFocused()Z

    move-result p2

    const-string v1, ""

    if-eqz p2, :cond_18b

    new-array p2, v3, [Ljava/lang/String;

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    const-string/jumbo v0, "发布作品页-点击输入描述"

    invoke-static {v0, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1012
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1013
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvAllowNum:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1014
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 1015
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz p1, :cond_15c

    .line 1016
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1017
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_169

    .line 1019
    :cond_15c
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1020
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1022
    :goto_169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onKeyboardChange,软键盘弹出,设置是底部margin:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1024
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->caculateDesHeight(Landroid/widget/EditText;)V

    goto/16 :goto_272

    .line 1025
    :cond_18b
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1d8

    new-array p1, v3, [Ljava/lang/String;

    .line 1026
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    const-string/jumbo p2, "发布作品页-点击输入标题"

    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1027
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1028
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvAllowNum:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1029
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->caculateNameHeight()V

    goto/16 :goto_272

    .line 1030
    :cond_1d8
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_272

    .line 1031
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvAllowNum:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1032
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz p1, :cond_1f7

    .line 1033
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1034
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_204

    .line 1036
    :cond_1f7
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1037
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyBoardHeight:I

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1039
    :goto_204
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1040
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->caculateOperationHeight(Landroid/widget/EditText;)V

    goto :goto_272

    .line 1044
    :cond_20f
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvAllowNum:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    iput-boolean v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isKeyboardShow:Z

    .line 1046
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1, v4}, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->setKeyboardShow(Z)V

    .line 1047
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz p1, :cond_22d

    .line 1048
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1049
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_23a

    .line 1051
    :cond_22d
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1052
    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1054
    :goto_23a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onKeyboardChange,软键盘隐藏,设置是底部margin:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1056
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->miniumHeight:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1057
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 1058
    iget p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    if-eqz p1, :cond_272

    .line 1059
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    neg-int p1, p1

    invoke-virtual {p2, v4, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 1060
    iput v4, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    .line 1061
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_272
    :goto_272
    return-void
.end method

.method protected onPause()V
    .registers 4

    .line 916
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    const/4 v0, 0x0

    .line 917
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isKeyboardShow:Z

    .line 918
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->setKeyboardShow(Z)V

    .line 919
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 920
    iget-boolean v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isLargePad:Z

    if-eqz v1, :cond_22

    .line 921
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 922
    iget v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2f

    .line 924
    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 925
    iget v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 927
    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause设置是底部margin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->gifHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "流程-发布"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 929
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->miniumHeight:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 930
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 931
    iget v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    if-eqz v1, :cond_6a

    .line 932
    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    neg-int v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 933
    iput v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrolled:I

    .line 934
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 936
    :cond_6a
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1576
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1577
    invoke-static {p1, p2, p3, v1}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 1578
    array-length p1, p3

    if-lez p1, :cond_35

    aget p1, p3, v2

    if-nez p1, :cond_35

    .line 1579
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

    .line 1580
    invoke-virtual {p1, p0, p2}, Lcom/codemao/nemo/ui/MultiImageSelector;->start(Landroid/app/Activity;I)V

    .line 1581
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->coverEditDialog:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3b

    :cond_35
    const-string/jumbo p1, "无访问权限，打开相册失败"

    .line 1583
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3b
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 941
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 942
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    return-void
.end method

.method publishWork(Landroid/view/View;)V
    .registers 7
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const-string/jumbo v0, "发布作品页-点击发布按钮"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1199
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1200
    sget-object p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishUtils;->INSTANCE:Lcom/codemao/nemo/biz/workpublish/WorkPublishUtils;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {p1, p0, v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishUtils;->publishCheckPass(Landroid/content/Context;Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_4a

    return-void

    .line 1204
    :cond_4a
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->showLoadingDialog()V

    .line 1205
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isKn()Z

    move-result p1

    const-string v0, "http"

    if-eqz p1, :cond_8a

    .line 1206
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 1207
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string v0, "kn预览图是http开头,直接走发布"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 1208
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->checkCoverNow(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_b5

    .line 1217
    :cond_7f
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string v0, "kn预览图不是http开头,先上传"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 1218
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadPreview()V

    goto :goto_b5

    .line 1221
    :cond_8a
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 1222
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string v0, "nemo作品,封面是http,直接走发布"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 1223
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->viewModel:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->checkCoverNow(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkPublishActivity$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_b5

    .line 1231
    :cond_b2
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadPreview()V

    :goto_b5
    return-void
.end method

.method public saveSuccess(Lcom/codemao/nemo/event/WorkCoverEditEvents;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCoverUrl,WorkCoverEditEvents:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/WorkCoverEditEvents;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "流程-发布"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/WorkCoverEditEvents;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->setCoverUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1563
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->isBitmapEdited:Z

    .line 1564
    invoke-virtual {p1}, Lcom/codemao/nemo/event/WorkCoverEditEvents;->getBase64Str()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->uploadImageBase64Str:Ljava/lang/String;

    .line 1565
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->workInfo:Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1567
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 1568
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

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_69
    return-void
.end method

.method showKeyBoard(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 818
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 819
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 820
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 821
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 822
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 823
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/codemao/nemo/util/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    return-void
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
