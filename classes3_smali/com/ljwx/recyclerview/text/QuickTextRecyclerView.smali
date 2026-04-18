.class public final Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "QuickTextRecyclerView.kt"


# instance fields
.field private mAdapter:Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter<",
            "Ljava/lang/Object;",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mBindItem:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-",
            "Ljava/lang/CharSequence;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;->init()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 13
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMBindItem$p(Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;)Lkotlin/jvm/functions/Function2;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;->mBindItem:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method private final init()V
    .registers 9

    .line 28
    new-instance v7, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    const-class v1, Ljava/lang/Object;

    .line 30
    sget v2, Lcom/ljwx/recyclerview/R$layout;->base_recyclerview_simple_text:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;-><init>(Ljava/lang/Class;IILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, p0, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;->mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    .line 32
    new-instance v0, Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v7, v2, v1, v2}, Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;-><init>(Lcom/ljwx/recyclerview/itemtype/ItemType;Landroidx/recyclerview/widget/AsyncDifferConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;->mAdapter:Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;

    .line 33
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    iget-object v0, p0, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;->mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    if-nez v0, :cond_27

    const-string v0, "mItemType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_28

    :cond_27
    move-object v2, v0

    :goto_28
    new-instance v0, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView$init$1;

    invoke-direct {v0, p0}, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView$init$1;-><init>(Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;)V

    invoke-virtual {v2, v0}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->setOnItemBind(Lkotlin/jvm/functions/Function2;)V

    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_41

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 42
    :cond_41
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public setOnItemClick(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;->mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    if-nez v0, :cond_f

    const-string v0, "mItemType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_f
    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->setOnItemClick(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
