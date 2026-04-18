.class final Lcom/ljwx/recyclerview/text/QuickTextRecyclerView$init$1;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickTextRecyclerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;


# direct methods
.method constructor <init>(Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView$init$1;->this$0:Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 34
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView$init$1;->invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "itemHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "any"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 36
    :goto_15
    iget-object v0, p0, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView$init$1;->this$0:Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;

    invoke-static {v0}, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;->access$getMBindItem$p(Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 37
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/ljwx/recyclerview/R$id;->text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_2a

    goto :goto_39

    :cond_2a
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 39
    :cond_2e
    iget-object v0, p0, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView$init$1;->this$0:Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;

    invoke-static {v0}, Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;->access$getMBindItem$p(Lcom/ljwx/recyclerview/text/QuickTextRecyclerView;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    :goto_39
    return-void
.end method
