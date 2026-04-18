.class Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;
.super Ljava/lang/Object;
.source "CreativeSwitchButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/CreativeSwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V
    .registers 2

    .line 1118
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 1125
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$300(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_49

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3e

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2e

    const/4 v2, 0x5

    if-eq p1, v2, :cond_14

    goto :goto_6a

    .line 1149
    :cond_14
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$1500(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$1502(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;Z)Z

    .line 1150
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {p1, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$302(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;I)I

    .line 1151
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 1152
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$1400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V

    goto :goto_6a

    .line 1143
    :cond_2e
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {p1, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$302(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;I)I

    .line 1144
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 1145
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$1400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V

    goto :goto_6a

    .line 1138
    :cond_3e
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {p1, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$302(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;I)I

    .line 1139
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    goto :goto_6a

    .line 1130
    :cond_49
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$302(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;I)I

    .line 1131
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object p1

    iput v1, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkedLineColor:I

    .line 1132
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$1200(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)F

    move-result v0

    iput v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    .line 1134
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :goto_6a
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
