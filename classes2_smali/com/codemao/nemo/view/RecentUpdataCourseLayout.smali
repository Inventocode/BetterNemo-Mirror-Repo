.class public final Lcom/codemao/nemo/view/RecentUpdataCourseLayout;
.super Landroid/widget/FrameLayout;
.source "RecentUpdataCourseLayout.kt"


# instance fields
.field private hasInit:Z

.field private final isLargePad:Z

.field private final morePurpel:Landroid/widget/TextView;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/RecentUpdataCourseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/nemo/view/RecentUpdataCourseLayout;->isLargePad:Z

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    if-eqz p2, :cond_1d

    const p2, 0x7f0d01cb

    goto :goto_20

    :cond_1d
    const p2, 0x7f0d01ca

    :goto_20
    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a07af

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/RecentUpdataCourseLayout;->titleTextView:Landroid/widget/TextView;

    const p1, 0x7f0a068c

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.rv_content)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/codemao/nemo/view/RecentUpdataCourseLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0a053f

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.more_purpel)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/RecentUpdataCourseLayout;->morePurpel:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getHasInit()Z
    .registers 2

    .line 17
    iget-boolean v0, p0, Lcom/codemao/nemo/view/RecentUpdataCourseLayout;->hasInit:Z

    return v0
.end method

.method public final getMorePurpel()Landroid/widget/TextView;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/nemo/view/RecentUpdataCourseLayout;->morePurpel:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/view/RecentUpdataCourseLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final getTitleTextView()Landroid/widget/TextView;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/view/RecentUpdataCourseLayout;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setHasInit(Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/codemao/nemo/view/RecentUpdataCourseLayout;->hasInit:Z

    return-void
.end method
