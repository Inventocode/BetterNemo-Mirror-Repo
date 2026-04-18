.class Lcom/codemao/nemo/view/SwitchButton$3;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/SwitchButton;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/SwitchButton;)V
    .registers 2

    .line 1118
    iput-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

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
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {p1}, Lcom/codemao/nemo/view/SwitchButton;->access$300(Lcom/codemao/nemo/view/SwitchButton;)I

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
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {p1}, Lcom/codemao/nemo/view/SwitchButton;->access$1500(Lcom/codemao/nemo/view/SwitchButton;)Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/SwitchButton;->access$1502(Lcom/codemao/nemo/view/SwitchButton;Z)Z

    .line 1150
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {p1, v1}, Lcom/codemao/nemo/view/SwitchButton;->access$302(Lcom/codemao/nemo/view/SwitchButton;I)I

    .line 1151
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 1152
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {p1}, Lcom/codemao/nemo/view/SwitchButton;->access$1400(Lcom/codemao/nemo/view/SwitchButton;)V

    goto :goto_6a

    .line 1143
    :cond_2e
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {p1, v1}, Lcom/codemao/nemo/view/SwitchButton;->access$302(Lcom/codemao/nemo/view/SwitchButton;I)I

    .line 1144
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 1145
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {p1}, Lcom/codemao/nemo/view/SwitchButton;->access$1400(Lcom/codemao/nemo/view/SwitchButton;)V

    goto :goto_6a

    .line 1138
    :cond_3e
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {p1, v1}, Lcom/codemao/nemo/view/SwitchButton;->access$302(Lcom/codemao/nemo/view/SwitchButton;I)I

    .line 1139
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    goto :goto_6a

    .line 1130
    :cond_49
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/SwitchButton;->access$302(Lcom/codemao/nemo/view/SwitchButton;I)I

    .line 1131
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {p1}, Lcom/codemao/nemo/view/SwitchButton;->access$400(Lcom/codemao/nemo/view/SwitchButton;)Lcom/codemao/nemo/view/SwitchButton$ViewState;

    move-result-object p1

    iput v1, p1, Lcom/codemao/nemo/view/SwitchButton$ViewState;->checkedLineColor:I

    .line 1132
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {p1}, Lcom/codemao/nemo/view/SwitchButton;->access$400(Lcom/codemao/nemo/view/SwitchButton;)Lcom/codemao/nemo/view/SwitchButton$ViewState;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {v0}, Lcom/codemao/nemo/view/SwitchButton;->access$1200(Lcom/codemao/nemo/view/SwitchButton;)F

    move-result v0

    iput v0, p1, Lcom/codemao/nemo/view/SwitchButton$ViewState;->radius:F

    .line 1134
    iget-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$3;->this$0:Lcom/codemao/nemo/view/SwitchButton;

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
