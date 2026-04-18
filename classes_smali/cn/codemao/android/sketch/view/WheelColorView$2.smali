.class Lcn/codemao/android/sketch/view/WheelColorView$2;
.super Ljava/lang/Object;
.source "WheelColorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/WheelColorView;->scrollDiff(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/WheelColorView;

.field final synthetic val$diffItem:F


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/WheelColorView;F)V
    .registers 3

    .line 325
    iput-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView$2;->this$0:Lcn/codemao/android/sketch/view/WheelColorView;

    iput p2, p0, Lcn/codemao/android/sketch/view/WheelColorView$2;->val$diffItem:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 328
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 331
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView$2;->this$0:Lcn/codemao/android/sketch/view/WheelColorView;

    iget v1, v0, Lcn/codemao/android/sketch/view/WheelColorView;->lastValue:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcn/codemao/android/sketch/view/WheelColorView$2;->val$diffItem:F

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/view/WheelColorView;->access$200(Lcn/codemao/android/sketch/view/WheelColorView;F)V

    .line 332
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView$2;->this$0:Lcn/codemao/android/sketch/view/WheelColorView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/WheelColorView;->access$300(Lcn/codemao/android/sketch/view/WheelColorView;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xd

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/WheelItem;->getFontColor()I

    move-result v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/view/WheelColorView;->access$400(Lcn/codemao/android/sketch/view/WheelColorView;I)V

    .line 333
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView$2;->this$0:Lcn/codemao/android/sketch/view/WheelColorView;

    iput p1, v0, Lcn/codemao/android/sketch/view/WheelColorView;->lastValue:I

    return-void
.end method
