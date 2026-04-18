.class Lcom/codemao/nemo/view/MyExpandCardView$7;
.super Ljava/lang/Object;
.source "MyExpandCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/MyExpandCardView;->initRightParentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/MyExpandCardView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/MyExpandCardView;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$7;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    .line 207
    iget-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$7;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {p1}, Lcom/codemao/nemo/view/MyExpandCardView;->access$100(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$7;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {p1}, Lcom/codemao/nemo/view/MyExpandCardView;->access$200(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3e4ccccd  # 0.2f

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->access$300(Lcom/codemao/nemo/view/MyExpandCardView;Landroid/widget/ImageView;F)V

    .line 209
    iget-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$7;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {p1}, Lcom/codemao/nemo/view/MyExpandCardView;->access$400(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 210
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView$7;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {v0}, Lcom/codemao/nemo/view/MyExpandCardView;->access$100(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/view/View;

    move-result-object v1

    neg-int v2, p1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/codemao/nemo/view/MyExpandCardView$7;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {v3}, Lcom/codemao/nemo/view/MyExpandCardView;->access$500(Lcom/codemao/nemo/view/MyExpandCardView;)I

    move-result v3

    int-to-long v4, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->access$600(Lcom/codemao/nemo/view/MyExpandCardView;Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 211
    iget-object v1, p0, Lcom/codemao/nemo/view/MyExpandCardView$7;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {v1}, Lcom/codemao/nemo/view/MyExpandCardView;->access$700(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/view/View;

    move-result-object v2

    int-to-float v4, p1

    iget-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$7;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {p1}, Lcom/codemao/nemo/view/MyExpandCardView;->access$500(Lcom/codemao/nemo/view/MyExpandCardView;)I

    move-result p1

    int-to-long v5, p1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/codemao/nemo/view/MyExpandCardView;->access$600(Lcom/codemao/nemo/view/MyExpandCardView;Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
