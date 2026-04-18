.class final Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass$bind$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ItemTypeViewClass.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->bind(Lcom/ljwx/recyclerview/holder/ViewHolder;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $holder:Lcom/ljwx/recyclerview/holder/ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/holder/ViewHolder<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic $item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass<",
            "TItem;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;Lcom/ljwx/recyclerview/holder/ViewHolder;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass<",
            "TItem;TV;>;",
            "Lcom/ljwx/recyclerview/holder/ViewHolder<",
            "TV;>;TItem;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass$bind$2$1;->this$0:Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;

    iput-object p2, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass$bind$2$1;->$holder:Lcom/ljwx/recyclerview/holder/ViewHolder;

    iput-object p3, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass$bind$2$1;->$item:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass$bind$2$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 4

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass$bind$2$1;->this$0:Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;

    invoke-static {p1}, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;->access$getMItemClick$p(Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass$bind$2$1;->$holder:Lcom/ljwx/recyclerview/holder/ViewHolder;

    iget-object v1, p0, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass$bind$2$1;->$item:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method
