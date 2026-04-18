.class public final Lcom/codemao/nemo/delegates/CourseV2TopDelegate;
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
.field private final i20:I

.field private final i30:I

.field private final isLargePad:Z

.field private onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

.field private final screenWidth:I


# direct methods
.method public static synthetic $r8$lambda$YaBH_2zj1_fg9_ovuB-5sIRgABU(Lcom/codemao/nemo/delegates/CourseV2TopDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->convert$lambda$0(Lcom/codemao/nemo/delegates/CourseV2TopDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    .line 33
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->isLargePad:Z

    .line 34
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->screenWidth:I

    const/high16 p1, 0x41f00000  # 30.0f

    .line 35
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->i30:I

    const/high16 p1, 0x41a00000  # 20.0f

    .line 36
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->i20:I

    return-void
.end method

.method private static final convert$lambda$0(Lcom/codemao/nemo/delegates/CourseV2TopDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;Landroid/view/View;)V
    .registers 4

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->onSubjectModelClickListener:Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;

    if-eqz p0, :cond_1a

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;->onSubjectModelClickListener(ILcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 8
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

    if-eqz p2, :cond_6d

    .line 47
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    if-eqz p2, :cond_6d

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getItemList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6d

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    if-nez p2, :cond_1f

    goto :goto_6d

    :cond_1f
    const v0, 0x7f0a0303

    .line 48
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 49
    iget-boolean v2, p0, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->isLargePad:Z

    if-eqz v2, :cond_42

    .line 50
    iget v2, p0, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->screenWidth:I

    iget v3, p0, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->i30:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 51
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 52
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    mul-int/lit16 v2, v2, 0xeb

    div-int/lit16 v2, v2, 0x2c4

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_59

    .line 54
    :cond_42
    iget v2, p0, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->screenWidth:I

    iget v3, p0, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;->i20:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 55
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    mul-int/lit16 v2, v2, 0xac

    div-int/lit16 v2, v2, 0x14f

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    :goto_59
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCrouseBanner(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 59
    new-instance v1, Lcom/codemao/nemo/delegates/CourseV2TopDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/delegates/CourseV2TopDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/delegates/CourseV2TopDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/SubjectItem;)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    aput v0, p2, p3

    invoke-virtual {p1, v1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;[I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_6d
    :goto_6d
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01cf

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

    .line 43
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
    sget-object p2, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectTitle:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    if-ne p1, p2, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method
