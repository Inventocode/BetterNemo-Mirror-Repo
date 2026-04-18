.class public final Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "FramesPlayImageView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFramesPlayImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FramesPlayImageView.kt\ncom/codemao/toolssdk/view/loading/FramesPlayImageView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation


# instance fields
.field private allRes:[I

.field private currentIndex:I

.field private finalIndex:I

.field private mHandler:Landroid/os/Handler;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$L0rj3PuWCAATbZN21vVBPZxU3xU(Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->runnable$lambda$0(Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 13
    iput-object p1, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->allRes:[I

    .line 36
    new-instance p1, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 13
    iput-object p1, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->allRes:[I

    .line 36
    new-instance p1, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final postAnim()V
    .registers 5

    .line 51
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "FramesPlayImageView发送下一个动画"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dLeak(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_14

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void
.end method

.method private static final runnable$lambda$0(Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "FramesPlayImageView执行动画"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dLeak(Ljava/lang/String;)V

    .line 39
    :try_start_c
    iget-object v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->allRes:[I

    iget v1, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->currentIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 40
    iget v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->currentIndex:I

    iget v1, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->finalIndex:I

    if-lt v0, v1, :cond_1e

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->currentIndex:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_1e

    .line 46
    :catch_1e
    :cond_1e
    iget v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->currentIndex:I

    .line 47
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->postAnim()V

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .registers 3

    .line 72
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "触发FramesPlayImageView的onDestroy"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dLeak(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->stopAnim()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 66
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "触发FramesPlayImageView的onDetachedFromWindow"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dLeak(Ljava/lang/String;)V

    .line 67
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 68
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->onDestroy()V

    return-void
.end method

.method public final setData(I)V
    .registers 7

    .line 23
    iget-object v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->mHandler:Landroid/os/Handler;

    .line 26
    :cond_f
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.resources.obtainTypedArray(res)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->finalIndex:I

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->allRes:[I

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v0, :cond_43

    .line 30
    iget-object v3, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->allRes:[I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 32
    :cond_43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final startAnim()V
    .registers 1

    .line 56
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->stopAnim()V

    .line 57
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->postAnim()V

    return-void
.end method

.method public final stopAnim()V
    .registers 3

    .line 61
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "FramesPlayImageView停止动画"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dLeak(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method
