.class public final Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "ShareQRCodeActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$Companion;


# instance fields
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

.field private final mQQShareListener:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;

.field private mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

.field private final mTencent$delegate:Lkotlin/Lazy;

.field private final mWXApi$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$42SA52e3m34jn5et1WJcxnnU3FU(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->onCreate$lambda$0(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SQuw4Xe5TfiKih2b3fwtw6tAcIQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->onClick$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TgAHoFZl-E4-BYqaHL4K8IM1YkI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->onClick$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XY7FhtgxNQMu6rmaNN-9MLDMjvE(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->initShareBtn$lambda$1(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gJduQitrXZ2bXsuBfEUxJRIEIL4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->onClick$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kH1_ex18Ws8B0dd2bwh3AUVburk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->onClick$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n0qqPucRKJcs-I9QGvrMwFEAqoo(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->doShowShareAnim$lambda$2(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p_c36qWECkGDC_Lx3t3R07AXVp0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->onClick$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tf7UJw5XIg1rHe_FKJIGu3wAPdE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->onClick$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tncWgSxJJvNNfKgoZlmSOQ0WZM4(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;Lio/reactivex/ObservableEmitter;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->buildCopyFileObservable$lambda$9(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->Companion:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    .line 70
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mWXApi$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mWXApi$2;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mWXApi$delegate:Lkotlin/Lazy;

    .line 77
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mTencent$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mTencent$2;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mTencent$delegate:Lkotlin/Lazy;

    .line 425
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mQQShareListener:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;

    return-void
.end method

.method public static final synthetic access$buildCopyFileObservable(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)Lio/reactivex/Observable;
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->buildCopyFileObservable()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMQQShareListener$p(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mQQShareListener:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;

    return-object p0
.end method

.method public static final synthetic access$getMTencent(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)Lcom/tencent/tauth/Tencent;
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->getMTencent()Lcom/tencent/tauth/Tencent;

    move-result-object p0

    return-object p0
.end method

.method private final buildCopyFileObservable()Lio/reactivex/Observable;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "create<String> {\n       …it.onComplete()\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final buildCopyFileObservable$lambda$9(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;Lio/reactivex/ObservableEmitter;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->buildFilePath()Ljava/lang/String;

    move-result-object v0

    .line 413
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->getShareImgPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/giu/xzz/utils/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 416
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 417
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private final buildFilePath()Ljava/lang/String;
    .registers 4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/nemo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final doShowShareAnim()V
    .registers 25

    move-object/from16 v0, p0

    .line 145
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xc8

    .line 146
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v5, 0x1

    .line 147
    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 148
    new-instance v6, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$doShowShareAnim$1;

    invoke-direct {v6, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$doShowShareAnim$1;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 156
    sget v6, Lcom/codemao/nemo/R$id;->root_cl:I

    invoke-virtual {v0, v6}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 157
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 158
    new-instance v13, Landroid/view/animation/ScaleAnimation;

    sget v14, Lcom/codemao/nemo/R$id;->iv_share_content:I

    invoke-virtual {v0, v14}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000  # 2.0f

    div-float v11, v6, v7

    invoke-virtual {v0, v14}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v12, v6, v7

    const v7, 0x3f4ccccd  # 0.8f

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x3f4ccccd  # 0.8f

    const/high16 v10, 0x3f800000  # 1.0f

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 159
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const v21, 0x3e4ccccd  # 0.2f

    const/16 v22, 0x1

    const v23, -0x42333333  # -0.1f

    move-object v15, v6

    invoke-direct/range {v15 .. v23}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 160
    invoke-virtual {v6, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 161
    invoke-virtual {v13, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 162
    invoke-virtual {v1, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 163
    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 164
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 165
    new-instance v6, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$doShowShareAnim$2;

    invoke-direct {v6, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$doShowShareAnim$2;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    invoke-virtual {v0, v14}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    sget v1, Lcom/codemao/nemo/R$id;->ll_share_item:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/16 v6, 0xc8

    const/4 v7, 0x0

    :goto_a0
    if-ge v7, v1, :cond_df

    const v8, 0x7f010014

    .line 180
    invoke-static {v0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type android.view.animation.AnimationSet"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/animation/AnimationSet;

    .line 181
    invoke-virtual {v8, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    int-to-long v9, v6

    .line 182
    invoke-virtual {v8, v9, v10}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 183
    sget v9, Lcom/codemao/nemo/R$id;->ll_share_item:I

    invoke-virtual {v0, v9}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "ll_share_item.getChildAt(i)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_d1

    mul-int/lit8 v10, v7, 0x1e

    add-int/2addr v6, v10

    .line 187
    :cond_d1
    new-instance v10, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$doShowShareAnim$3;

    invoke-direct {v10, v0, v9}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$doShowShareAnim$3;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;Landroid/view/View;)V

    invoke-virtual {v8, v10}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 197
    invoke-virtual {v9, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a0

    .line 199
    :cond_df
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x42480000  # 50.0f

    const/high16 v7, -0x3e600000  # -20.0f

    invoke-direct {v1, v2, v2, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 200
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 201
    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 202
    new-instance v2, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$doShowShareAnim$4;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$doShowShareAnim$4;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 213
    sget v2, Lcom/codemao/nemo/R$id;->iv_share_close:I

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    invoke-virtual {v0, v2}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda9;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final doShowShareAnim$lambda$2(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget v0, Lcom/codemao/nemo/R$id;->iv_share_close:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private final getMTencent()Lcom/tencent/tauth/Tencent;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mTencent$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-mTencent>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method private final getMWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mWXApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-mWXApi>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method private final initShareBtn()V
    .registers 7

    .line 108
    sget v0, Lcom/codemao/nemo/R$id;->ll_Share_wechat:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->isNeedShow(I)Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_24

    sget-object v2, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/WXShareHelper;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->getMWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;->isInstalled(Lcom/tencent/mm/opensdk/openapi/IWXAPI;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    goto :goto_26

    :cond_24
    const/16 v2, 0x8

    :goto_26
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v0, Lcom/codemao/nemo/R$id;->ll_Share_circle:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->isNeedShow(I)Z

    move-result v2

    if-eqz v2, :cond_54

    sget-object v2, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/WXShareHelper;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->getMWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;->isInstalled(Lcom/tencent/mm/opensdk/openapi/IWXAPI;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x0

    goto :goto_56

    :cond_54
    const/16 v2, 0x8

    :goto_56
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v0, Lcom/codemao/nemo/R$id;->ll_Share_qq:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->isNeedShow(I)Z

    move-result v2

    if-eqz v2, :cond_84

    sget-object v2, Lcom/codemao/nemo/qrscan/utils/QQShareHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QQShareHelper;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->getMTencent()Lcom/tencent/tauth/Tencent;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Lcom/codemao/nemo/qrscan/utils/QQShareHelper;->isQQInstalled(Landroid/content/Context;Lcom/tencent/tauth/Tencent;)Z

    move-result v2

    if-eqz v2, :cond_84

    const/4 v2, 0x0

    goto :goto_86

    :cond_84
    const/16 v2, 0x8

    :goto_86
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v0, Lcom/codemao/nemo/R$id;->ll_Share_qzone:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->isNeedShow(I)Z

    move-result v2

    if-eqz v2, :cond_b4

    sget-object v2, Lcom/codemao/nemo/qrscan/utils/QQShareHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QQShareHelper;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->getMTencent()Lcom/tencent/tauth/Tencent;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Lcom/codemao/nemo/qrscan/utils/QQShareHelper;->isQQInstalled(Landroid/content/Context;Lcom/tencent/tauth/Tencent;)Z

    move-result v2

    if-eqz v2, :cond_b4

    const/4 v2, 0x0

    goto :goto_b6

    :cond_b4
    const/16 v2, 0x8

    :goto_b6
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v0, Lcom/codemao/nemo/R$id;->ll_Share_link:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->isNeedShow(I)Z

    move-result v2

    if-eqz v2, :cond_d8

    const/4 v2, 0x0

    goto :goto_da

    :cond_d8
    const/16 v2, 0x8

    :goto_da
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lcom/codemao/nemo/R$id;->ll_share_save:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->isNeedShow(I)Z

    move-result v2

    if-eqz v2, :cond_fc

    const/4 v2, 0x0

    goto :goto_fe

    :cond_fc
    const/16 v2, 0x8

    :goto_fe
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget v0, Lcom/codemao/nemo/R$id;->ll_share_miao:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->isNeedShow(I)Z

    move-result v2

    if-eqz v2, :cond_11f

    goto :goto_121

    :cond_11f
    const/16 v3, 0x8

    :goto_121
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget v0, Lcom/codemao/nemo/R$id;->ll_share_item:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda8;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final initShareBtn$lambda$1(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget v0, Lcom/codemao/nemo/R$id;->ll_share_item:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 133
    iget-object v1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->lastShowIndex()I

    move-result v1

    .line 134
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2c

    return-void

    .line 136
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 138
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    nop

    :cond_3f
    return-void
.end method

.method private static final onClick$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final onClick$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onClick$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final onClick$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onClick$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final onClick$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击退出"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findViewCache:Ljava/util/Map;

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

    const v0, 0x7f0d005c

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "我的二维码页"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 446
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 449
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mQQShareListener:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14

    if-eqz p1, :cond_7

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const v0, 0x7f0a04e7

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    if-eq p1, v0, :cond_192

    const-string v0, "TYPE_SHARE_WORK_CARD"

    const-string v4, "shareBp"

    packed-switch p1, :pswitch_data_1e2

    goto/16 :goto_1e1

    .line 225
    :pswitch_1b  #0x7f0a04a3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击微信分享"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 226
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 227
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 230
    :cond_3d
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->getShareImgPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 231
    sget-object v5, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/WXShareHelper;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->getMWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$1;

    invoke-direct {v9, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$1;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;->shareImg$default(Lcom/codemao/nemo/qrscan/utils/WXShareHelper;Lcom/tencent/mm/opensdk/openapi/IWXAPI;ZLandroid/graphics/Bitmap;Lcn/codemao/android/share/interfaces/IshareResult;ILjava/lang/Object;)V

    goto/16 :goto_1e1

    .line 312
    :pswitch_60  #0x7f0a04a2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-点击qq空间分享"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 314
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_82

    .line 315
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 318
    :cond_82
    sget-object p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$5;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    new-instance v1, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 333
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 334
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 335
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$6;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    new-instance v1, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_1e1

    .line 271
    :pswitch_b9  #0x7f0a04a1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-点击qq分享"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 273
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_db

    .line 274
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 277
    :cond_db
    sget-object p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$3;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    new-instance v1, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 292
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 293
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 294
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$4;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    new-instance v1, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_1e1

    .line 353
    :pswitch_112  #0x7f0a04a0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击复制链接"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 354
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->getShareDes()Ljava/lang/String;

    move-result-object p1

    const-string v0, "simple text"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    const-string v0, "clipboard"

    .line 355
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "链接已复制成功，快去分享吧"

    .line 356
    invoke-static {p0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto/16 :goto_1e1

    .line 248
    :pswitch_150  #0x7f0a049f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击朋友圈分享"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_172

    .line 250
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 253
    :cond_172
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->getShareImgPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 254
    sget-object v0, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/WXShareHelper;

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->getMWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$2;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$2;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/codemao/nemo/qrscan/utils/WXShareHelper;->shareImg(Lcom/tencent/mm/opensdk/openapi/IWXAPI;ZLandroid/graphics/Bitmap;Lcn/codemao/android/share/interfaces/IshareResult;)V

    goto :goto_1e1

    .line 361
    :cond_192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击下载图片"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 363
    sget-object p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "TYPE_SAVE_WORK_CARD"

    invoke-virtual {p1, p0, v1, v0}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$7;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    new-instance v1, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 378
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 379
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 380
    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$8;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$8;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    new-instance v1, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_1e1
    return-void

    :pswitch_data_1e2
    .packed-switch 0x7f0a049f
        :pswitch_150  #7f0a049f
        :pswitch_112  #7f0a04a0
        :pswitch_b9  #7f0a04a1
        :pswitch_60  #7f0a04a2
        :pswitch_1b  #7f0a04a3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 86
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_share_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->mShareInfo:Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    if-nez p1, :cond_1a

    const p1, 0x7f1202c1

    .line 90
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    .line 94
    :cond_1a
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->getShareImgPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 95
    sget v0, Lcom/codemao/nemo/R$id;->iv_share_content:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->initShareBtn()V

    .line 99
    sget p1, Lcom/codemao/nemo/R$id;->iv_share_close:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->doShowShareAnim()V

    return-void
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
