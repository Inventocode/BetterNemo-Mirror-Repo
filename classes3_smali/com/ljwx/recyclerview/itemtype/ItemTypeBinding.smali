.class public final Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;
.super Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;
.source "ItemTypeBinding.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field private final brId:Ljava/lang/Integer;

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


# direct methods
.method public constructor <init>(Ljava/lang/Class;IILjava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TItem;>;II",
            "Ljava/lang/Integer;",
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

    .line 22
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;-><init>(Ljava/lang/Class;IILkotlin/jvm/functions/Function2;)V

    .line 20
    iput-object p4, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;->brId:Ljava/lang/Integer;

    .line 21
    iput-object p5, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;->itemClick:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;IILjava/lang/Integer;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_7

    const/4 p3, 0x0

    const/4 v3, 0x0

    goto :goto_8

    :cond_7
    move v3, p3

    :goto_8
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_12

    .line 20
    sget p3, Lcom/ljwx/recyclerview/BR;->item:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_12
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_18

    const/4 p5, 0x0

    :cond_18
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;-><init>(Ljava/lang/Class;IILjava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "TItem;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 26
    iget-object v1, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;->brId:Ljava/lang/Integer;

    if-eqz v1, :cond_18

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 29
    :cond_18
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 30
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ljwx/recyclerview/itemtype/ItemTypeBindingKt;->getLifecycleOwner(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 33
    :cond_2c
    invoke-super {p0, p1, p2}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->bind(Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;)V

    return-void
.end method
