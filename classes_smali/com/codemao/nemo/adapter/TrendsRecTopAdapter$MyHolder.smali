.class Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TrendsRecTopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHolder"
.end annotation


# instance fields
.field ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

.field tvName:Landroid/widget/TextView;

.field tvTag:Lcom/codemao/nemo/view/ColorTextView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;Landroid/view/View;)V
    .registers 3

    .line 106
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0362

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/RoundStrokeImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    const p1, 0x7f0a0914

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->tvName:Landroid/widget/TextView;

    const p1, 0x7f0a0916

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/ColorTextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;->tvTag:Lcom/codemao/nemo/view/ColorTextView;

    return-void
.end method
