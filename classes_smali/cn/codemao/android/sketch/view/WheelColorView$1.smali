.class Lcn/codemao/android/sketch/view/WheelColorView$1;
.super Ljava/lang/Object;
.source "WheelColorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/WheelColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/WheelColorView;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/WheelColorView;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView$1;->this$0:Lcn/codemao/android/sketch/view/WheelColorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 118
    iget-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView$1;->this$0:Lcn/codemao/android/sketch/view/WheelColorView;

    const/4 v0, 0x0

    iput v0, p1, Lcn/codemao/android/sketch/view/WheelColorView;->lastValue:I

    const/4 v0, 0x1

    .line 119
    invoke-static {p1, v0}, Lcn/codemao/android/sketch/view/WheelColorView;->access$002(Lcn/codemao/android/sketch/view/WheelColorView;Z)Z

    .line 120
    iget-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView$1;->this$0:Lcn/codemao/android/sketch/view/WheelColorView;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/WheelColorView;->access$100(Lcn/codemao/android/sketch/view/WheelColorView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 112
    iget-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView$1;->this$0:Lcn/codemao/android/sketch/view/WheelColorView;

    const/4 v0, 0x0

    iput v0, p1, Lcn/codemao/android/sketch/view/WheelColorView;->lastValue:I

    .line 113
    invoke-static {p1, v0}, Lcn/codemao/android/sketch/view/WheelColorView;->access$002(Lcn/codemao/android/sketch/view/WheelColorView;Z)Z

    return-void
.end method
