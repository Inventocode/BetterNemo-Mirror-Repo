.class Lcom/codemao/nemo/view/CustomTabView$1;
.super Ljava/lang/Object;
.source "CustomTabView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CustomTabView;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CustomTabView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CustomTabView;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView$1;->this$0:Lcom/codemao/nemo/view/CustomTabView;

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

    .line 129
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView$1;->this$0:Lcom/codemao/nemo/view/CustomTabView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/view/CustomTabView;->onScroll(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method
