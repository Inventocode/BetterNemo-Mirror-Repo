.class Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;
.super Ljava/lang/Object;
.source "CreativeSwitchButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 1054
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 1057
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1058
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$300(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_c4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1e

    goto/16 :goto_174

    .line 1087
    :cond_1e
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$500(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v1

    iget v1, v1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    .line 1088
    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$600(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$500(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    .line 1090
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object p1

    iget p1, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$800(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$900(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)F

    move-result v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$800(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 1092
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$700(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    .line 1094
    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$1000(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    .line 1095
    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$1100(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1092
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    .line 1098
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$1200(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)F

    move-result v1

    mul-float v1, v1, p1

    iput v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    .line 1099
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$700(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    const/4 v2, 0x0

    .line 1101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    .line 1102
    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$1300(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1099
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkedLineColor:I

    goto/16 :goto_174

    .line 1064
    :cond_c4
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$700(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    .line 1066
    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$500(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkedLineColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    .line 1067
    invoke-static {v4}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$600(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v4

    iget v4, v4, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkedLineColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1064
    invoke-virtual {v2, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkedLineColor:I

    .line 1070
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$500(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    .line 1071
    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$600(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v4}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$500(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v4

    iget v4, v4, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    sub-float/2addr v3, v4

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    .line 1073
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$300(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)I

    move-result v0

    if-eq v0, v1, :cond_144

    .line 1074
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$500(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v1

    iget v1, v1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    .line 1075
    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$600(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$500(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    .line 1078
    :cond_144
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$700(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    .line 1080
    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$500(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    .line 1081
    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$600(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1078
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    .line 1113
    :goto_174
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
