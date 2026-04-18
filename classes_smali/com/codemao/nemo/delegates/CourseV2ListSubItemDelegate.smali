.class public final Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;
.super Ljava/lang/Object;
.source "CourseV2TopDelegate.kt"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final i10:I

.field private final i12:I

.field private final i20:I

.field private final i30:I

.field private final isLargePad:Z

.field private final onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

.field private final screenWidth:I


# direct methods
.method public static synthetic $r8$lambda$XcfAA_E3Efs_6PPzQRILDx-nLhg(Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->convert$lambda$0(Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;)V
    .registers 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    .line 250
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->isLargePad:Z

    .line 251
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->screenWidth:I

    const/high16 p1, 0x41f00000  # 30.0f

    .line 252
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->i30:I

    const/high16 p1, 0x41a00000  # 20.0f

    .line 253
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->i20:I

    const/high16 p1, 0x41400000  # 12.0f

    .line 254
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->i12:I

    const/high16 p1, 0x41200000  # 10.0f

    .line 255
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->i10:I

    return-void
.end method

.method private static final convert$lambda$0(Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$subjectItem"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    if-eqz p0, :cond_1a

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;->onSubjectModelClickListener(ILcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_7b

    .line 267
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    if-nez p2, :cond_10

    goto :goto_7b

    :cond_10
    const p3, 0x7f0a0303

    .line 268
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    .line 269
    iget-boolean v0, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->isLargePad:Z

    if-eqz v0, :cond_3e

    .line 270
    iget v0, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->screenWidth:I

    iget v1, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->i30:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->i12:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x408d70a4  # 4.42f

    div-float/2addr v0, v1

    .line 271
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    float-to-int v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 272
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const v2, 0x3f348348

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_60

    .line 274
    :cond_3e
    iget v0, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->screenWidth:I

    iget v1, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->i20:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;->i10:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x40170a3d  # 2.36f

    div-float/2addr v0, v1

    .line 275
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    float-to-int v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 276
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const v2, 0x3f34481d

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    :goto_60
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCrouseItem(Ljava/lang/String;Landroid/widget/ImageView;)V

    const p3, 0x7f0a078c

    .line 279
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 280
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/delegates/CourseV2ListSubItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01ce

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
