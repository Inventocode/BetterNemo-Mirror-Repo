.class public final Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;
.super Ljava/lang/Object;
.source "ScanAnimationHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;

    invoke-direct {v0}, Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;-><init>()V

    sput-object v0, Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final startDotAnimal(Landroid/view/View;)V
    .registers 10

    const-string v0, "dot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f000000  # 0.5f

    const/high16 v7, 0x3f000000  # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x2bc

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v1, -0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    const-wide/16 v3, 0x79e

    .line 21
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 23
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x15e

    .line 24
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 25
    invoke-virtual {v3, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 26
    invoke-virtual {v3, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    const-wide/16 v4, 0x8fc

    .line 27
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 32
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 33
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 34
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final startLineAnimal(Landroid/view/View;)V
    .registers 5

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x437a0000  # 250.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x7d0

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 44
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
