.class public Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;
.super Ljava/lang/Object;
.source "ItemTypeLayout.kt"

# interfaces
.implements Lcom/ljwx/recyclerview/itemtype/ItemType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ljwx/recyclerview/itemtype/ItemType<",
        "TItem;",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nItemTypeLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ItemTypeLayout.kt\ncom/ljwx/recyclerview/itemtype/ItemTypeLayout\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,62:1\n13543#2,2:63\n*S KotlinDebug\n*F\n+ 1 ItemTypeLayout.kt\ncom/ljwx/recyclerview/itemtype/ItemTypeLayout\n*L\n38#1:63,2\n*E\n"
.end annotation


# instance fields
.field private final itemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private itemClick:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutResId:I

.field private mBinder:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mIds:[Ljava/lang/Integer;

.field private mItemChildClick:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final subtype:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;IILkotlin/jvm/functions/Function2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TItem;>;II",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->itemClass:Ljava/lang/Class;

    .line 12
    iput p2, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->layoutResId:I

    .line 14
    iput p3, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->subtype:I

    .line 15
    iput-object p4, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->itemClick:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;IILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_a

    const/4 p4, 0x0

    .line 10
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;-><init>(Ljava/lang/Class;IILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getItemClick$p(Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;)Lkotlin/jvm/functions/Function2;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->itemClick:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getMItemChildClick$p(Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;)Lkotlin/jvm/functions/Function3;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->mItemChildClick:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method


# virtual methods
.method public bind(Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "TItem;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->mBinder:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_c
    iget-object v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->itemClick:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_24

    .line 33
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout$bind$1$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout$bind$1$1;-><init>(Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ljwx/recyclerview/SingleClickKt;->singleClick$default(Landroid/view/View;JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->mItemChildClick:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_53

    .line 38
    iget-object v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->mIds:[Ljava/lang/Integer;

    if-eqz v0, :cond_53

    const/4 v1, 0x0

    .line 13543
    array-length v2, v0

    :goto_2e
    if-ge v1, v2, :cond_53

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 39
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_50

    const-string v4, "findViewById<View>(it)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout$bind$2$1$1;

    invoke-direct {v9, p0, p1, p2, v3}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout$bind$2$1$1;-><init>(Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;I)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/ljwx/recyclerview/SingleClickKt;->singleClick$default(Landroid/view/View;JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_53
    return-void
.end method

.method public create(Landroid/view/ViewGroup;)Lcom/ljwx/recyclerview/holder/ItemHolder;
    .registers 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/ljwx/recyclerview/holder/ItemHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->layoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "from(parent.context).inf…youtResId, parent, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/ljwx/recyclerview/holder/ItemHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->itemClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->subtype:I

    if-eqz v0, :cond_1f

    instance-of v0, p1, Lcom/ljwx/recyclerview/itemtype/ItemSubtype;

    if-eqz v0, :cond_21

    check-cast p1, Lcom/ljwx/recyclerview/itemtype/ItemSubtype;

    invoke-interface {p1}, Lcom/ljwx/recyclerview/itemtype/ItemSubtype;->getSubtype()I

    move-result p1

    iget v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->subtype:I

    if-ne p1, v0, :cond_21

    :cond_1f
    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return p1
.end method

.method public setOnItemBind(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->mBinder:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public setOnItemChildClick([ILkotlin/jvm/functions/Function3;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toTypedArray([I)[Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->mIds:[Ljava/lang/Integer;

    .line 59
    iput-object p2, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->mItemChildClick:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public setOnItemClick(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->itemClick:Lkotlin/jvm/functions/Function2;

    return-void
.end method
