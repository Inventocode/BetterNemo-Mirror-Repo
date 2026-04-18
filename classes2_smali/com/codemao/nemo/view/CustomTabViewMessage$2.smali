.class Lcom/codemao/nemo/view/CustomTabViewMessage$2;
.super Ljava/lang/Object;
.source "CustomTabViewMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CustomTabViewMessage;->initSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CustomTabViewMessage;I)V
    .registers 3

    .line 260
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$2;->this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$2;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 264
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$2;->this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-static {p1}, Lcom/codemao/nemo/view/CustomTabViewMessage;->access$100(Lcom/codemao/nemo/view/CustomTabViewMessage;)Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabClickListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$2;->this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-static {p1}, Lcom/codemao/nemo/view/CustomTabViewMessage;->access$100(Lcom/codemao/nemo/view/CustomTabViewMessage;)Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabClickListener;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$2;->val$finalI:I

    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabClickListener;->click(I)V

    .line 267
    :cond_13
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$2;->this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-static {p1}, Lcom/codemao/nemo/view/CustomTabViewMessage;->access$200(Lcom/codemao/nemo/view/CustomTabViewMessage;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 268
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$2;->this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-static {p1}, Lcom/codemao/nemo/view/CustomTabViewMessage;->access$200(Lcom/codemao/nemo/view/CustomTabViewMessage;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$2;->val$finalI:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_26
    return-void
.end method
