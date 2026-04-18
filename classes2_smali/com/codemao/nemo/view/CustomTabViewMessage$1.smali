.class Lcom/codemao/nemo/view/CustomTabViewMessage$1;
.super Ljava/lang/Object;
.source "CustomTabViewMessage.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CustomTabViewMessage;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CustomTabViewMessage;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$1;->this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    .line 144
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$1;->this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/view/CustomTabViewMessage;->onScroll(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$1;->this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-static {v0}, Lcom/codemao/nemo/view/CustomTabViewMessage;->access$000(Lcom/codemao/nemo/view/CustomTabViewMessage;)Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 152
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage$1;->this$0:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-static {v0}, Lcom/codemao/nemo/view/CustomTabViewMessage;->access$000(Lcom/codemao/nemo/view/CustomTabViewMessage;)Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;->onPageSelected(I)V

    :cond_11
    return-void
.end method
