.class public Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CurrentAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/CurrentAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public iv_actor_header:Landroid/widget/ImageView;

.field public sel_bg:Landroid/view/View;

.field public tv_actor_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/adpater/CurrentAdapters;Landroid/view/View;)V
    .registers 4

    .line 281
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 282
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/codemao/creativecenter/R$id;->iv_actor_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;->iv_actor_header:Landroid/widget/ImageView;

    .line 283
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/codemao/creativecenter/R$id;->tv_actor_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;->tv_actor_name:Landroid/widget/TextView;

    .line 284
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/codemao/creativecenter/R$id;->sel_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;->sel_bg:Landroid/view/View;

    return-void
.end method
