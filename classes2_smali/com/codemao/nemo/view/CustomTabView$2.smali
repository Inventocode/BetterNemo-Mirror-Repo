.class Lcom/codemao/nemo/view/CustomTabView$2;
.super Ljava/lang/Object;
.source "CustomTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CustomTabView;->initSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CustomTabView;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CustomTabView;I)V
    .registers 3

    .line 221
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView$2;->this$0:Lcom/codemao/nemo/view/CustomTabView;

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabView$2;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 225
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView$2;->this$0:Lcom/codemao/nemo/view/CustomTabView;

    invoke-static {p1}, Lcom/codemao/nemo/view/CustomTabView;->access$000(Lcom/codemao/nemo/view/CustomTabView;)Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 226
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView$2;->this$0:Lcom/codemao/nemo/view/CustomTabView;

    invoke-static {p1}, Lcom/codemao/nemo/view/CustomTabView;->access$000(Lcom/codemao/nemo/view/CustomTabView;)Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/view/CustomTabView$2;->val$finalI:I

    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;->click(I)V

    .line 228
    :cond_13
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView$2;->this$0:Lcom/codemao/nemo/view/CustomTabView;

    invoke-static {p1}, Lcom/codemao/nemo/view/CustomTabView;->access$100(Lcom/codemao/nemo/view/CustomTabView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView$2;->this$0:Lcom/codemao/nemo/view/CustomTabView;

    invoke-static {p1}, Lcom/codemao/nemo/view/CustomTabView;->access$100(Lcom/codemao/nemo/view/CustomTabView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/view/CustomTabView$2;->val$finalI:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_26
    return-void
.end method
