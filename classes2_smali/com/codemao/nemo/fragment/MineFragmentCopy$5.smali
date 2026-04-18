.class Lcom/codemao/nemo/fragment/MineFragmentCopy$5;
.super Ljava/lang/Object;
.source "MineFragmentCopy.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/fragment/MineFragmentCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MineFragmentCopy;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$5;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy$5;->this$0:Lcom/codemao/nemo/fragment/MineFragmentCopy;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/MineFragmentCopy;->access$202(Lcom/codemao/nemo/fragment/MineFragmentCopy;I)I

    return-void
.end method
