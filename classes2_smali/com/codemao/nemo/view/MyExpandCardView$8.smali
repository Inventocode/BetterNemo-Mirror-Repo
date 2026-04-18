.class Lcom/codemao/nemo/view/MyExpandCardView$8;
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

    .line 217
    iput-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$8;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    .line 221
    iget-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$8;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/MyExpandCardView;->resetBitmap()V

    .line 222
    iget-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$8;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {p1}, Lcom/codemao/nemo/view/MyExpandCardView;->access$400(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 223
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView$8;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {v0}, Lcom/codemao/nemo/view/MyExpandCardView;->access$100(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/view/View;

    move-result-object v1

    neg-int v2, p1

    int-to-float v3, v2

    iget-object v2, p0, Lcom/codemao/nemo/view/MyExpandCardView$8;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {v2}, Lcom/codemao/nemo/view/MyExpandCardView;->access$500(Lcom/codemao/nemo/view/MyExpandCardView;)I

    move-result v2

    int-to-long v4, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->access$600(Lcom/codemao/nemo/view/MyExpandCardView;Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 224
    iget-object v1, p0, Lcom/codemao/nemo/view/MyExpandCardView$8;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {v1}, Lcom/codemao/nemo/view/MyExpandCardView;->access$700(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/view/View;

    move-result-object v2

    int-to-float v3, p1

    iget-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$8;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {p1}, Lcom/codemao/nemo/view/MyExpandCardView;->access$500(Lcom/codemao/nemo/view/MyExpandCardView;)I

    move-result p1

    int-to-long v5, p1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/codemao/nemo/view/MyExpandCardView;->access$600(Lcom/codemao/nemo/view/MyExpandCardView;Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
