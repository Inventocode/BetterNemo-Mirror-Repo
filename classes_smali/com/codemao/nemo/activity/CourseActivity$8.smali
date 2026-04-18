.class Lcom/codemao/nemo/activity/CourseActivity$8;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CourseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CourseActivity;->initTemp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i5:I

.field paddingLeftRight:I

.field paddingTopBottom:I

.field final synthetic this$0:Lcom/codemao/nemo/activity/CourseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CourseActivity;)V
    .registers 4

    .line 324
    iput-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 325
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    const/high16 v1, 0x41a00000  # 20.0f

    if-eqz v0, :cond_10

    const/high16 v0, 0x41a00000  # 20.0f

    goto :goto_12

    :cond_10
    const/high16 v0, 0x41400000  # 12.0f

    :goto_12
    invoke-static {p1, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->paddingLeftRight:I

    const/high16 v0, 0x40400000  # 3.0f

    .line 326
    invoke-static {p1, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->paddingTopBottom:I

    const/high16 v0, 0x40a00000  # 5.0f

    .line 327
    invoke-static {p1, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->i5:I

    const/high16 v0, 0x41f00000  # 30.0f

    .line 328
    invoke-static {p1, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    .line 329
    invoke-static {p1, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 333
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 335
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 337
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ltz p2, :cond_1b

    .line 338
    iget-object p3, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p3}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_1d

    :cond_1b
    return-void

    :cond_1c
    const/4 p2, -0x1

    .line 342
    :cond_1d
    iget-object p3, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p3}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    if-eqz p3, :cond_35

    const/4 p2, 0x0

    .line 343
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 344
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 345
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 346
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_78

    .line 348
    :cond_35
    iget-object p3, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p3}, Lcom/codemao/nemo/activity/CourseActivity;->access$300(Lcom/codemao/nemo/activity/CourseActivity;)Z

    move-result p3

    if-nez p3, :cond_5e

    .line 349
    iget p3, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->paddingLeftRight:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 350
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 351
    iget p3, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->paddingTopBottom:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 352
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 353
    iget-object p3, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p3}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_78

    .line 354
    iget p2, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->paddingTopBottom:I

    mul-int/lit8 p2, p2, 0x4

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_78

    .line 357
    :cond_5e
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_65

    iget p3, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->paddingLeftRight:I

    goto :goto_67

    :cond_65
    iget p3, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->i5:I

    :goto_67
    iput p3, p1, Landroid/graphics/Rect;->left:I

    if-nez p2, :cond_6e

    .line 358
    iget p2, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->i5:I

    goto :goto_70

    :cond_6e
    iget p2, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->paddingLeftRight:I

    :goto_70
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 359
    iget p2, p0, Lcom/codemao/nemo/activity/CourseActivity$8;->paddingTopBottom:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 360
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_78
    :goto_78
    return-void
.end method
