.class Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SortDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/adapter/SortDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHolder"
.end annotation


# instance fields
.field ivLeft:Landroid/widget/ImageView;

.field tvText:Landroid/widget/TextView;

.field vDivider:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/SortDialogAdapter;Landroid/view/View;)V
    .registers 3

    .line 90
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a03c5

    .line 91
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;->ivLeft:Landroid/widget/ImageView;

    const p1, 0x7f0a086b

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;->tvText:Landroid/widget/TextView;

    const p1, 0x7f0a0980

    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;->vDivider:Landroid/view/View;

    return-void
.end method
