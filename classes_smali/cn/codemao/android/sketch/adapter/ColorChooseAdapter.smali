.class public Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ColorChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private itemSize:I

.field private listener:Lcn/codemao/android/sketch/listener/OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private selectIndex:I

.field private showG:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v0

    iget-boolean v0, v0, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz v0, :cond_b

    const/high16 v0, 0x42100000  # 36.0f

    goto :goto_d

    :cond_b
    const/high16 v0, 0x41d00000  # 26.0f

    :goto_d
    invoke-static {p2, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;-><init>(Ljava/util/List;Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            "ZI)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->datas:Ljava/util/List;

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->selectIndex:I

    .line 40
    iput-boolean p3, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->showG:Z

    .line 41
    iput-object p2, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->mContext:Landroid/content/Context;

    if-nez p1, :cond_14

    return-void

    .line 43
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object p2, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->datas:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    iput p4, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->itemSize:I

    return-void
.end method

.method static synthetic access$002(Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;I)I
    .registers 2

    .line 25
    iput p1, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->selectIndex:I

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 97
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 25
    check-cast p1, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->onBindViewHolder(Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;I)V
    .registers 5

    .line 68
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    iget-object v1, p1, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;->colorView:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/view/CircleColorView;->setColor(I)V

    .line 71
    iget-boolean v0, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->showG:Z

    if-nez v0, :cond_20

    const/4 v0, 0x2

    if-ge p2, v0, :cond_20

    .line 73
    iget-object v0, p1, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;->colorView:Lcn/codemao/android/sketch/view/CircleColorView;

    const v1, 0x1a8c77ff

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/CircleColorView;->setUnselColor(I)V

    .line 76
    :cond_20
    iget-object v0, p1, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;->colorView:Lcn/codemao/android/sketch/view/CircleColorView;

    iget v1, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->selectIndex:I

    if-ne p2, v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/CircleColorView;->setSelected(Z)V

    .line 78
    iget v0, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->selectIndex:I

    if-ne p2, v0, :cond_3d

    .line 79
    iget-object p2, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->listener:Lcn/codemao/android/sketch/listener/OnItemClickListener;

    if-eqz p2, :cond_3d

    .line 80
    iget-object v0, p1, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;->colorView:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcn/codemao/android/sketch/listener/OnItemClickListener;->onClick(Landroid/view/View;I)V

    .line 85
    :cond_3d
    iget-object p2, p1, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;->colorView:Lcn/codemao/android/sketch/view/CircleColorView;

    new-instance v0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$1;

    invoke-direct {v0, p0, p1}, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$1;-><init>(Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;
    .registers 5

    .line 60
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget p2, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->itemSize:I

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 61
    new-instance p2, Lcn/codemao/android/sketch/view/CircleColorView;

    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->showG:Z

    invoke-direct {p2, v0, v1}, Lcn/codemao/android/sketch/view/CircleColorView;-><init>(Landroid/content/Context;Z)V

    .line 62
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance p1, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;

    invoke-direct {p1, p0, p2}, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter$Holder;-><init>(Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public reset()V
    .registers 3

    .line 106
    iget v0, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->selectIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 107
    :cond_6
    iput v1, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->selectIndex:I

    .line 108
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcn/codemao/android/sketch/listener/OnItemClickListener;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->listener:Lcn/codemao/android/sketch/listener/OnItemClickListener;

    return-void
.end method

.method public setSelectIndex(I)V
    .registers 2

    .line 101
    iput p1, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->selectIndex:I

    .line 102
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateColors(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 51
    :cond_3
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorChooseAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
