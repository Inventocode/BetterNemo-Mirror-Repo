.class Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CreateDebugListChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewHolder"
.end annotation


# instance fields
.field tvName:Landroid/widget/TextView;

.field tvRoleName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 130
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 131
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_role_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvRoleName:Landroid/widget/TextView;

    return-void
.end method
