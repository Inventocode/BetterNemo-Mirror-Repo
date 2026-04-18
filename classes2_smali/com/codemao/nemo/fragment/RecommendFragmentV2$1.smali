.class Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RecommendFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/RecommendFragmentV2;->initLayoutManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

.field final synthetic val$i12:I

.field final synthetic val$i15:I

.field final synthetic val$i25:I

.field final synthetic val$i5:I

.field final synthetic val$i7:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;IIIII)V
    .registers 7

    .line 182
    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iput p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i25:I

    iput p3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i15:I

    iput p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i5:I

    iput p5, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i7:I

    iput p6, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i12:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 187
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 191
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_23

    .line 192
    iget-object p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-virtual {p4}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->hasHead()Z

    move-result p4

    if-eqz p4, :cond_23

    .line 193
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 194
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 195
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 196
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_110

    .line 198
    :cond_23
    iget-object p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-virtual {p4}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->hasHead()Z

    move-result p4

    if-eqz p4, :cond_2d

    add-int/lit8 p2, p2, -0x1

    :cond_2d
    if-ltz p2, :cond_110

    .line 199
    iget-object p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p4

    if-lt p2, p4, :cond_3b

    goto/16 :goto_110

    .line 200
    :cond_3b
    sget-object p4, Lcom/codemao/nemo/fragment/RecommendFragmentV2$12;->$SwitchMap$com$codemao$nemo$bean$viewmodel$RecommendItemType:[I

    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_112

    goto/16 :goto_110

    .line 213
    :pswitch_56  #0x2
    iget-object p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {p4}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$000(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)Z

    move-result p4

    if-eqz p4, :cond_aa

    add-int/lit8 p3, p2, -0x1

    if-ltz p3, :cond_9a

    .line 214
    iget-object p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p4, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object p3

    sget-object p4, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->Banner:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-eq p3, p4, :cond_75

    goto :goto_9a

    :cond_75
    add-int/lit8 p2, p2, 0x1

    .line 216
    iget-object p3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    if-ge p2, p3, :cond_91

    iget-object p3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object p2

    if-eq p2, p4, :cond_110

    .line 217
    :cond_91
    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i5:I

    iget p3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i25:I

    invoke-virtual {p1, p2, p2, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_110

    .line 215
    :cond_9a
    :goto_9a
    iget p3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i25:I

    if-nez p2, :cond_a1

    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i15:I

    goto :goto_a3

    :cond_a1
    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i5:I

    :goto_a3
    iget p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i5:I

    invoke-virtual {p1, p3, p2, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_110

    .line 225
    :cond_aa
    :pswitch_aa  #0x3, 0x4, 0x5, 0x6
    iget-object p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {p4}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$000(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)Z

    move-result p4

    if-eqz p4, :cond_c1

    .line 226
    iget p3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i25:I

    if-nez p2, :cond_b9

    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i15:I

    goto :goto_bb

    :cond_b9
    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i5:I

    :goto_bb
    iget p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i5:I

    invoke-virtual {p1, p3, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_110

    .line 228
    :cond_c1
    iget p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i15:I

    if-nez p2, :cond_c8

    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i7:I

    goto :goto_ca

    :cond_c8
    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i12:I

    :goto_ca
    invoke-virtual {p1, p4, p2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_110

    .line 202
    :pswitch_ce  #0x1
    iget-object p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {p4}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$000(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)Z

    move-result p4

    if-eqz p4, :cond_e5

    .line 203
    iget p3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i25:I

    if-nez p2, :cond_dd

    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i15:I

    goto :goto_df

    :cond_dd
    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i5:I

    :goto_df
    iget p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i5:I

    invoke-virtual {p1, p3, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_110

    :cond_e5
    add-int/lit8 p4, p2, -0x1

    if-ltz p4, :cond_104

    .line 205
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {p4}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object p4

    sget-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->Work:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-eq p4, v0, :cond_fc

    goto :goto_104

    .line 208
    :cond_fc
    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i15:I

    iget p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i5:I

    invoke-virtual {p1, p2, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_110

    .line 206
    :cond_104
    :goto_104
    iget p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i15:I

    if-nez p2, :cond_10b

    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i7:I

    goto :goto_10d

    :cond_10b
    iget p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;->val$i12:I

    :goto_10d
    invoke-virtual {p1, p4, p2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_110
    :goto_110
    return-void

    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_ce  #00000001
        :pswitch_56  #00000002
        :pswitch_aa  #00000003
        :pswitch_aa  #00000004
        :pswitch_aa  #00000005
        :pswitch_aa  #00000006
    .end packed-switch
.end method
