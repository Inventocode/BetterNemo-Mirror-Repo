.class Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OpenLessonRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/OpenLessonRVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHolder"
.end annotation


# instance fields
.field ivCover:Landroid/widget/ImageView;

.field tagNew:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/OpenLessonRVAdapter;Landroid/view/View;)V
    .registers 3

    .line 154
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a03c6

    .line 155
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;->ivCover:Landroid/widget/ImageView;

    const p1, 0x7f0a076b

    .line 156
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;->tagNew:Landroid/widget/ImageView;

    return-void
.end method
