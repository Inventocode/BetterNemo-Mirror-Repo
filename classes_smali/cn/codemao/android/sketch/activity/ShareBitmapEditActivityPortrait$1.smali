.class Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;
.super Ljava/lang/Object;
.source "ShareBitmapEditActivityPortrait.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 7

    .line 83
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$100(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Lcn/codemao/android/sketch/view/ShareEditView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$002(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;I)I

    .line 84
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$100(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Lcn/codemao/android/sketch/view/ShareEditView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$202(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;I)I

    .line 85
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$300(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V

    .line 86
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$400(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v1}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$500(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v2}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$600(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 89
    iget-object v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v3}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$700(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v4}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$200(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3d75c28f  # 0.06f

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    iget-object v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v3}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$600(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v2}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    div-int/lit8 v2, v2, 0x7d

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 92
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v2}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    div-int/lit8 v2, v2, 0x7d

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 93
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v2}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v3}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    div-int/lit8 v3, v3, 0x7d

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v3}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$700(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x41200000  # 10.0f

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 94
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v2}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit8 v2, v2, 0x7d

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 95
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v2}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit8 v2, v2, 0x7d

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 96
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v2}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x7d

    iget-object v3, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v3}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$000(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    div-int/lit16 v3, v3, 0x177

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 97
    iget-object v2, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v2}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$400(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$500(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$1;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->access$100(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)Lcn/codemao/android/sketch/view/ShareEditView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
