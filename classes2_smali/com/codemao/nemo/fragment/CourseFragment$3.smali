.class Lcom/codemao/nemo/fragment/CourseFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CourseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CourseFragment;->initLayoutManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CourseFragment;

.field final synthetic val$i10:I

.field final synthetic val$i14:I

.field final synthetic val$i20:I

.field final synthetic val$i30:I

.field final synthetic val$i8:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CourseFragment;IIIII)V
    .registers 7

    .line 224
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iput p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i8:I

    iput p3, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i20:I

    iput p4, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i10:I

    iput p5, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i30:I

    iput p6, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i14:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 228
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 232
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_23

    .line 233
    iget-object p4, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {p4}, Lcom/codemao/nemo/fragment/CourseFragment;->access$100(Lcom/codemao/nemo/fragment/CourseFragment;)Z

    move-result p4

    if-eqz p4, :cond_23

    .line 234
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 235
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 236
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 237
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_119

    .line 239
    :cond_23
    iget-object p4, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {p4}, Lcom/codemao/nemo/fragment/CourseFragment;->access$100(Lcom/codemao/nemo/fragment/CourseFragment;)Z

    move-result p4

    if-eqz p4, :cond_2d

    add-int/lit8 p2, p2, -0x1

    :cond_2d
    if-ltz p2, :cond_119

    .line 240
    iget-object p4, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p4

    if-lt p2, p4, :cond_3b

    goto/16 :goto_119

    .line 241
    :cond_3b
    iget-object p4, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p4

    instance-of p4, p4, Lcom/codemao/nemo/bean/BannerData;

    if-eqz p4, :cond_55

    .line 242
    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i8:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 243
    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i20:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 244
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 245
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_119

    .line 246
    :cond_55
    iget-object p4, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p4

    instance-of p4, p4, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    if-eqz p4, :cond_111

    .line 247
    iget-object p4, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    invoke-virtual {p4}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    move-result-object p4

    sget-object v0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectTitle:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    if-ne p4, v0, :cond_a2

    .line 248
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CourseFragment;->access$200(Lcom/codemao/nemo/fragment/CourseFragment;)Z

    move-result p2

    if-eqz p2, :cond_7e

    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i20:I

    goto :goto_80

    :cond_7e
    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i10:I

    :goto_80
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 249
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CourseFragment;->access$200(Lcom/codemao/nemo/fragment/CourseFragment;)Z

    move-result p2

    if-eqz p2, :cond_8d

    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i30:I

    goto :goto_8f

    :cond_8d
    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i20:I

    :goto_8f
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 250
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CourseFragment;->access$200(Lcom/codemao/nemo/fragment/CourseFragment;)Z

    move-result p2

    if-eqz p2, :cond_9c

    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i30:I

    goto :goto_9e

    :cond_9c
    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i20:I

    :goto_9e
    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_10e

    .line 251
    :cond_a2
    iget-object p4, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    invoke-virtual {p4}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    move-result-object p4

    sget-object v0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectTwice:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    if-ne p4, v0, :cond_e2

    .line 252
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CourseFragment;->access$200(Lcom/codemao/nemo/fragment/CourseFragment;)Z

    move-result p2

    if-eqz p2, :cond_bf

    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i20:I

    goto :goto_c1

    :cond_bf
    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i14:I

    :goto_c1
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 253
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CourseFragment;->access$200(Lcom/codemao/nemo/fragment/CourseFragment;)Z

    move-result p2

    if-eqz p2, :cond_ce

    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i30:I

    goto :goto_d0

    :cond_ce
    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i20:I

    :goto_d0
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 254
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CourseFragment;->access$200(Lcom/codemao/nemo/fragment/CourseFragment;)Z

    move-result p2

    if-eqz p2, :cond_dd

    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i30:I

    goto :goto_df

    :cond_dd
    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i20:I

    :goto_df
    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_10e

    .line 255
    :cond_e2
    iget-object p4, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    move-result-object p2

    sget-object p4, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectList:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    if-ne p2, p4, :cond_fb

    .line 256
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 257
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 258
    iput p3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_10e

    .line 260
    :cond_fb
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 261
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 262
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CourseFragment;->access$200(Lcom/codemao/nemo/fragment/CourseFragment;)Z

    move-result p2

    if-eqz p2, :cond_10a

    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i30:I

    goto :goto_10c

    :cond_10a
    iget p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$3;->val$i20:I

    :goto_10c
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 264
    :goto_10e
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_119

    .line 266
    :cond_111
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 267
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 268
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 269
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    :cond_119
    :goto_119
    return-void
.end method
