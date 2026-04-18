.class public Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ColorSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private colorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private colorSelecListener:Landroid/view/View$OnClickListener;

.field private colorType:I

.field private context:Landroid/content/Context;

.field private screenHeight:I

.field private selectPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->selectPosition:I

    const/16 v0, -0x64

    .line 23
    iput v0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->screenHeight:I

    const/16 v0, 0xfa0

    .line 24
    iput v0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorType:I

    .line 42
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 33
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 38
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 17
    check-cast p1, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->onBindViewHolder(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;I)V
    .registers 8

    .line 62
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$000(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->screenHeight:I

    int-to-double v1, v1

    const-wide v3, 0x3fb3333333333333L  # 0.075

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$000(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$000(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$000(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$100(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->screenHeight:I

    int-to-double v1, v1

    const-wide v3, 0x3fa999999999999aL  # 0.05

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$100(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorSelecListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_82

    .line 69
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$000(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$000(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorSelecListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_82
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x3e7

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_d7

    .line 73
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$100(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget p2, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorType:I

    const/16 v0, 0xfa0

    if-ne p2, v0, :cond_ac

    .line 75
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$100(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_text_bg_nor:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_b5

    .line 77
    :cond_ac
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$100(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_text_bg_act:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 79
    :goto_b5
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$200(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$300(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$000(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/codemao/android/sketch/R$color;->sketch_color_list_back:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_130

    .line 83
    :cond_d7
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$100(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$000(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 85
    iget v0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->selectPosition:I

    if-ne v0, p2, :cond_122

    .line 86
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_113

    .line 87
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$300(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$200(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_130

    .line 90
    :cond_113
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$300(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$200(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_130

    .line 94
    :cond_122
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$200(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;->access$300(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_130
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 17
    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;
    .registers 5

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcn/codemao/android/sketch/R$layout;->item_color_selector:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter$ViewHolder;-><init>(Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setColorSelecListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorSelecListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setColorType(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->colorType:I

    return-void
.end method

.method public setScreenHeight(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->screenHeight:I

    return-void
.end method

.method public setSelectPosition(I)V
    .registers 2

    .line 103
    iput p1, p0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->selectPosition:I

    .line 104
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
