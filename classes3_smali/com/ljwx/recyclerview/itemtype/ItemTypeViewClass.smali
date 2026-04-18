.class public final Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;
.super Ljava/lang/Object;
.source "ItemTypeViewClass.kt"

# interfaces
.implements Lcom/ljwx/recyclerview/itemtype/ItemType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ljwx/recyclerview/itemtype/ItemType<",
        "TItem;",
        "Lcom/ljwx/recyclerview/holder/ViewHolder<",
        "TV;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nItemTypeViewClass.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ItemTypeViewClass.kt\ncom/ljwx/recyclerview/itemtype/ItemTypeViewClass\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"
.end annotation


# instance fields
.field private binder:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ViewHolder<",
            "TV;>;-TItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final itemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mItemClick:Lkotlin/jvm/functions/Function2;
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

.field private final subtype:I

.field private final viewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;ILkotlin/jvm/functions/Function2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TItem;>;",
            "Ljava/lang/Class<",
            "TV;>;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ViewHolder<",
            "TV;>;-TItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->itemClass:Ljava/lang/Class;

    .line 12
    iput-object p2, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->viewClass:Ljava/lang/Class;

    .line 13
    iput p3, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->subtype:I

    .line 14
    iput-object p4, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->binder:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;-><init>(Ljava/lang/Class;Ljava/lang/Class;ILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getMItemClick$p(Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;)Lkotlin/jvm/functions/Function2;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->mItemClick:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic bind(Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;)V
    .registers 3

    .line 10
    check-cast p1, Lcom/ljwx/recyclerview/holder/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->bind(Lcom/ljwx/recyclerview/holder/ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public bind(Lcom/ljwx/recyclerview/holder/ViewHolder;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/holder/ViewHolder<",
            "TV;>;TItem;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->binder:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_c
    iget-object v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->mItemClick:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_24

    .line 30
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass$bind$2$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass$bind$2$1;-><init>(Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;Lcom/ljwx/recyclerview/holder/ViewHolder;Ljava/lang/Object;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ljwx/recyclerview/SingleClickKt;->singleClick$default(Landroid/view/View;JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_24
    return-void
.end method

.method public bridge synthetic create(Landroid/view/ViewGroup;)Lcom/ljwx/recyclerview/holder/ItemHolder;
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->create(Landroid/view/ViewGroup;)Lcom/ljwx/recyclerview/holder/ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public create(Landroid/view/ViewGroup;)Lcom/ljwx/recyclerview/holder/ViewHolder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/ljwx/recyclerview/holder/ViewHolder<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/ljwx/recyclerview/holder/ViewHolder;

    iget-object v1, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->viewClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "viewClass.getConstructor…wInstance(parent.context)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-direct {v0, p1}, Lcom/ljwx/recyclerview/holder/ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->itemClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->subtype:I

    if-eqz v0, :cond_1f

    instance-of v0, p1, Lcom/ljwx/recyclerview/itemtype/ItemSubtype;

    if-eqz v0, :cond_21

    check-cast p1, Lcom/ljwx/recyclerview/itemtype/ItemSubtype;

    invoke-interface {p1}, Lcom/ljwx/recyclerview/itemtype/ItemSubtype;->getSubtype()I

    move-result p1

    iget v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->subtype:I

    if-ne p1, v0, :cond_21

    :cond_1f
    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return p1
.end method
