.class public final Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "HorizontalScrollBehavior.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHorizontalScrollBehavior.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HorizontalScrollBehavior.kt\ncom/codemao/nemo/view/behavior/HorizontalScrollBehavior\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,201:1\n342#2:202\n342#2:203\n*S KotlinDebug\n*F\n+ 1 HorizontalScrollBehavior.kt\ncom/codemao/nemo/view/behavior/HorizontalScrollBehavior\n*L\n79#1:202\n81#1:203\n*E\n"
.end annotation


# instance fields
.field private canHandleScrollListener:Z

.field private final i10:I

.field private final i12:I

.field private final i20:I

.field private final i30:I

.field private isChildVerticalMarginEnable:Z

.field private final isLargePad:Z

.field private isScrollEnable:Z

.field private maxSlipDistance:I

.field private overScrollListener:Ljava/lang/Runnable;

.field private final rv:Landroidx/recyclerview/widget/RecyclerView;

.field private final screenWidth:I

.field private totalUnConsumed:I

.field private valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$_HWxDL30f__OzBro5BLBZal8mhI(Landroid/view/ViewGroup;Landroid/view/View;Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->startAnimator$lambda$0(Landroid/view/ViewGroup;Landroid/view/View;Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Runnable;)V
    .registers 8

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overScrollListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    iput-object p2, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->overScrollListener:Ljava/lang/Runnable;

    .line 24
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->isLargePad:Z

    const/high16 p2, 0x41f00000  # 30.0f

    .line 25
    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->i30:I

    const/high16 v0, 0x41a00000  # 20.0f

    .line 26
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->i20:I

    const/high16 v1, 0x41400000  # 12.0f

    .line 27
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->i12:I

    const/high16 v2, 0x41200000  # 10.0f

    .line 28
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    iput v2, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->i10:I

    .line 29
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v3

    iput v3, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->screenWidth:I

    .line 30
    div-int/lit8 v4, v3, 0x3

    iput v4, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->maxSlipDistance:I

    if-eqz p1, :cond_4e

    sub-int/2addr v3, p2

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v3, v1

    int-to-double p1, v3

    const-wide v0, 0x4011ae147ae147aeL  # 4.42

    goto :goto_58

    :cond_4e
    sub-int/2addr v3, v0

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    int-to-double p1, v3

    const-wide v0, 0x4002e147ae147ae1L  # 2.36

    :goto_58
    div-double/2addr p1, v0

    double-to-int p1, p1

    .line 33
    iput p1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->maxSlipDistance:I

    return-void
.end method

.method private final startAnimator(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 6

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    if-ne v0, v1, :cond_d

    return-void

    .line 45
    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_32

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 46
    fill-array-data v0, :array_40

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_20

    goto :goto_25

    :cond_20
    const-wide/16 v1, 0x190

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    :goto_25
    iget-object v0, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_37

    new-instance v1, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1, p0}, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_37

    :cond_32
    if-eqz v0, :cond_37

    .line 66
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 68
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3e
    return-void

    nop

    :array_40
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private static final startAnimator$lambda$0(Landroid/view/ViewGroup;Landroid/view/View;Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;Landroid/animation/ValueAnimator;)V
    .registers 8

    const-string v0, "$parent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p3

    sub-float/2addr v0, v1

    float-to-int p3, v0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 52
    invoke-virtual {p1, p3, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 58
    iget-object p1, p2, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    float-to-int p0, v0

    .line 60
    iget-object v0, p2, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    .line 62
    iget-object p2, p2, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result p2

    .line 58
    invoke-virtual {p1, p0, v0, p3, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 9

    const-string p3, "parent"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "child"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-boolean p3, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->isChildVerticalMarginEnable:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_4a

    .line 78
    iget-object p3, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    .line 342
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_22

    :cond_21
    move-object v1, v3

    :goto_22
    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_28

    :cond_26
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 80
    :goto_28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr p1, v2

    .line 342
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_3c

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_3c
    if-nez v3, :cond_3f

    goto :goto_41

    :cond_3f
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 81
    :goto_41
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 77
    invoke-virtual {p2, p3, v1, p1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_62

    .line 85
    :cond_4a
    iget-object p3, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 88
    iget-object v1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 84
    invoke-virtual {p2, p3, v0, p1, v1}, Landroid/view/View;->layout(IIII)V

    :goto_62
    const/4 p1, 0x1

    return p1
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 8

    const-string p5, "coordinatorLayout"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "child"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "target"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "consumed"

    invoke-static {p6, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-ne p7, p3, :cond_18

    return-void

    .line 128
    :cond_18
    iget-object p5, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p5, :cond_1f

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1f
    if-gez p4, :cond_72

    .line 129
    iget-object p5, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p5, p3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p3

    if-nez p3, :cond_72

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    sub-int/2addr p3, p4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p5

    if-lt p3, p5, :cond_66

    .line 132
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p3

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p6

    add-int/2addr p5, p6

    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p6

    .line 131
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 137
    iget-object p2, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 138
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p3

    .line 139
    iget-object p4, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getTop()I

    move-result p4

    .line 140
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p1

    .line 141
    iget-object p5, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getBottom()I

    move-result p5

    .line 137
    invoke-virtual {p2, p3, p4, p1, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_72

    :cond_66
    neg-int p1, p4

    .line 144
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 145
    iget-object p2, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->offsetLeftAndRight(I)V

    const/4 p1, 0x0

    .line 146
    aput p4, p6, p1

    :cond_72
    :goto_72
    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .registers 9

    const-string p4, "coordinatorLayout"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "child"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "target"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-ne p8, p3, :cond_13

    return-void

    .line 164
    :cond_13
    iget-object p4, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_1a

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1a
    if-lez p6, :cond_ed

    .line 165
    iget-object p4, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p4

    if-nez p4, :cond_ed

    .line 166
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    div-int/2addr p4, p5

    int-to-float p4, p4

    const/high16 p5, 0x3f800000  # 1.0f

    const/4 p7, 0x0

    cmpg-float p5, p4, p5

    if-nez p5, :cond_3c

    const/4 p5, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p5, 0x0

    :goto_3d
    if-eqz p5, :cond_74

    .line 167
    iget-boolean p5, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->canHandleScrollListener:Z

    if-eqz p5, :cond_74

    .line 168
    iget p5, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->totalUnConsumed:I

    add-int/2addr p5, p6

    iput p5, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->totalUnConsumed:I

    .line 169
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "onNestedScroll: "

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p8, " , k: "

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p8, " , if: "

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p8, 0x64

    if-lt p6, p8, :cond_67

    goto :goto_68

    :cond_67
    const/4 p3, 0x0

    :goto_68
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "TAG"

    invoke-static {p5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_74
    iget-boolean p3, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->canHandleScrollListener:Z

    if-eqz p3, :cond_87

    iget p3, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->totalUnConsumed:I

    iget p5, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->maxSlipDistance:I

    if-lt p3, p5, :cond_87

    .line 172
    iput p7, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->totalUnConsumed:I

    .line 173
    iget-object p3, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->overScrollListener:Ljava/lang/Runnable;

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 174
    iput-boolean p7, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->canHandleScrollListener:Z

    .line 176
    :cond_87
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p3

    sub-int/2addr p3, p6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p5

    if-gt p3, p5, :cond_ce

    .line 178
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p3, p4

    .line 179
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    .line 180
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p5

    .line 181
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p6

    .line 177
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 183
    iget-object p3, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p5

    sub-int/2addr p4, p5

    .line 185
    iget-object p5, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getTop()I

    move-result p5

    .line 186
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    .line 187
    iget-object p2, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result p2

    .line 183
    invoke-virtual {p3, p4, p5, p1, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_ed

    :cond_ce
    float-to-double p3, p4

    const-wide p7, 0x3fe3333333333333L  # 0.6

    cmpl-double p1, p3, p7

    if-lez p1, :cond_e4

    neg-int p1, p6

    .line 191
    div-int/lit8 p1, p1, 0x32

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 192
    iget-object p2, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->offsetLeftAndRight(I)V

    goto :goto_ed

    :cond_e4
    neg-int p1, p6

    .line 194
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 195
    iget-object p2, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->offsetLeftAndRight(I)V

    :cond_ed
    :goto_ed
    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    const-string p5, "coordinatorLayout"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "child"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "directTargetChild"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->canHandleScrollListener:Z

    .line 103
    iget-boolean p1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->isScrollEnable:Z

    return p1
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    const-string p4, "coordinatorLayout"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "child"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "target"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 112
    iput p3, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->totalUnConsumed:I

    .line 113
    invoke-direct {p0, p2, p1}, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->startAnimator(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final setChildVerticalMarginEnable(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->isChildVerticalMarginEnable:Z

    return-void
.end method

.method public final setScrollEnable(Z)V
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->isScrollEnable:Z

    return-void
.end method
