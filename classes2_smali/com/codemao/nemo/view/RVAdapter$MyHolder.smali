.class Lcom/codemao/nemo/view/RVAdapter$MyHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/RVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHolder"
.end annotation


# instance fields
.field ivCover:Landroid/widget/ImageView;

.field myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

.field rlDownload:Landroid/view/View;

.field rlLeft:Landroid/view/View;

.field rlRight:Landroid/view/View;

.field rlUpload:Landroid/view/View;

.field rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/RVAdapter;Landroid/view/View;)V
    .registers 3

    .line 271
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a033d

    .line 272
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/MyExpandCardView;

    iput-object p1, p0, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const p1, 0x7f0a0487

    .line 273
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlLeft:Landroid/view/View;

    const p1, 0x7f0a061a

    .line 274
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlRight:Landroid/view/View;

    const p1, 0x7f0a0674

    .line 275
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rootView:Landroid/view/View;

    const p1, 0x7f0a01f0

    .line 276
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlDownload:Landroid/view/View;

    const p1, 0x7f0a0937

    .line 277
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlUpload:Landroid/view/View;

    const p1, 0x7f0a0507

    .line 278
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->ivCover:Landroid/widget/ImageView;

    return-void
.end method
