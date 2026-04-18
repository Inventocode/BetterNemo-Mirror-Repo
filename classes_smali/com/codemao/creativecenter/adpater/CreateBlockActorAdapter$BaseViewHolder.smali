.class Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CreateBlockActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseViewHolder"
.end annotation


# instance fields
.field flRoot:Landroid/widget/RelativeLayout;

.field iv:Landroid/widget/ImageView;

.field tvBlockCount:Landroid/widget/TextView;

.field tvDetail:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;Landroid/view/View;)V
    .registers 3

    .line 212
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 213
    sget p1, Lcom/codemao/creativecenter/R$id;->iv_style:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->iv:Landroid/widget/ImageView;

    .line 214
    sget p1, Lcom/codemao/creativecenter/R$id;->tv_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    .line 215
    sget p1, Lcom/codemao/creativecenter/R$id;->tv_des:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvDetail:Landroid/widget/TextView;

    .line 216
    sget p1, Lcom/codemao/creativecenter/R$id;->cl_root:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->flRoot:Landroid/widget/RelativeLayout;

    .line 217
    sget p1, Lcom/codemao/creativecenter/R$id;->tv_block_count:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvBlockCount:Landroid/widget/TextView;

    return-void
.end method
