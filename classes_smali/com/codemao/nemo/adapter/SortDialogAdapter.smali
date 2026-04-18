.class public Lcom/codemao/nemo/adapter/SortDialogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SortDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TypeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/codemao/nemo/listener/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TypeItemData;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter;->datas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/SortDialogAdapter;)Lcom/codemao/nemo/listener/OnItemClickListener;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter;->onItemClickListener:Lcom/codemao/nemo/listener/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 20
    check-cast p1, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/adapter/SortDialogAdapter;->onBindViewHolder(Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;I)V
    .registers 8

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/TypeItemData;

    .line 51
    iget-object v1, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1b

    .line 52
    iget-object v1, p1, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;->vDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    .line 54
    :cond_1b
    iget-object v1, p1, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;->vDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :goto_20
    iget-object v1, p1, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;->tvText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TypeItemData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TypeItemData;->getLeftIconRes()I

    move-result v1

    if-gez v1, :cond_3e

    .line 59
    iget-object v1, p1, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;->ivLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v1, p1, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;->ivLeft:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TypeItemData;->getLeftIconRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4c

    .line 62
    :cond_3e
    iget-object v1, p1, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;->ivLeft:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TypeItemData;->getLeftIconRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v0, p1, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;->ivLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    :goto_4c
    iget-object v0, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter;->onItemClickListener:Lcom/codemao/nemo/listener/OnItemClickListener;

    if-eqz v0, :cond_5a

    .line 66
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/codemao/nemo/adapter/SortDialogAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/adapter/SortDialogAdapter$1;-><init>(Lcom/codemao/nemo/adapter/SortDialogAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5a
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/adapter/SortDialogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;
    .registers 5

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01ec

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;-><init>(Lcom/codemao/nemo/adapter/SortDialogAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/codemao/nemo/listener/OnItemClickListener;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter;->onItemClickListener:Lcom/codemao/nemo/listener/OnItemClickListener;

    return-void
.end method
