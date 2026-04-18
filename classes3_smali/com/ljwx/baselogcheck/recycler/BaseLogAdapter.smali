.class public final Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseLogAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter;->data:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 12
    check-cast p1, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter;->onBindViewHolder(Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;I)V
    .registers 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "data[position]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_1b

    :cond_17
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 34
    :goto_1b
    invoke-virtual {p1}, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;->getContent()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;
    .registers 5

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 23
    sget v0, Lcom/ljwx/baselogcheck/R$layout;->item_base_log_display:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 24
    new-instance p2, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;-><init>(Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter;Landroid/view/View;)V

    return-object p2
.end method
