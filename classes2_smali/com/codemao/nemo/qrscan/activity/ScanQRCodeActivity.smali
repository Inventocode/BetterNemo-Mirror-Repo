.class public final Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "ScanQRCodeActivity.kt"

# interfaces
.implements Lcom/king/zxing/OnCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScanQRCodeActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScanQRCodeActivity.kt\ncom/codemao/nemo/qrscan/activity/ScanQRCodeActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,418:1\n252#2:419\n252#2:420\n252#2:421\n252#2:422\n*S KotlinDebug\n*F\n+ 1 ScanQRCodeActivity.kt\ncom/codemao/nemo/qrscan/activity/ScanQRCodeActivity\n*L\n365#1:419\n368#1:420\n117#1:421\n120#1:422\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$Companion;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private hasAnimator:Z

.field private hasJump:Z

.field private mCaptureHelper:Lcom/king/zxing/CaptureHelper;

.field private final mFifthDotAnimationRunnable$delegate:Lkotlin/Lazy;

.field private final mFourthDotAnimationRunnable$delegate:Lkotlin/Lazy;

.field private final mHandler:Lcom/giu/xzz/utils/HandlerUtil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/utils/HandlerUtil<",
            "Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetStore$delegate:Lkotlin/Lazy;

.field private final mSecondDotAnimationRunnable$delegate:Lkotlin/Lazy;

.field private final mShowScanRemindRunnable:Ljava/lang/Runnable;

.field private final mThirdDotAnimationRunnable$delegate:Lkotlin/Lazy;

.field private needPermissions:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0OCv5zEpcupiXejTYnjlOcGE7UI(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler$lambda$5(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BjvmdUPrf8DSd1kbfCSfrO01wBQ(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mShowScanRemindRunnable$lambda$0(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UT6HwEYkO0R1dY05IPRzFvpAZCo(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->onCreate$lambda$2(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VaCosownuvCo7I-BJ1TGR2B88lw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->onActivityResult$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_u8ikaxAJb-p46m6CleoWDrSva8(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->onCreate$lambda$1(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j4fPCdiqO8LQvvoCG9PPOUEONDI(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->onCreate$lambda$3(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p5pj1r1mZmHXov1bKGynrh8CJsQ(Ljava/util/ArrayList;Lio/reactivex/ObservableEmitter;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->onActivityResult$lambda$7(Ljava/util/ArrayList;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uGsJEbVVmFI_HlGW4ly9FPWZmy8(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->saveBpToFile$lambda$6(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zoKqmlSj1w9USHmZXqCSum-oCkc(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->setupScanRect$lambda$4(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->Companion:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const-string v0, "QRCodeScanActivity"

    .line 70
    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->TAG:Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 76
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->needPermissions:[Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mNetStore$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mNetStore$2;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mNetStore$delegate:Lkotlin/Lazy;

    .line 116
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mShowScanRemindRunnable:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Lcom/giu/xzz/utils/HandlerUtil;

    new-instance v1, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/utils/HandlerUtil;-><init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    .line 291
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mSecondDotAnimationRunnable$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mSecondDotAnimationRunnable$2;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mSecondDotAnimationRunnable$delegate:Lkotlin/Lazy;

    .line 294
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mThirdDotAnimationRunnable$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mThirdDotAnimationRunnable$2;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mThirdDotAnimationRunnable$delegate:Lkotlin/Lazy;

    .line 297
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mFourthDotAnimationRunnable$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mFourthDotAnimationRunnable$2;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mFourthDotAnimationRunnable$delegate:Lkotlin/Lazy;

    .line 300
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mFifthDotAnimationRunnable$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mFifthDotAnimationRunnable$2;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mFifthDotAnimationRunnable$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$dealCode(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Ljava/lang/String;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->dealCode(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getHasJump$p(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->hasJump:Z

    return p0
.end method

.method public static final synthetic access$saveBpToFile(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->saveBpToFile(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$scanErrorRemind(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->scanErrorRemind()V

    return-void
.end method

.method public static final synthetic access$setHasJump$p(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Z)V
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->hasJump:Z

    return-void
.end method

.method private final buildMineShareBpPath(Lcom/codemao/nemo/bean/LocalUserInfo;)V
    .registers 10

    .line 194
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d022f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a088c

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 197
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a03de

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 200
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e005e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 202
    sget-object v3, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;

    const-string v4, "userid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v5}, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->createQRCodeWithParams(I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x43340000  # 180.0f

    .line 203
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 204
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f0a03dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 207
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 208
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 209
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-static {v2}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 210
    new-instance v2, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;-><init>(Landroid/widget/ImageView;Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 225
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private final dealCode(Ljava/lang/String;)V
    .registers 9

    .line 376
    sget-object v0, Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;->checkQRCodeType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_32

    if-eqz v1, :cond_46

    const/4 v2, 0x5

    if-eq v1, v2, :cond_32

    .line 407
    iget-boolean v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->hasJump:Z

    if-eqz v0, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x1

    .line 410
    iput-boolean v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->hasJump:Z

    .line 411
    sget-object v0, Lcom/codemao/nemo/qrscan/consts/QRCodeConst;->INSTANCE:Lcom/codemao/nemo/qrscan/consts/QRCodeConst;

    invoke-virtual {v0}, Lcom/codemao/nemo/qrscan/consts/QRCodeConst;->getINNER_QRCODE_HOST()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "nemo://com.codemao.nemo/openwith"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 412
    invoke-static {p1, p0, v0, v0}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V

    .line 413
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_46

    .line 382
    :cond_32
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;->decodeQRCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 383
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->getMNetStore()Lcom/codemao/nemo/qrscan/net/ScanNetStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/qrscan/net/ScanNetStore;->checkOtherUrl(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 384
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$dealCode$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$dealCode$1;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_46
    :goto_46
    return-void
.end method

.method private final getMFifthDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mFifthDotAnimationRunnable$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    return-object v0
.end method

.method private final getMFourthDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mFourthDotAnimationRunnable$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    return-object v0
.end method

.method private final getMNetStore()Lcom/codemao/nemo/qrscan/net/ScanNetStore;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mNetStore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/qrscan/net/ScanNetStore;

    return-object v0
.end method

.method private final getMSecondDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mSecondDotAnimationRunnable$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    return-object v0
.end method

.method private final getMThirdDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mThirdDotAnimationRunnable$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    return-object v0
.end method

.method private final initScanHelper()V
    .registers 5

    .line 241
    new-instance v0, Lcom/king/zxing/CaptureHelper;

    sget v1, Lcom/codemao/nemo/R$id;->surfaceView:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    sget v2, Lcom/codemao/nemo/R$id;->viewfinderView:I

    invoke-virtual {p0, v2}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/king/zxing/ViewfinderView;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/king/zxing/CaptureHelper;-><init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/king/zxing/ViewfinderView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    .line 243
    invoke-virtual {v0, p0}, Lcom/king/zxing/CaptureHelper;->setOnCaptureCallback(Lcom/king/zxing/OnCaptureCallback;)Lcom/king/zxing/CaptureHelper;

    .line 244
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    const-string v1, "mCaptureHelper"

    if-nez v0, :cond_25

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_25
    invoke-virtual {v0}, Lcom/king/zxing/CaptureHelper;->onCreate()V

    .line 245
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    if-nez v0, :cond_30

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_31

    :cond_30
    move-object v3, v0

    :goto_31
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/king/zxing/CaptureHelper;->vibrate(Z)Lcom/king/zxing/CaptureHelper;

    move-result-object v1

    .line 246
    invoke-virtual {v1, v0}, Lcom/king/zxing/CaptureHelper;->fullScreenScan(Z)Lcom/king/zxing/CaptureHelper;

    move-result-object v1

    const/4 v2, 0x0

    .line 247
    invoke-virtual {v1, v2}, Lcom/king/zxing/CaptureHelper;->supportVerticalCode(Z)Lcom/king/zxing/CaptureHelper;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Lcom/king/zxing/CaptureHelper;->supportLuminanceInvert(Z)Lcom/king/zxing/CaptureHelper;

    move-result-object v1

    .line 249
    invoke-virtual {v1, v0}, Lcom/king/zxing/CaptureHelper;->continuousScan(Z)Lcom/king/zxing/CaptureHelper;

    return-void
.end method

.method private final initStatusBar()V
    .registers 5

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, v0, v0}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 181
    sget v1, Lcom/codemao/nemo/R$id;->rl_title:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v3

    invoke-virtual {v2, v0, v3, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 182
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v1

    const/high16 v2, 0x42400000  # 48.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private static final mHandler$lambda$5(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/os/Message;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 188
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 189
    new-instance v0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    const/16 v1, 0x2f

    const-string v2, ""

    invoke-direct {v0, v1, p1, v2}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object p1, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->Companion:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$Companion;

    invoke-virtual {p1, p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$Companion;->callIntent(Landroid/content/Context;Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final mShowScanRemindRunnable$lambda$0(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget v0, Lcom/codemao/nemo/R$id;->tv_scan_remind:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "tv_scan_remind"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-nez v1, :cond_28

    .line 118
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :cond_28
    sget v0, Lcom/codemao/nemo/R$id;->tv_scan_toast:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "tv_scan_toast"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    if-eqz v2, :cond_4a

    .line 121
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4a
    return-void
.end method

.method private static final onActivityResult$lambda$7(Ljava/util/ArrayList;Lio/reactivex/ObservableEmitter;)V
    .registers 3

    const-string v0, "$paths"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/king/zxing/util/CodeUtils;->parseQRCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_19

    const-string p0, ""

    .line 279
    :cond_19
    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 280
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static final onActivityResult$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "扫码页-点击返回"

    const/4 v0, 0x0

    .line 131
    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击我的二维码"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-nez p1, :cond_2a

    const-string p1, "获取用户信息失败，请重试！"

    .line 142
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 146
    :cond_2a
    invoke-direct {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->buildMineShareBpPath(Lcom/codemao/nemo/bean/LocalUserInfo;)V

    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/view/View;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击我的相册"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->needPermissions:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 153
    invoke-static {}, Lcom/codemao/nemo/ui/MultiImageSelector;->create()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->showCamera(Z)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/ui/MultiImageSelector;->single()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->setTitle(Ljava/lang/String;)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->setType(I)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const/16 v0, 0x4e21

    .line 154
    invoke-virtual {p1, p0, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->start(Landroid/app/Activity;I)V

    goto :goto_57

    .line 156
    :cond_45
    sget-object p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    const/16 v0, 0x67

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->needPermissions:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "TYPE_OPEN_XIANGCE"

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V

    :goto_57
    return-void
.end method

.method private final saveBpToFile(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 229
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda8;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final saveBpToFile$lambda$6(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/graphics/Bitmap;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ImageUtils;->saveImg(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v1, 0x1

    .line 233
    iput v1, p1, Landroid/os/Message;->what:I

    .line 234
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iget-object p0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final scanErrorRemind()V
    .registers 6

    .line 363
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mShowScanRemindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    sget v0, Lcom/codemao/nemo/R$id;->tv_scan_remind:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "tv_scan_remind"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_2c

    .line 366
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    :cond_2c
    sget v0, Lcom/codemao/nemo/R$id;->tv_scan_toast:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "tv_scan_toast"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_40

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    if-nez v2, :cond_4c

    .line 369
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    :cond_4c
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mShowScanRemindRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final setupScanRect()V
    .registers 3

    .line 170
    sget v0, Lcom/codemao/nemo/R$id;->viewfinderView:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/king/zxing/ViewfinderView;

    new-instance v1, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final setupScanRect$lambda$4(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v0

    const/high16 v1, 0x438a0000  # 276.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 172
    sget v1, Lcom/codemao/nemo/R$id;->cl_scan_view:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    if-eq v1, v0, :cond_2d

    .line 174
    sget v2, Lcom/codemao/nemo/R$id;->viewfinderView:I

    invoke-virtual {p0, v2}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/king/zxing/ViewfinderView;

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return-object v1
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0056

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "扫码页"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 268
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_4e

    const/4 p1, -0x1

    if-eq p2, p1, :cond_b

    return-void

    :cond_b
    if-eqz p3, :cond_4e

    const-string p1, "result_paths"

    .line 274
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_4e

    .line 276
    :cond_16
    iget-object p2, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult--paths："

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/giu/xzz/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object p2, Lcom/codemao/nemo/retrofit/RetrofitTools;->INSTANCE:Lcom/codemao/nemo/retrofit/RetrofitTools;

    .line 277
    new-instance p3, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda4;

    invoke-direct {p3, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p3}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p3, "create<String> {\n       …nComplete()\n            }"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2, p1}, Lcom/codemao/nemo/retrofit/RetrofitTools;->sub(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 282
    new-instance p2, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$onActivityResult$2;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$onActivityResult$2;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    new-instance p3, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda5;

    invoke-direct {p3, p2}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    nop

    :cond_4e
    :goto_4e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 126
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    move-result-object p1

    const-string v0, "getImagesStoragePermissions()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->needPermissions:[Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->initStatusBar()V

    .line 130
    sget p1, Lcom/codemao/nemo/R$id;->iv_close:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    sget p1, Lcom/codemao/nemo/R$id;->ll_mine:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    if-nez v1, :cond_32

    const/16 v1, 0x8

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget p1, Lcom/codemao/nemo/R$id;->ll_pics:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->initScanHelper()V

    .line 162
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->setupScanRect()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->getMSecondDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->getMThirdDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->getMFourthDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->getMFifthDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mShowScanRemindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 336
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    if-nez v0, :cond_38

    const-string v0, "mCaptureHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_38
    invoke-virtual {v0}, Lcom/king/zxing/CaptureHelper;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 325
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    .line 326
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    if-nez v0, :cond_d

    const-string v0, "mCaptureHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_d
    invoke-virtual {v0}, Lcom/king/zxing/CaptureHelper;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 257
    invoke-static {p1, p2, p3, v1}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 258
    array-length p1, p3

    if-nez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    xor-int/2addr p1, v0

    if-eqz p1, :cond_41

    aget p1, p3, v2

    if-nez p1, :cond_41

    .line 259
    invoke-static {}, Lcom/codemao/nemo/ui/MultiImageSelector;->create()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->showCamera(Z)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/ui/MultiImageSelector;->single()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/ui/MultiImageSelector;->setTitle(Ljava/lang/String;)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/ui/MultiImageSelector;->setType(I)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const/16 p2, 0x4e21

    .line 260
    invoke-virtual {p1, p0, p2}, Lcom/codemao/nemo/ui/MultiImageSelector;->start(Landroid/app/Activity;I)V

    goto :goto_54

    .line 261
    :cond_41
    array-length p1, p3

    if-nez p1, :cond_46

    const/4 p1, 0x1

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    :goto_47
    xor-int/2addr p1, v0

    if-eqz p1, :cond_54

    aget p1, p3, v2

    const/4 p2, -0x1

    if-ne p1, p2, :cond_54

    const-string p1, "无访问权限，访问本地图片失败"

    .line 262
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public onResultCallback(Ljava/lang/String;)Z
    .registers 5

    .line 348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 349
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->scanErrorRemind()V

    return v1

    .line 353
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResultCallback--result:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QRCodeScanActivity"

    invoke-static {v2, v0}, Lcom/giu/xzz/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->dealCode(Ljava/lang/String;)V

    return v1
.end method

.method protected onResume()V
    .registers 5

    .line 305
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 306
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    if-nez v0, :cond_d

    const-string v0, "mCaptureHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_d
    invoke-virtual {v0}, Lcom/king/zxing/CaptureHelper;->onResume()V

    .line 308
    iget-boolean v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->hasAnimator:Z

    if-eqz v0, :cond_15

    return-void

    :cond_15
    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->hasAnimator:Z

    .line 313
    sget-object v0, Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;

    sget v1, Lcom/codemao/nemo/R$id;->iv_scan_line:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "iv_scan_line"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;->startLineAnimal(Landroid/view/View;)V

    .line 316
    sget v1, Lcom/codemao/nemo/R$id;->dot_first:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dot_first"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;->startDotAnimal(Landroid/view/View;)V

    .line 317
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->getMSecondDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->getMThirdDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->getMFourthDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    move-result-object v1

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->getMFifthDotAnimationRunnable()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    move-result-object v1

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    if-nez v0, :cond_a

    const-string v0, "mCaptureHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0, p1}, Lcom/king/zxing/CaptureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 341
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected screenFull()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
