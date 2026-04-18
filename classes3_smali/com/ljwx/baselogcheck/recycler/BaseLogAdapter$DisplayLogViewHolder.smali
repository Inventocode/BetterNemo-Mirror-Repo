.class public final Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseLogAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayLogViewHolder"
.end annotation


# instance fields
.field private final content:Landroid/widget/TextView;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;->view:Landroid/view/View;

    .line 17
    sget p1, Lcom/ljwx/baselogcheck/R$id;->content:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;->content:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getContent()Landroid/widget/TextView;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/ljwx/baselogcheck/recycler/BaseLogAdapter$DisplayLogViewHolder;->content:Landroid/widget/TextView;

    return-object v0
.end method
