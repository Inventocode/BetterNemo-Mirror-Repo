.class public final Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;
.super Landroid/widget/FrameLayout;
.source "LoadMoreView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadMoreView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadMoreView.kt\ncom/ljwx/recyclerview/loadmore/view/LoadMoreView\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,135:1\n359#2,7:136\n*S KotlinDebug\n*F\n+ 1 LoadMoreView.kt\ncom/ljwx/recyclerview/loadmore/view/LoadMoreView\n*L\n105#1:136,7\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;

.field public static final STATE_COMPLETE:I = 0x4

.field public static final STATE_ERROR:I = 0x5

.field public static final STATE_HAS_MORE:I = 0x3

.field public static final STATE_LOADING:I

.field private static final commonViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private vContent:Landroid/view/View;

.field private final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->Companion:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;

    const/4 v0, 0x4

    new-array v1, v0, [Lkotlin/Pair;

    .line 27
    new-instance v2, Lkotlin/Pair;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/ljwx/recyclerview/R$layout;->common_rv_load_more_error:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 28
    new-instance v2, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/ljwx/recyclerview/R$layout;->common_rv_load_more_loading:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 29
    new-instance v2, Lkotlin/Pair;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 30
    new-instance v2, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v4, Lcom/ljwx/recyclerview/R$layout;->common_rv_load_more_complete:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    .line 26
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->commonViews:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->views:Ljava/util/Map;

    .line 54
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->views:Ljava/util/Map;

    .line 54
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->views:Ljava/util/Map;

    .line 54
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$getCommonViews$cp()Ljava/util/Map;
    .registers 1

    .line 14
    sget-object v0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->commonViews:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .line 125
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 129
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    .line 130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->removeViews(II)V

    :cond_19
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->vContent:Landroid/view/View;

    return-void
.end method

.method public final showStateComplete(Ljava/lang/Integer;)Landroid/view/View;
    .registers 3

    if-nez p1, :cond_13

    .line 88
    sget-object p1, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->Companion:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;

    invoke-virtual {p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;->getCommonViews()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 89
    :cond_13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateComplete$1;

    invoke-direct {v0, p0, p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateComplete$1;-><init>(Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1, v0}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->showStateView(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final showStateError(Ljava/lang/Integer;)Landroid/view/View;
    .registers 3

    if-nez p1, :cond_13

    .line 78
    sget-object p1, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->Companion:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;

    invoke-virtual {p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;->getCommonViews()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 79
    :cond_13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateError$1;

    invoke-direct {v0, p0, p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateError$1;-><init>(Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1, v0}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->showStateView(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final showStateLoading(Ljava/lang/Integer;)Landroid/view/View;
    .registers 3

    if-nez p1, :cond_13

    .line 68
    sget-object p1, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->Companion:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;

    invoke-virtual {p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;->getCommonViews()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 69
    :cond_13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1;

    invoke-direct {v0, p0, p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1;-><init>(Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1, v0}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->showStateView(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final showStateView(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "create"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->vContent:Landroid/view/View;

    if-nez v1, :cond_13

    goto :goto_18

    :cond_13
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_18
    iget-object v1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->views:Ljava/util/Map;

    .line 359
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_27

    .line 361
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    .line 362
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_27
    check-cast v2, Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_35

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_36

    :cond_35
    move-object p1, p2

    .line 109
    :goto_36
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    .line 110
    iget-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->vContent:Landroid/view/View;

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :cond_44
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->removeViews(II)V

    goto :goto_57

    .line 113
    :cond_54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 115
    :goto_57
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_5a
    return-object v2
.end method
