.class public Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FullScreenHelperCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter$Holder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private listener:Landroid/view/View$OnClickListener;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field selPosition:I

.field unselColor:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Z)V"
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "#FF42257A"

    .line 241
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->unselColor:I

    .line 246
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->mDatas:Ljava/util/List;

    .line 247
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->listener:Landroid/view/View$OnClickListener;

    if-eqz p3, :cond_13

    const/4 p1, 0x0

    goto :goto_15

    :cond_13
    const/16 p1, 0x9

    .line 248
    :goto_15
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->selPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 235
    check-cast p1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter$Holder;I)V
    .registers 5

    .line 269
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 270
    iget v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->selPosition:I

    if-ne p2, v0, :cond_16

    .line 271
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_shape_edit_role_bg_select:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b

    .line 273
    :cond_16
    iget v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->unselColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 274
    :goto_1b
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;

    iget-object v0, v0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    const-wide/16 v0, 0x3e8

    .line 286
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 289
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 290
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->selPosition:I

    if-ne v1, v2, :cond_18

    return-void

    .line 292
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->selPosition:I

    .line 295
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 296
    iget v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->selPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 298
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2d

    .line 299
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2d
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter$Holder;
    .registers 5

    .line 253
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 254
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v1, :cond_1a

    const/high16 v1, 0x42800000  # 64.0f

    goto :goto_1c

    :cond_1a
    const/high16 v1, 0x42480000  # 50.0f

    :goto_1c
    invoke-static {p1, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 255
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 258
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v0, :cond_33

    const/high16 v0, 0x41800000  # 16.0f

    goto :goto_35

    :cond_33
    const/high16 v0, 0x41400000  # 12.0f

    :goto_35
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 259
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 260
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 263
    new-instance p1, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter$Holder;

    invoke-direct {p1, p2}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoListAdapter$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
