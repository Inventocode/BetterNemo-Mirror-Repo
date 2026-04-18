.class Lcn/codemao/android/sketch/view/PickColorView$4;
.super Ljava/lang/Object;
.source "PickColorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/PickColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/PickColorView;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/PickColorView;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcn/codemao/android/sketch/view/PickColorView$4;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 142
    iget-object v0, p0, Lcn/codemao/android/sketch/view/PickColorView$4;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/PickColorView;->access$100(Lcn/codemao/android/sketch/view/PickColorView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 143
    iget-object v1, p0, Lcn/codemao/android/sketch/view/PickColorView$4;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-static {v1}, Lcn/codemao/android/sketch/view/PickColorView;->access$200(Lcn/codemao/android/sketch/view/PickColorView;)Lcn/codemao/android/sketch/view/WheelColorView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/PickColorView$4;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000  # 4.0f

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 144
    iget-object v1, p0, Lcn/codemao/android/sketch/view/PickColorView$4;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-static {v1}, Lcn/codemao/android/sketch/view/PickColorView;->access$100(Lcn/codemao/android/sketch/view/PickColorView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v0, p0, Lcn/codemao/android/sketch/view/PickColorView$4;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/PickColorView;->access$200(Lcn/codemao/android/sketch/view/PickColorView;)Lcn/codemao/android/sketch/view/WheelColorView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/WheelColorView;->getSelRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 147
    iget-object v0, p0, Lcn/codemao/android/sketch/view/PickColorView$4;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/PickColorView;->access$300(Lcn/codemao/android/sketch/view/PickColorView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/PickColorView$4;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x433e0000  # 190.0f

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/PickColorView$4;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-static {v3}, Lcn/codemao/android/sketch/view/PickColorView;->access$200(Lcn/codemao/android/sketch/view/PickColorView;)Lcn/codemao/android/sketch/view/WheelColorView;

    move-result-object v3

    invoke-virtual {v3}, Lcn/codemao/android/sketch/view/WheelColorView;->getSelRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 149
    iget-object v1, p0, Lcn/codemao/android/sketch/view/PickColorView$4;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-static {v1}, Lcn/codemao/android/sketch/view/PickColorView;->access$300(Lcn/codemao/android/sketch/view/PickColorView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_72
    return-void
.end method
