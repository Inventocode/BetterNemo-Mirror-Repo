.class Lcom/codemao/nemo/activity/CourseActivity$4;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CourseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CourseActivity;->init()V
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

    .line 230
    iput-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 231
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

    iput v0, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->paddingLeftRight:I

    const/high16 v0, 0x40400000  # 3.0f

    .line 232
    invoke-static {p1, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->paddingTopBottom:I

    const/high16 v0, 0x40a00000  # 5.0f

    .line 233
    invoke-static {p1, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->i5:I

    const/high16 v0, 0x41f00000  # 30.0f

    .line 234
    invoke-static {p1, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    .line 235
    invoke-static {p1, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 241
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 243
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ltz p2, :cond_1b

    .line 244
    iget-object p3, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p3}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_1d

    :cond_1b
    return-void

    :cond_1c
    const/4 p2, -0x1

    .line 248
    :cond_1d
    iget-object p3, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p3}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    if-eqz p3, :cond_35

    const/4 p2, 0x0

    .line 249
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 250
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 251
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 252
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_78

    .line 254
    :cond_35
    iget-object p3, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p3}, Lcom/codemao/nemo/activity/CourseActivity;->access$300(Lcom/codemao/nemo/activity/CourseActivity;)Z

    move-result p3

    if-nez p3, :cond_5e

    .line 255
    iget p3, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->paddingLeftRight:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 256
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 257
    iget p3, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->paddingTopBottom:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 258
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 259
    iget-object p3, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p3}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_78

    .line 260
    iget p2, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->paddingTopBottom:I

    mul-int/lit8 p2, p2, 0x4

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_78

    .line 263
    :cond_5e
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_65

    iget p3, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->paddingLeftRight:I

    goto :goto_67

    :cond_65
    iget p3, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->i5:I

    :goto_67
    iput p3, p1, Landroid/graphics/Rect;->left:I

    if-nez p2, :cond_6e

    .line 264
    iget p2, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->i5:I

    goto :goto_70

    :cond_6e
    iget p2, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->paddingLeftRight:I

    :goto_70
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 265
    iget p2, p0, Lcom/codemao/nemo/activity/CourseActivity$4;->paddingTopBottom:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 266
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_78
    :goto_78
    return-void
.end method
