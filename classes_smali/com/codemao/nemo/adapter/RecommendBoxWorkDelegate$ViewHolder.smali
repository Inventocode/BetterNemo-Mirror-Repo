.class Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecommendBoxWorkDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field ivAvatar:Landroid/widget/ImageView;

.field ivCover:Landroid/widget/ImageView;

.field tvAuthorName:Landroid/widget/TextView;

.field tvWorkName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;Landroid/view/View;)V
    .registers 3

    .line 61
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0447

    .line 62
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;->ivCover:Landroid/widget/ImageView;

    const p1, 0x7f0a0923

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;->tvWorkName:Landroid/widget/TextView;

    const p1, 0x7f0a043c

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;->ivAvatar:Landroid/widget/ImageView;

    const p1, 0x7f0a0912

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;->tvAuthorName:Landroid/widget/TextView;

    return-void
.end method
