.class public final Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;
.super Ljava/lang/Object;
.source "CourseV2TopDelegate.kt"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final i10:I

.field private final i20:I

.field private final i30:I

.field private final isLargePad:Z

.field private onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

.field private final screenWidth:I


# direct methods
.method public static synthetic $r8$lambda$EOCC4zyhrAzROtJ7JDoSNbmZIls(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->convert$lambda$1(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HZsaIMnnNw1SBxdL2k8gkBlZrWg(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->convert$lambda$3(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eNSUr5SYlrSvTt8ZToXX3rv5zks(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->convert$lambda$0(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iVkRDqsKgdBFln4YSYErcwnm03Q(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->convert$lambda$2(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    .line 66
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->isLargePad:Z

    .line 67
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->screenWidth:I

    const/high16 p1, 0x41f00000  # 30.0f

    .line 68
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->i30:I

    const/high16 p1, 0x41a00000  # 20.0f

    .line 69
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->i20:I

    const/high16 p1, 0x41200000  # 10.0f

    .line 70
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->i10:I

    return-void
.end method

.method private static final convert$lambda$0(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;->onSubjectModelClickListener(ILcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    :cond_15
    return-void
.end method

.method private static final convert$lambda$1(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;->onSubjectModelClickListener(ILcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    :cond_15
    return-void
.end method

.method private static final convert$lambda$2(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;->onSubjectModelClickListener(ILcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    :cond_15
    return-void
.end method

.method private static final convert$lambda$3(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;->onSubjectModelClickListener(ILcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    :cond_15
    return-void
.end method

.method private final setImageView(Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/widget/ImageView;)V
    .registers 3

    .line 153
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCrouseItem(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->isLargePad:Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_1a

    .line 84
    iget v0, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->screenWidth:I

    iget v4, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->i30:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->i10:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v0, v4

    div-int/2addr v0, v1

    goto :goto_25

    .line 86
    :cond_1a
    iget v0, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->screenWidth:I

    iget v4, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->i20:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->i10:I

    sub-int/2addr v0, v4

    div-int/2addr v0, v3

    :goto_25
    mul-int/lit8 v4, v0, 0x77

    .line 88
    div-int/lit16 v4, v4, 0xa9

    const/4 v5, 0x0

    if-eqz p2, :cond_39

    .line 89
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    if-eqz p2, :cond_39

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getItemList()Ljava/util/List;

    move-result-object p2

    goto :goto_3a

    :cond_39
    move-object p2, v5

    :goto_3a
    const/4 p3, 0x0

    if-eqz p2, :cond_42

    .line 90
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_43

    :cond_42
    const/4 v6, 0x0

    :goto_43
    const/4 v7, 0x1

    if-lt v6, v7, :cond_4f

    if-eqz p2, :cond_4f

    .line 91
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    goto :goto_50

    :cond_4f
    move-object v6, v5

    :goto_50
    if-eqz p2, :cond_57

    .line 95
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_58

    :cond_57
    const/4 v8, 0x0

    :goto_58
    if-lt v8, v3, :cond_63

    if-eqz p2, :cond_63

    .line 96
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    goto :goto_64

    :cond_63
    move-object v8, v5

    :goto_64
    if-eqz p2, :cond_6b

    .line 100
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_6c

    :cond_6b
    const/4 v9, 0x0

    :goto_6c
    if-lt v9, v2, :cond_77

    if-eqz p2, :cond_77

    .line 101
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    goto :goto_78

    :cond_77
    move-object v3, v5

    :goto_78
    if-eqz p2, :cond_7f

    .line 105
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_80

    :cond_7f
    const/4 v9, 0x0

    :goto_80
    if-lt v9, v1, :cond_8b

    if-eqz p2, :cond_8b

    .line 106
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    :cond_8b
    if-eqz v6, :cond_b9

    const p2, 0x7f0a0304

    .line 111
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 112
    invoke-direct {p0, v6, v1}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->setImageView(Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/widget/ImageView;)V

    const v2, 0x7f0a078d

    .line 113
    invoke-virtual {v6}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v2, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 114
    new-instance v2, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v6}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    new-array v6, v7, [I

    aput p2, v6, p3

    invoke-virtual {p1, v2, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;[I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 117
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_b9
    if-eqz v8, :cond_e7

    const p2, 0x7f0a0306

    .line 121
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 122
    invoke-direct {p0, v8, v1}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->setImageView(Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/widget/ImageView;)V

    const v2, 0x7f0a078f

    .line 123
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 124
    new-instance v2, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v8}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    new-array v6, v7, [I

    aput p2, v6, p3

    invoke-virtual {p1, v2, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;[I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 127
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 128
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_e7
    if-eqz v3, :cond_115

    const p2, 0x7f0a0305

    .line 131
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 132
    invoke-direct {p0, v3, v1}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->setImageView(Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/widget/ImageView;)V

    const v2, 0x7f0a078e

    .line 133
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 134
    new-instance v2, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v3}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    new-array v3, v7, [I

    aput p2, v3, p3

    invoke-virtual {p1, v2, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;[I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 137
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 138
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_115
    if-eqz v5, :cond_143

    const p2, 0x7f0a0307

    .line 141
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 142
    invoke-direct {p0, v5, v1}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;->setImageView(Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/widget/ImageView;)V

    const v2, 0x7f0a0790

    .line 143
    invoke-virtual {v5}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 144
    new-instance v2, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v5}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    new-array v3, v7, [I

    aput p2, v3, p3

    invoke-virtual {p1, v2, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;[I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 147
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 148
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_143
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 73
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d01cc

    goto :goto_d

    :cond_a
    const v0, 0x7f0d01d0

    :goto_d
    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 78
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    sget-object p2, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectTwice:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    if-ne p1, p2, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method
